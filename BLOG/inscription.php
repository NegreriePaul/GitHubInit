<?php
	session_start();


	require "conf/conf.inc.php";
  require "helpers/functions.php";

  $connect = database_connection();

	if( !empty($_POST['email']) && !empty($_POST['pwd1'])  && !empty($_POST['pwd2']) &&
		isset($_POST["gender"]) && isset($_POST["firstname"])
    && isset($_POST["lastname"]) && isset($_POST["country"])
    && !empty($_POST['birthday']) ) {

		$email = trim($_POST['email']);
		$pwd1 = $_POST['pwd1'];
		$pwd2 = $_POST['pwd2'];
		$gender = $_POST['gender'];
		$firstname = trim($_POST['firstname']);
		$lastname = trim($_POST['lastname']);
		$country = $_POST['country'];
		$birthday = $_POST['birthday'];

		$error = false;
		$listOfErrors=[];

		//Vérifier le genre
		if( !isset($listOfgenders[$gender]) ) {
			$listOfErrors[] = "4";
			$error = true;
		}

		//Vérifier le prénom
		if( strlen($firstname) ==1 ) {
			$listOfErrors[] = "5";
			$error = true;
		}
		//Vérifier le nom
		if( strlen($lastname) == 1 ) {
			$listOfErrors[] = "6";
			$error = true;
		}

		//Vérifier La date d'anniversaire
		$date = DateTime::createFromFormat(
			(strstr($birthday,"/")?'d/m/Y':"Y-m-d")
			, $birthday);
    	$DateError = DateTime::getLastErrors();

		if($DateError["warning_count"]+$DateError["error_count"] == 0) {
			$dateNow = new DateTime("now");
			$age = date_diff($date, $dateNow)->format('%y');
			if( $age < 10 || $age > 110 ) {
				$listOfErrors[] = "8";
				$error = true;
			}
		} else {
			$listOfErrors[] = "7";
			$error = true;
		}

		//Vérifier l'email
		if( !filter_var($email, FILTER_VALIDATE_EMAIL) ) {
			//echo "Email incorrecte";
			$listOfErrors[] = "1";
			$error = true;
		}
		//mdp entre 8 et 12 caractères
		if( strlen($pwd1) < 8 || strlen($pwd1) > 12 ) {
			//echo "Le mot de passe doit faire entre 8 et 12 caractères";
			$listOfErrors[] = "2";
			$error = true;
		}
		//mdp identique
		if( $pwd1 != $pwd2 ) {
			//echo "Le mot de passe de confirmation ne correspond pas";
			$listOfErrors[] = "3";
			$error = true;
		}

		if( !isset($_POST['legacy']) ) {
			$listOfErrors[] = "9";
			$error = true;
		}

		//$avatarFileType = ["png", "jpg", "jpeg", "gif"];
		//$avatarLimitSize = 10000000;
    $avatarCheck = check_upload_file('avatar');
    if( $avatarCheck !== null) {
      $listOfErrors = $avatarCheck;
    }


		if( $error ) {
			$_SESSION["form_error"] = $listOfErrors;
			$_SESSION["form_post"] = $_POST;
			header("Location: ".$_SERVER["HTTP_REFERER"]);
		}
    else { safely_move_uploaded_file('upload', 'avatar'); }
}
die("Access denied");
