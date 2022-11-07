<?php
require_once 'libs/Router.php';

$router = new Router();

$router->addRoute('parks', 'GET', 'ApiParkController', 'getAll');
/* $router->addRoute('parks/:ID', 'GET', 'ApiParkController', 'getPark');
$router->addRoute('parks/:ID', 'DELETE', 'ApiParkController', 'deletePark');
$router->addRoute('parks', 'POST', 'ApiParkController', 'addPark');
 */
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);
