<?php

ini_set('display_errors',1);

require_once "conf.inc.php";
require_once "functions.php";


function autoloader($class) {
    $class = strtolower($class);
    // Vérifie s'il éxiste dans le dossier core un fichier "$class.class.php
    // Si oui, alors include// Si oui, alors include

    if (file_exists("core/" . $class . ".class.php")) {
        include BASE_URL . "core/" . $class . ".class.php";
    }elseif (file_exists("models/" . $class . ".class.php")) {
        include BASE_URL . "models/" . $class . ".class.php";
    }
}

spl_autoload_register('autoloader');

$route = routing::setRouting();

$name_controller = $route["c"] . "Controller";
$path_controller = BASE_URL . "controllers/" . $name_controller . ".class.php";
if(file_exists($path_controller)){
    include $path_controller;
    
    $controller = new $name_controller;
    $name_action = $route["a"] . "Action";
    if(method_exists($controller, $name_action)){
        //var_dump(expression)
        $controller->$name_action($route["args"]);
    }else{
        if($route["c"] == 'artiste' || $route['c'] == 'event'){
            $_GET['name'] = $route["a"];
            $name_action = "indexAction";
            if(method_exists($controller, $name_action)){
                $controller->$name_action($route["args"]);
            }else{
                header("Location: " . FRONT_URL . "error");
            }
        }else{
            header("Location: " . FRONT_URL . "error");
        }
        //if($controller)
        //$_GET['name'] = $route["a"];
        //header("Location: " . FRONT_URL . "error");
    	//die("404, L'action " . $name_action . " n'existe pas.");
    }
}else{
    header("Location: " . FRONT_URL . "error");
    //die("404, Le controller " . $route["a"] . " n'existe pas : " . $path_controller);
}
