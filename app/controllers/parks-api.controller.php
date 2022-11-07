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

    public function getAll($params = null){
        $parks = $this->model->getAll();
        $this->view->response($parks);
    }

    public function getPark($params = null){
        $id = $params[':ID'];
        $park = $this->model->getPark($id);

        if ($park){
            $this->view->response($park);
        }
        else {
            $this->view->response("El parque con el id $id no existe, 404");
        }
    }

    
}