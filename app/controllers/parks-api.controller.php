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

    public function getParks($params = null){ //validacion del limit y manejo de errores
        if ((isset($_GET['order'])) && (!empty($_GET['order'])) && (isset($_GET['limit'])) && (!empty($_GET['limit']))) {
            $order = $_GET['order'];

            $page = 1;
            if (!empty($_GET['page'])) {
                $page = filter_input(INPUT_GET, 'page', FILTER_VALIDATE_INT);
                if (false === $page){
                    $page = 1;
                }
            }

            $limit = $_GET['limit'];
            if (!empty($_GET['limit'])){
                $offset = ($page - 1) * $limit;
            }
//cuando limit esta vacio me lo ordena asc por la query
            $order = strtoupper($order);
            $parks = $this->model->getAll($order, $limit, $offset);
        } else{
            $parks = $this->model->getAll();
        }
        $this->view->response($parks);
    }

    public function getPark($params = null){
        $id = $params[':ID'];
        $park = $this->model->getPark($id);

        if ($park){
            $this->view->response($park);
        }
        else {
            $this->view->response("El parque con el id $id no existe", 404);
        }
    }

    public function deletePark($params = null){
        $id = $params[':ID'];
        $park = $this->model->getPark($id);

        if ($park) {
            $this->model->deletePark($id);
            $this->view->response($park);
        } else {
            $this->view->response("El parque con el id $id no existe", 404);
        }
    }

    public function insertPark(/* $params = null */){
        $park = $this->getData();

        if (empty($park->name) || empty($park->description) || empty($park->price) || empty($park->id_province_fk)){
            $this->view->response("Debe completar los datos", 400);
        } else {
            $id = $this->model->insert($park->name, $park->description, $park->price, $park->id_province_fk);
            $park = $this->model->getPark($id);
            $this->view->response($park, 201);
        }
    }

    public function updatePark($params = null){
        $id = $params[':ID'];
        $previousPark = $this->model->getPark($id); //validacion si no está en la db 
        
        $park = $this->getData();
        $park->$id = $id;
        if (empty($park->name) || empty($park->description) || empty($park->price) || empty($park->id_province_fk)){
            $this->view->response("Debe completar los datos", 400);
        } else {
            $id = $this->model->updatePark($park->$id, $park->name, $park->description, $park->price, $park->id_province_fk);
            $park = $this->model->getPark($id);
            $this->view->response($park, 200);
        }
    }
}