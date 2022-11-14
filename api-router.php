<?php
require_once './libs/Router.php';
require_once './app/controllers/parks-api.controller.php';
require_once './app/controllers/auth-api.controller.php';

$router = new Router();

$router->addRoute('parks', 'GET', 'ApiParkController', 'getParks');
$router->addRoute('parks/:ID', 'GET', 'ApiParkController', 'getPark');
$router->addRoute('parks/:ID', 'DELETE', 'ApiParkController', 'deletePark');
$router->addRoute('parks', 'POST', 'ApiParkController', 'insertPark');
$router->addRoute('parks/:ID', 'PUT', 'ApiParkController', 'updatePark');

$router->addRoute("auth/token", 'GET', 'AuthApiController', 'getToken');

$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);
