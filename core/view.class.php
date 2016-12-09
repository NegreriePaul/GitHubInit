<?php
class view{

    public $data = [];
    public $view;
    public $template;

    public function setView($view, $layout = "template"){
        $path_view = "views/view_" . $view . ".php";
        $path_template = "views/view_" . $layout . ".php";
        if(file_exists($path_view)){
            $this->view  = $path_view;

            if(file_exists($path_template)){
                $this->template  = $path_template;
            }else{
                die("Template '" . $layout . "' not found");
            }
        }else{
            die("View '" . $view . "' not found");
        }
        if (session_status() == PHP_SESSION_NONE) {
            session_start();
        }
    }

    public function assign($key, $value){
        $this->data[$key] = $value;
    }

    public function __destruct(){  
        extract($this->data); 
        include $this->template;
    }
}

