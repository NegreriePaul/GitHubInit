<?php

 namespace GitHubInit\Core;

 class Routing {

   private $uri;
   private $uriExploded;

   private $controller;
   private $controllerName;
   private $action;
   private $actionName;
   private $params;

   public function __construct() {
     $this->setUri($_SERVER["REQUEST_URI"]);
     $this->setController();
     $this->setAction();
     $this->setParams();
     $this->runRoute();
   }

   public function setUri($uri) {
     $uri = preg_replace("#".PATH_RELATIVE_PATTERN."#i", "", $uri, 1);
     $this->uri = trim($uri, "/");
     $this->uriExploded = explode("/", $this->uri);
   }

   public function setController() {
     $this->controller = (empty($this->uriExploded[0]))?"Index":ucfirst($this->uriExploded[0]) ;
 		$this->controllerName = $this->controller."Controller";
 		unset($this->uriExploded[0]);
   }

   public function setAction() {
     $this->action = (empty($this->uriExploded[1]))?"index":$this->uriExploded[1];
     $this->actionName = $this->action."Action";
     unset($this->uriExploded[1]);
   }

   public function setParams() {
     $this->params = array_merge(array_values($this->uriExploded), $_POST);
   }

   public function checkRoute() {
     // On part du principe que la route est fausse
     $isRoute = false;
     $controllerPath = "controllers".DS.$this->controllerName.".class.php";
     // Le fichier existe ?
     if( file_exists($controllerPath) ) {
       include $controllerPath;
       // Peut on creer un objet a partir de ce fichier ?
       if( class_exists($this->controllerName) ) {
         // L'objet contient il la méthod ?
         if( method_exists($this->controllerName, $this->actionName) ) {
           $isRoute = true;
         }
       }
     }
     // Si existe return True sinon False
     return $isRoute;
   }

   public function runRoute() {
     if( $this->checkRoute() ) {
       $controller = new $this->controllerName;
       $controller->{$this->actionName}($this->params);
     } else {
       $this->page404();
     }
   }

   public function page404() {
     die("PAGE 404");
   }

 }
