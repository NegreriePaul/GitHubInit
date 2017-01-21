<?php

include "conf/header.php";
require "helpers/functions.php";

$connect = database_connection();

$avatarCheck = check_upload_file('avatar');
if( $avatarCheck !== null) {
  $listOfErrors = $avatarCheck;
}
else { safely_move_uploaded_file('photo', 'photo'); }

$requete = "INSERT INTO article (Titre, Date, Commentaire, Photo) VALUES ('".htmlentities(addslashes($_POST['titre']), ENT_QUOTES)."','".date("Y-m-d H:i:s")."','".htmlentities (addslashes($_POST['commentaire']), ENT_QUOTES)."', '".$_FILES['photo']['name']."')";
$resultat = mysqli_query($connect,$requete);
$identifiant = mysqli_insert_id($connect);
/* Fermeture de la connexion */
mysqli_close($connect);

if ($identifiant != 0) { echo "<br />Ajout du commentaire réussi.<br /><br />"; }
else { echo "<br />Le commentaire n'a pas pu être ajouté.<br /><br />"; }
?>

<a href="formulaireAjout.php" >retour à la page d'ajout d'articles</a>

<?php include "conf/footer.php" ?>
