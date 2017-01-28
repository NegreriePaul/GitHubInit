<?php

  include "./conf/header.php";
  require "./helpers/functions.php";

  if( !empty($_POST['titre']) && !empty($_POST['commentaire']) && !empty($_POST['image'])) {

    $titre = safeStringFromUser($_POST['titre']);
    $commentaire = safeStringFromUser($_POST['commentaire']);

    $avatarCheck = check_upload_file($_POST['image']);
    if( $avatarCheck !== null) {
      $listOfErrors = $avatarCheck;
      echo "<br />L'article n'a pas pu être ajouté.<br /><br />";
    } else {

      try {

				$db = database_connection();

				$query = $db->prepare( "INSERT INTO ".DB_PREFIX."articles ( libelle, contenu)
					VALUES (  :libelle, :contenu ;" );

				$query->execute([
						  "libelle"=>$tire,
						  "contenu"=>$commentaire
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
