<?php
/**
 * Created by PhpStorm.
 * User: paulnegrerie
 * Date: 14/02/2017
 * Time: 09:33
 */
require 'inc/footer.php';
session_start();
require "conf.inc.php";
//autoloader va inclure les fichiers necessaire seulement eux, rend les require dynamique (inclu les class qu'on veut instancier)

spl_autoload_register( function ($class) {
    if (file_exists('core/'.$class. '.class.php')){
        require 'core/'.$class.'.class.php';
    }elseif (file_exists('models/'.$class. '.class.php')){
        require 'models/'.$class.'.class.php';
    }


});


require 'inc/footer.php';



