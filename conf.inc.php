<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

define("PATH_URL", "wedo");

define("DB_HOST","localhost");
define("DB_USER","root");
define("DB_PASSWORD","");
define("DB_NAME","wedo");
define("HOME_URL", "wedo/");
define("FRONT_URL","/wedo/");
define("BASE_URL",dirname(__FILE__) . "/");




// token md5 unique id + email + url
// access token en db (user) => inactif (0/1) flog / accesstken char 32
// mail avec url
// /user/validation/sjndsnf
// vérif en base user avec access_token + param en get si oui status 1 redirect connexion sinon message d'erreur + regénérer access token
// fucntion (generate access token) (param: mail)
// connect user pass + regenerate access token stocké en session
