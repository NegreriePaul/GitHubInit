<?php

/* Fonctions utiles pour le bon fonctionnement du site*/

function database_connection() {
	$db = new PDO( DB_DRIVER.":host=".DB_HOST.";port=".DB_PORT.";dbname=".DB_NAME, DB_USER, DB_PWD);
	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	return $db;
}

function safeStringFromUser($string) {
	$string = htmlentities($string, ENT_QUOTES, 'UTF-8');
	$string = strip_tags($string);
	return $string;
}

function check_upload_file($img) {
	if( empty($_FILES[$img]) ) {
		$listOfErrors[] = "10";
		$error = true;
	} else if( $_FILES[$img]["error"] > 0 ) {
		$error = true;
		switch ( $_FILES[$img]["error"] ) {
			case UPLOAD_ERR_INI_SIZE:
				$listOfErrors[] = "11";
				break;
			case UPLOAD_ERR_FORM_SIZE:
				$listOfErrors[] = "11";
				break;
			case UPLOAD_ERR_PARTIAL:
				$listOfErrors[] = "11";
				break;
			case UPLOAD_ERR_NO_FILE:
				$listOfErrors[] = "11";
				break;
			case UPLOAD_ERR_NO_TMP_DIR:
				$listOfErrors[] = "11";
				break;
			case UPLOAD_ERR_CANT_WRITE:
				$listOfErrors[] = "11";
				break;
			case UPLOAD_ERR_EXTENSION:
				$listOfErrors[] = "11";
				break;
			default:
				$listOfErrors[] = "11";
				break;
		}
	} else {
		$infoFile = pathinfo( $_FILES[$img]["name"] );
		if( !in_array(strtolower($infoFile["extension"]), $avatarFileType) ) {
			$listOfErrors[] = "12";
			$error = true;
		}

		if( $_FILES[$img]["size"] > $avatarLimitSize ) {
			$listOfErrors[] = "13";
			$error = true;
		}
	}

	if( $error === true ) {
		return $listOfErrors;
	} else {
		return null;
	}
}

function safely_move_uploaded_file($folder, $file) {
	//Est ce que le dossier upload existe
	$pathUpload = __DIR__.DS.$folder;
	if( !file_exists($pathUpload) ){
		//Sinon le créer
		mkdir($pathUpload);
	}
	//Déplacer l'avatar dedans
	$nameAvatar = uniqid().".". strtolower($infoFile["extension"]);
	move_uploaded_file($_FILES[$file]["tmp_name"], $pathUpload.DS.$nameAvatar);
}

function email_exists($email) {
    global $pdo;
    $sql = "SELECT id FROM user WHERE email='$email';";
    $query = $pdo->query($sql);
    if ($query) {
        $row = $query->fetch(PDO::FETCH_ASSOC);
        if ($row) {
            return $row["id"];
        }
    }
    return false;
}

function save_page_count($url, $name, $type) {
    global $pdo;
    $name = utf8_decode($name);
    $sql = "SELECT id FROM page WHERE url='$url';";
    $query = $pdo->query($sql);
    $send = false;
    if ($query) {
        $row = $query->fetch(PDO::FETCH_ASSOC);
        if ($row) {
            $id = $row["id"];
            $sql = "UPDATE page SET count=count+1, nom='$name', type='$type' WHERE id=$id;";
            $query = $pdo->prepare($sql);
            $query->execute();
            $send = true;
        } else {
            $sql = "INSERT INTO page (url, count, nom, type) VALUES ('$url', 1, '$name', '$type')";
            $query = $pdo->prepare($sql);
            $query->execute();
            $send = true;
        }
    }
    return $send;
}

function print_date($date_deb, $date_fin) {
    if (strtotime($date_fin) <= strtotime($date_deb)) {
        return "Le " . date("d/m/Y", strtotime($date_deb));
    }
    return "Du " . date("d/m/Y", strtotime($date_deb)) . " au " . date("d/m/Y", strtotime($date_fin));
}

function is_logged_in() {
    return !empty($_SESSION['user']);
}

function getArticles() {
    global $pdo;
    $query = $pdo->prepare("SELECT DISTINCT(u.id), u.nom, u.prenom, u.email, a.id, a.id_redacteur, a.titre_article, a.contenu, a.photo, a.date_parution FROM user u, article a WHERE u.id = a.id_redacteur AND a.archive = 0 ORDER BY date_parution DESC");
    $query->execute();
    $row = $query->fetchAll();
    return $row;
}

function getCommentaire() {
    global $pdo;
    $query = $pdo->prepare("SELECT u.id,u.pseudo, u.nom, u.prenom, c.id_element, c.contenu, c.date_comment"
            . " FROM user u JOIN commentaire c ON (c.id_user = u.id)");
    $query->execute();
    $row = $query->fetchAll(PDO::FETCH_ASSOC);
    return $row;
}
