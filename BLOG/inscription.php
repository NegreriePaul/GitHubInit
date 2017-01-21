<?php
	session_start();

	require "./conf/conf.inc.php";

	if( !empty($_POST['email']) && !empty($_POST['pwd1'])  && !empty($_POST['pwd2']) &&
			isset($_POST["gender"]) && isset($_POST["firstname"]) && isset($_POST["lastname"]) && isset($_POST["country"]) && !empty($_POST['birthday'])
			)  {

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
		if( !isset($listOfgenders[$gender] )){
			$listOfErrors[]="4";
			$error = true;
		}

		//Vérifier le prénom
		if( strlen($firstname)==1 ){
			$listOfErrors[]="5";
			$error = true;
		}
		//Vérifier le nom
		if( strlen($lastname)==1 ){
			$listOfErrors[]="6";
			$error = true;
		}

		//Vérifier La date d'anniversaire

		$date = DateTime::createFromFormat(
			(strstr($birthday,"/")?'d/m/Y':"Y-m-d")
			, $birthday);
    	$DateError = DateTime::getLastErrors();


		if($DateError["warning_count"]+$DateError["error_count"] == 0){

			$dateNow = new DateTime("now");
			$age = date_diff($date, $dateNow)->format('%y');
			if($age<10 || $age > 110){
				$listOfErrors[]="8";
				$error = true;
			}

		}else{
			$listOfErrors[]="7";
			$error = true;
		}


		//Vérifier l'email
		if(  !filter_var($email, FILTER_VALIDATE_EMAIL)  ){
			//echo "Email incorrecte";
			$listOfErrors[]="1";
			$error = true;
		}
		//mdp entre 8 et 12 caractères
		if( strlen($pwd1)<8 || strlen($pwd1)>12){
			//echo "Le mot de passe doit faire entre 8 et 12 caractères";
			$listOfErrors[]="2";
			$error = true;
		}
		//mdp identique
		if($pwd1 != $pwd2){
			//echo "Le mot de passe de confirmation ne correspond pas";
			$listOfErrors[]="3";
			$error = true;
		}

		if( !isset($_POST['legacy'])){
			$listOfErrors[]="9";
			$error = true;
		}


		//$avatarFileType = ["png", "jpg", "jpeg", "gif"];
		//$avatarLimitSize = 10000000;

		if(empty($_FILES["avatar"])){
			$listOfErrors[]="10";
			$error = true;
		}else if($_FILES["avatar"]["error"] > 0){
			$error = true;
			switch ($_FILES["avatar"]["error"]) {
	            case UPLOAD_ERR_INI_SIZE:
	                $listOfErrors[]="11";
	                break;
	            case UPLOAD_ERR_FORM_SIZE:
	                $listOfErrors[]="11";
	                break;
	            case UPLOAD_ERR_PARTIAL:
	                $listOfErrors[]="11";
	                break;
	            case UPLOAD_ERR_NO_FILE:
	                $listOfErrors[]="11";
	                break;
	            case UPLOAD_ERR_NO_TMP_DIR:
	                $listOfErrors[]="11";
	                break;
	            case UPLOAD_ERR_CANT_WRITE:
	                $listOfErrors[]="11";
	                break;
	            case UPLOAD_ERR_EXTENSION:
	                $listOfErrors[]="11";
	                break;
	            default:
	                $listOfErrors[]="11";
	                break;
	        }
		}else{
			$infoFile = pathinfo($_FILES["avatar"]["name"]);
			if(!in_array( strtolower($infoFile["extension"]) , $avatarFileType)){
				$listOfErrors[]="12";
				$error = true;
			}

			if($_FILES["avatar"]["size"]>$avatarLimitSize){
				$listOfErrors[]="13";
				$error = true;
			}
		}


		if($error){
			$_SESSION["form_error"] = $listOfErrors;
			$_SESSION["form_post"] = $_POST;
			header("Location: ".$_SERVER["HTTP_REFERER"]);
		}else{

			//Est ce que le dossier upload existe
			$pathUpload = __DIR__.DS."upload";
			if( !file_exists($pathUpload) ){
				//Sinon le créer
				mkdir($pathUpload);
			}
			//Déplacer l'avatar dedans
			$nameAvatar = uniqid().".". strtolower($infoFile["extension"]);
			move_uploaded_file($_FILES["avatar"]["tmp_name"], $pathUpload.DS.$nameAvatar);

			//Hash du mot de passe
			$pwd = password_hash($pwd1, PASSWORD_DEFAULT);

			//$db est un objet, il s'agit de l'instance de la classe PDO
			try {

				$db = new PDO( DB_DRIVER.":host=".DB_HOST.";port=".DB_PORT.";dbname=".DB_NAME, DB_USER, DB_PWD);

				$query = $db->prepare( "INSERT INTO ".DB_PREFIX."users ( firstname, lastname, gender, country, birthday, email, password, avatar)
					VALUES (  :firstname, :lastname, :gender, :country, :birthday, :email, :pwd, :avatar);"  );

				$query->execute([
						  "firstname"=>$firstname,
						  "lastname"=>$lastname,
						  "gender"=>$gender,
						  "country"=>$country,
						  "birthday"=>$date->format('Y-m-d'),
						  "email"=>$email,
						  "pwd"=>$pwd,
						  "avatar"=>$nameAvatar
					]);

			}catch(Exception $e){
				die("Error SQL : ".$e->getMessage());
			}

		}

	}


die("Access denied");
