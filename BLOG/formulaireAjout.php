<?php
  include "conf/header.php";
?>
   <h2>Nouvel article</h2>
   <form action="insertionArticle.php" method="POST" enctype="multipart/form-data">
      <p>Titre de l'article: <input type="text" name="titre" /></p>
      <p>Commentaire: <br /><textarea name="commentaire" rows="10" cols="50"></textarea></p>
      <input type="hidden" name="MAX_FILE_SIZE" value="2097152">
      <p>Choisissez une photo avec une taille inférieure à 2 Mo.</p>
      <input type="file" name="photo">
      <br/><br/>
      <input type="submit" name="ok" value="Envoyer">
   </form>
   <br/>
   <a href="blog.php" >VISITEZ LE BLOG</a>
<?php
  include "conf/footer.php"
?>
