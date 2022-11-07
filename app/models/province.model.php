<?php
class ProvinceModel {
    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=parks;charset=utf8', 'root', '');
    }

    function getAll(){
        $query = $this->db->prepare("SELECT * FROM provinces");
        $query->execute();
        $provinces = $query->fetchAll(PDO::FETCH_OBJ);
        return $provinces;
    }

    function getProvinceById($id){
        $query = $this->db->prepare("SELECT * FROM provinces WHERE id=?");
        $query->execute([$id]);
        $province = $query->fetch(PDO::FETCH_OBJ);
        return $province;
    }

    function insert($name, $capital, $weather) {
        $query = $this->db->prepare("INSERT INTO provinces (name, capital, weather) VALUES (?, ?, ?)");
        $query->execute([$name, $capital, $weather]);
        
    }

    function deleteProvinceById($id){
        $query = $this->db->prepare("DELETE FROM provinces WHERE id=?");
        $query->execute([$id]);
    }
    function editProvinceById($id, $name, $capital, $weather){
        $query = $this->db->prepare("UPDATE provinces SET name=? , capital=? , weather=? WHERE id= ?");
        $query->execute([$name, $capital, $weather, $id]);
    }
}