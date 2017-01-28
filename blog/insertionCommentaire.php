<?php

include "./conf/header.php";
require "./helpers/functions.php";

if(  !empty($_POST['contenu']) ) {

    $contenu = safeStringFromUser($_POST['contenu']);

    


    if( $contenu == null) {
        $listOfErrors = $contenu;
        echo "<br />Le commentaire n'a pas pu être ajouté.<br /><br />";
    } else {

        try {

            $db = database_connection();

            $query = $db->prepare( "INSERT INTO ".DB_PREFIX."commentaire ( article,utilsateur, contenu,)
					VALUES (  :article, :libelle, :contenu ;" );

            $query->execute([

                "libelle"=>$titre,
                "contenu"=>$contenu
            ]);

        } catch( Exception $e ) {
            die("Error SQL : ".$e->getMessage());
        }


        echo "<br />Ajout du commentaire réussi.<br /><br />";
    }

} else {
    echo "<br />Le commentaire n'a pas pu être ajouté.<br /><br />";
}

?>

<a href="blog.php" >retour au blog</a>

<?php include "conf/footer.php" ?>
