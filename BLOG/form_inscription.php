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

<form method="POST" action="inscription.php" enctype="multipart/form-data" >

	<input type="email" name="email"
			placeholder="Votre email"
			value="<?php echo (isset($_SESSION["form_post"]["email"]))
					?$_SESSION["form_post"]["email"]:""; ?>"
			required="required"><br>

	<input type="password" name="pwd1" placeholder="Votre mot de passe" required="required"><br>
	<input type="password" name="pwd2" placeholder="Confirmation" required="required"><br>

	<input type="text" name="firstname" placeholder="Nom de famille"
			value="<?php echo (isset($_SESSION["form_post"]["firstname"]))
			?$_SESSION["form_post"]["firstname"]:""; ?>"><br>

	<input type="text" name="lastname" placeholder="Prénom"
			value="<?php echo (isset($_SESSION["form_post"]["lastname"]))
			?$_SESSION["form_post"]["lastname"]:""; ?>"><br>

	Votre date d'anniversaire :<br>
	<input type="date" name="birthday" value="<?php echo (isset($_SESSION["form_post"]["birthday"]))
		?$_SESSION["form_post"]["birthday"]:""; ?>" required="required"><br>

	Votre avatar :<br>
	<input type="file" name="avatar" required="required"><br>

	<input type="radio" name="gender" value="male"> Homme<br>
	<input type="radio" name="gender" value="female"> Femme<br>

	Votre Pays : <br>
	<select name="country">
		<option value=""></option>
		<option value="france">France</option>
		<option value="inde">Inde</option>
		<option value="bresil">Brésil</option>
		<option value="australie">Australie</option>
		<option value="canada">Canada</option>
	</select>
	<br>

	<input type="checkbox" name="legacy" value="CGU" required="required">J'accepte les CGUs<br>

	<input type="submit" value="S'inscrire">
	<input type="reset" value="Effacer">
</form>

</section>

<?php

	unset($_SESSION["form_post"]);
	unset($_SESSION["form_error"]);

	include "footer.php";
?>
