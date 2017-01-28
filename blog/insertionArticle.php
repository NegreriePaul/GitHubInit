<?php

  include "./conf/header.php";
  require "./helpers/functions.php";

  if( !empty($_POST['titre']) && !empty($_POST['commentaire']) ) {

    $listOfErrors = [];
    $error = false;

    $titre = safeStringFromUser($_POST['titre']);
    $commentaire = safeStringFromUser($_POST['commentaire']);

    $avatarCheck = check_upload_file($_FILES['image']);
    if( $avatarCheck !== null) {
      array_merge($listOfErrors, $avatarCheck);
      echo "<br />L'article n'a pas pu être ajouté.<br /><br />";
    } else {
      try {

        $nameImage = safely_move_uploaded_file('upload', $_FILES['image']);

				$db = database_connection();

				$query = $db->prepare( "INSERT INTO ".DB_PREFIX."articles ( utilisateur, libelle, contenu)
					VALUES ( :utilisateur, :libelle, :contenu ) ;" );

				$query->execute([
              "utilisateur" => $_SESSION['utilisateur'],
						  "libelle" => $titre,
						  "contenu" => $commentaire
					]);

			} catch( Exception $e ) {
				die("Error SQL : ".$e->getMessage());
			}

      safely_move_uploaded_file('photo', $_POST['image']);

      echo "<br />Ajout de l'article réussi.<br /><br />";
    }

  } else {
    echo "<br />L'article n'a pas pu être ajouté.<br /><br />";
  }

?>

<a href="formulaireAjout.php" >retour à la page d'ajout d'articles</a>

<?php include "conf/footer.php" ?>
