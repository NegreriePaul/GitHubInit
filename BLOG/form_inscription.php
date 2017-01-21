<?php
	session_start();

	require './conf/conf.inc.php';
	include "./conf/header.php";

?>

<section>

<?php
	if( isset($_SESSION["form_error"]) ){
		foreach ($_SESSION["form_error"] as $error) {
			echo "<li>".$msgError[$error];
		}
	}
?>

<form method="POST" action="subscribe.php" enctype="multipart/form-data">

	<?php

		$defaultGender = (isset($_SESSION["form_post"]["gender"]))?$_SESSION["form_post"]["gender"]:$defaultGender;

		foreach ($listOfgenders as $key => $value) {
			echo '<label>
					<input
						type="radio"
						name="gender"
						value="'.$key.'"
						'.( ($key == $defaultGender)?'checked="checked"':''  ).'
						>'.$value.'
				</label>';

		}
	?>
	<br>

	<input type="text" name="firstname" placeholder="Votre prénom"
	value="<?php echo (isset($_SESSION["form_post"]["firstname"]))
					?$_SESSION["form_post"]["firstname"]:""; ?>">

	<input type="text" name="lastname" placeholder="Votre nom"
	value="<?php echo (isset($_SESSION["form_post"]["lastname"]))
					?$_SESSION["form_post"]["lastname"]:""; ?>"><br>

	<select name="country">
	<?php

		$defaultCountry = (isset($_SESSION["form_post"]["country"]))?$_SESSION["form_post"]["country"]:$defaultCountry;

		foreach ($listOfCountries as $key => $value) {
			echo '<option
					value="'.$key.'"
					'.( ($key == $defaultCountry)?'selected="selected"':'' ).'
					>'.$value.'</option>';
		}
	?>
	</select><br>

	<label>
		Date d'anniversaire : <input type="text" name="birthday" placeholder="dd/mm/YYYY" required="required"
		value="<?php echo (isset($_SESSION["form_post"]["birthday"]))
					?$_SESSION["form_post"]["birthday"]:""; ?>"><br>
	</label>

	<input type="email" name="email"
			placeholder="Votre email"
			value="<?php echo (isset($_SESSION["form_post"]["email"]))
					?$_SESSION["form_post"]["email"]:""; ?>"
			required="required" ><br>

	<input type="password" name="pwd1" placeholder="Votre mot de passe" required="required"><br>

	<input type="password" name="pwd2" placeholder="Confirmation" required="required"><br>

	<input type="file" name="avatar" placeholder="Votre image" required="required">
	<br>

	<label>
		cgu <input type="checkbox" name="legacy" required="required">
	</label>
	<br>

	<input type="submit" value="S'inscrire">
</form>

</section>

<?php

	unset($_SESSION["form_post"]);
	unset($_SESSION["form_error"]);

	include "conf/footer.php";
?>
