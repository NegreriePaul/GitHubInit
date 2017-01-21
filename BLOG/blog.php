<?php
  require "helpers/functions.php";
  include "conf/footer.php"
?>
   <h2>Blog</h2>
   <hr/>
   <?php
   $connect = database_connection();

   $requete = "SELECT * FROM article ORDER BY Date";
   if ($resultat = mysqli_query($connect,$requete)) {
      date_default_timezone_set('Europe/Paris');
      /* fetch le tableau associatif */
      while ($ligne = mysqli_fetch_assoc($resultat)) {
         $dt_debut = date_create_from_format('Y-m-d H:i:s', $ligne['Date']);
         echo "<h3>".$ligne['Titre']."</h3>";
         echo "<h4>Le ".$dt_debut->format('d/m/Y H:i:s')."</h4>";
         echo "<div style='width:400px'>".$ligne['Commentaire']." </div>";
         if ($ligne['Photo'] != "") {
            echo "<img src='photos/".$ligne['Photo']."' width='200px' height='200px'/>";
         }
         echo "<hr />";
      }
   }
   ?>
   <br/>
   <a href="formulaireAjout.php" >retour à la page d'insertion</a>
<?php
  include "conf/footer.php"
?>
