<?php
	session_start();

	require "conf/conf.inc.php";
	include "conf/header.php";

?>

<section>

<?php
	// If they are error display them
	if( isset($_SESSION["form_error"]) ) {
		foreach ($_SESSION["form_error"] as $error) {
			echo "<li>".$msgError[$error];
		}
	}
	// If there is no error in the form register the user
	if( isset($_SESSION["form_post"]["registered"]) && $_SESSION["form_post"]["registered"] === true ) {
		echo "Félicitations vous êtes maintenant enregistrés !";
	}
?>

<form method="POST" action="connexion.php" enctype="multipart/form-data" >

	<input type="email" name="email"
			placeholder="Votre email"
			value="<?php echo (isset($_SESSION["form_post"]["email"]))
					?$_SESSION["form_post"]["email"]:""; ?>"
			required="required"><br>

	<input type="password" name="pwd1" placeholder="Votre mot de passe" required="required"><br>


	<input type="submit" value="Se connecter">
	<input type="reset" value="Effacer">
</form>

</section>

<?php

	unset($_SESSION["form_post"]);
	unset($_SESSION["form_error"]);

	include "footer.php";
?>
