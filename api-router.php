<?php
require_once 'libs/Router.php';
require_once 'app/controllers/parks-api.controller.php';

$router = new Router();

$router->addRoute('parks', 'GET', 'ApiParkController', 'getParks');
$router->addRoute('parks/:ID', 'GET', 'ApiParkController', 'getPark');
$router->addRoute('parks/:ID', 'DELETE', 'ApiParkController', 'deletePark');
$router->addRoute('parks', 'POST', 'ApiParkController', 'insertPark');

$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);
