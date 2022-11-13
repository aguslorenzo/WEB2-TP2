<?php
require_once './app/models/park.model.php';
require_once './app/views/api.view.php';

class ApiParkController {
    private $model;
    private $view;
    private $data;

    public function __construct(){
        $this->model = new ParkModel();
        $this->view = new ApiView();

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
                $this->view->response("Bad request",400);
                die();
            }
        }

        if (isset($_GET['page']) && !empty($_GET['page'])) {
            $queryPage = $_GET['page'];
            if (is_numeric($queryPage) && $queryPage>0){
                $page = $queryPage;
                $offset = ($page - 1) * $limit;
            }else{
                $this->view->response("Bad request",400);
                die();
            }
        }
        
        if (isset($_GET['limit']) && !empty($_GET['limit'])){
            $queryLimit = $_GET['limit'];
            if (is_numeric($queryLimit)&&$queryLimit>0){
                $limit = $queryLimit;
            }else{
                $this->view->response("Bad request",400);
                die();
            }
        }

        if(isset($_GET['sortBy']) && !empty($_GET['sortBy'])){
            $querySortBy = strtolower($_GET['sortBy']);
            if(in_array($querySortBy,$this->model->getColumns())){
                $sortBy = $querySortBy;
            }else{
                $this->view->response("Bad request",400);
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
                $this->view->response("El campo ingresado (" . $filterBy . ") no es válido", 400);
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
        $park = $this->getData();

        if (empty($park->name) || empty($park->description) || empty($park->price) || empty($park->id_province_fk)){
            $this->view->response("Debe completar los datos.", 400);
        } else {
            $id = $this->model->insert($park->name, $park->description, $park->price, $park->id_province_fk);
            $park = $this->model->getPark($id);
            $this->view->response($park, 201);
        }
    }

    public function updatePark($params = null){
        $id = $params[':ID'];
        $previousPark = $this->model->getPark($id);
        if (!$previousPark){
            $this->view->response("El parque con el id $id no existe.", 404);
            die();
        }
        
        $park = $this->getData();
        $park->$id = $id;
        if (empty($park->name) || empty($park->description) || empty($park->price) || empty($park->id_province_fk)){
            $this->view->response("Debe completar los datos.", 400);
        } else {
            $id = $this->model->updatePark($park->$id, $park->name, $park->description, $park->price, $park->id_province_fk);
            $park = $this->model->getPark($id);
            $this->view->response($park, 200);
        }
    }
}