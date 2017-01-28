<?php
  require "./conf/conf.inc.php";
  require "./helpers/functions.php";

	session_start();

	if( !empty($_POST['email']) && !empty($_POST['pwd']) ) {

    $email = trim($_POST['email']);
		$pwd = $_POST['pwd'];

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

    if( $error !== true ) {
      try {
        $db = database_connection();

        $query = $db->prepare( "SELECT email, password FROM ".DB_PREFIX."users;" );
        $query->execute();

        $result = $query->fetch();
        /***********************
        echo "<pre>";
          print_r($result);
        echo "</pre>";
        ************************/

        if( strcomp($result['email'], $email) === 0 ) {
          if( !password_verify($pwd, $result['password']) ) {
            echo "Vous êtes connectés !";
          } else {
            echo "Mot de passe invalide !";
          }
        } else {
          echo "Email invalide !";
        }
      } catch( Exception $e ) {
				die("Error SQL : ".$e->getMessage());
      }

    }

  }
