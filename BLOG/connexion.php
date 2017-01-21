<?php
  require "conf/conf.inc.php";
  require "functions/helpers.php";

	session_start();

  $connect = database_connection();

	if( !empty($_POST['email']) && !empty($_POST['pwd']) ) {

    $email = trim($_POST['email']);
		$pwd1 = $_POST['pwd'];

    $error = false;
		$listOfErrors = [];

    if( !filter_var($email, FILTER_VALIDATE_EMAIL) ) {
			//echo "Email incorrecte";
			$listOfErrors[] = "1";
			$error = true;
		}

    if( strlen($pwd) < 8 || strlen($pwd) > 12 ) {
      //echo "Le mot de passe doit faire entre 8 et 12 caractères";
      $listOfErrors[] = "2";
      $error = true;
    }

  }
