<?php

 namespace Core;

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

   // Set the uri who was called
   public function setUri($uri) {
     $uri = preg_replace("#".PATH_RELATIVE_PATTERN."#i", "", $uri, 1);
     $this->uri = trim($uri, "/");
     $this->uriExploded = explode("/", $this->uri);
   }

    // Set the controller who was called
   public function setController() {
     $this->controller = (empty($this->uriExploded[0]))?"Index":ucfirst($this->uriExploded[0]) ;
 		$this->controllerName = $this->controller."Controller";
 		unset($this->uriExploded[0]);
   }

    // Set the action who was called
   public function setAction() {
     $this->action = (empty($this->uriExploded[1]))?"index":$this->uriExploded[1];
     $this->actionName = $this->action."Action";
     unset($this->uriExploded[1]);
   }

    // Set the params who was called
   public function setParams() {
     $this->params = array_merge(array_values($this->uriExploded), $_POST);
   }

   /**
   * Check if the route is legit
   *
   */
   public function checkRoute() {
     // Route is always False
     $isRoute = false;
     $controllerPath = "controllers".DS.$this->controllerName.".class.php";
     // File Exist ?
     if( file_exists($controllerPath) ) {
       include $controllerPath;
       // Can We create this object ?
       if( class_exists($this->controllerName) ) {
         // Does it contain the Method ?
         if( method_exists($this->controllerName, $this->actionName) ) {
           $isRoute = true;
         }
       }
     }
     // If exist return True else return False
     return $isRoute;
   }

   // Execut the Route
   public function runRoute() {
     if( $this->checkRoute() ) {
       $controller = new $this->controllerName;
       $controller->{$this->actionName}($this->params);
     } else {
       $this->page404();
     }
   }

   // 404 :(
   public function page404() {
     die("PAGE 404");
   }

 }
