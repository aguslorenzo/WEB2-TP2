<?php
require_once './app/models/park.model.php';
require_once './app/views/api.view.php';
require_once './app/helpers/auth-api.helper.php';

class ApiParkController {
    private $model;
    private $view;
    private $data;
    private $authHelper;

    public function __construct(){
        $this->model = new ParkModel();
        $this->view = new ApiView();
        $this->authHelper = new AuthApiHelper();
        $this->data = file_get_contents("php://input");

    }

    private function getData() {
        return json_decode($this->data);
    }

    public function getParks(){
        $order = "ASC";
        $page = 1;
        $limit = 100;
        $offset = 0;
        $sortBy = "name";
        
        if(isset($_GET['order']) && !empty($_GET['order'])){
            $queryOrder = strtoupper($_GET['order']);
            if ($queryOrder == "DESC" || $queryOrder == "ASC"){
                $order = $queryOrder;
            }else{
                $this->view->response("Error. Compruebe la URL.",400);
                die();
            }
        }

        if (isset($_GET['page']) && !empty($_GET['page'])) {
            $queryPage = $_GET['page'];
            if (is_numeric($queryPage) && $queryPage>0){
                $page = $queryPage;
                $offset = ($page - 1) * $limit;
            }else{
                $this->view->response("Error. Compruebe la URL.",400);
                die();
            }
        }
        
        if (isset($_GET['limit']) && !empty($_GET['limit'])){
            $queryLimit = $_GET['limit'];
            if (is_numeric($queryLimit)&&$queryLimit>0){
                $limit = $queryLimit;
            }else{
                $this->view->response("Error. Compruebe la URL.",400);
                die();
            }
        }

        if(isset($_GET['sortBy']) && !empty($_GET['sortBy'])){
            $querySortBy = strtolower($_GET['sortBy']);
            if(in_array($querySortBy,$this->model->getColumns())){
                $sortBy = $querySortBy;
            }else{
                $this->view->response("Error. Compruebe la URL.",400);
                die();
            }
        }

        if(isset($_GET['filterBy']) && !empty($_GET['filterBy']) && isset($_GET['value']) && !empty($_GET['value'])){
            $filterBy = strtolower($_GET['filterBy']);
            $value = strtolower($_GET['value']);

            if(in_array($filterBy,$this->model->getColumns())){
                $parks = $this->model->getNuevoDB($filterBy, $value);
                $this->view->response($parks, 200);    
                die();
            } else {
                $this->view->response("El campo ingresado (" . $filterBy . ") no es válido. Compruebe la URL.", 400);
                die();
            }

        }
                
        $parks = $this->model->getAll($sortBy, $order, $limit, $offset);
        $this->view->response($parks);
    }

    public function getPark($params = null){
        $id = $params[':ID'];
        $park = $this->model->getPark($id);

        if ($park){
            $this->view->response($park);
        }
        else {
            $this->view->response("El parque con el id $id no existe.", 404);
        }
    }

    public function deletePark($params = null){

        if(!$this->authHelper->isLoggedIn()){
            $this->view->response("Usted no está logeado", 401);
            return;
        }

        $id = $params[':ID'];
        $park = $this->model->getPark($id);

        if ($park) {
            $this->model->deletePark($id);
            $this->view->response($park);
        } else {
            $this->view->response("El parque con el id $id no existe.", 404);
        }
    }

    public function insertPark(){

        if(!$this->authHelper->isLoggedIn()){
            $this->view->response("Usted no está logueado.", 401);
            return;
        }

        $park = $this->getData();

        if (empty($park->name) || empty($park->description) || empty($park->price) || empty($park->id_province_fk)){
            $this->view->response("Debe completar los datos requeridos.", 400);
        } else {
            try {
                $id = $this->model->insert($park->name, $park->description, $park->price, $park->id_province_fk);
                $park = $this->model->getPark($id);
                $this->view->response($park, 201);
            }
            catch(PDOException) {
                $this->view->response("No puede crear un parque sin seleccionar una provincia válida. Agregue la provincia y vuelva a intentarlo. ", 400);
            }
        }
    }

    public function updatePark($params = null){

        if(!$this->authHelper->isLoggedIn()){
            $this->view->response("Usted no está logueado.", 401);
            return;
        }

        $id = $params[':ID'];
        $previousPark = $this->model->getPark($id);
        if (!$previousPark){
            $this->view->response("El parque con el id $id no existe.", 404);
            die();
        }
        
        $park = $this->getData();
        $park->$id = $id;
        if (empty($park->name) || empty($park->description) || empty($park->price) || empty($park->id_province_fk)){
            $this->view->response("Error. Debe completar los datos.", 400);
        } else {
            $id = $this->model->updatePark($park->$id, $park->name, $park->description, $park->price, $park->id_province_fk);
            $park = $this->model->getPark($id);
            $this->view->response($park, 200);
        }
    }

    public function default(){
        $this->view->response("La página que solicitó no fue encontrada. Compruebe la URL e intente nuevamente.", 404);
    }
}