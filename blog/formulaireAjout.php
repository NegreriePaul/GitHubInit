<?php
  include "./conf/header.php";
?>
   <h2>Nouvel article</h2>
   <form action="insertionArticle.php" method="POST" enctype="multipart/form-data">
      <p>Titre de l'article: <input placeholder="Votre titre" type="text" name="titre"
        value="<?php echo (isset($_SESSION["form_post"]["titre"]))
  					?$_SESSION["form_post"]["titre"]:""; ?>" /></p>
      <p>Commentaire: <br><textarea placeholder="Votre commentaire"
        name="commentaire" rows="10" cols="50"></textarea></p>
      <p>Choisissez une photo avec une taille inférieure à 2 Mo.</p>
      <input type="file" name="image" placeholder="Votre image">
      <br>
      <input type="submit" value="Envoyer">
   </form>
   <br/>
   <a href="blog.php">VISITEZ LE BLOG</a>
<?php
  include "./conf/footer.php"
?>
