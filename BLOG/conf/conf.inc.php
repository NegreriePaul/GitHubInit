<?php

define("HOST", "localhost");
define("DS", DIRECTORY_SEPARATOR);

define("DB_NAME", "blogphp");
define("DB_USER", "root");
define("DB_PWD", "root");
define("DB_HOST", HOST);
define("DB_PORT", "3306");
define("DB_DRIVER", "mysql");
define("DB_PREFIX", "nap_");


$msgError = [
			1=>"L'adresse email n'est pas correcte",
			2=>"Le mot de passe doit faire entre 8 et 12 caractères",
			3=>"Le mot de passe de confirmation ne correspond pas",
			4=>"Genre inconnu",
			5=>"Le prénom doit faire au moins 2 caractères",
			6=>"Le nom doit faire au moins 2 caractères",
			7=>"Format de date incorrect",
			8=>"Vous devez avoir entre 10 et 110 ans",
			9=>"Vous devez accépter les CGUs",
			10=>"Veuillez donner un avatar",
			11=>"Erreur à l'upload du fichier",
			12=>"L'extension de votre avatar n'est pas correct",
			13=>"Votre avatar est trop lourd"
];

$listOfgenders = [
					"mr" => "Mr",
					"mme" => "Mme",
					"autre" => "Autre"
];
$defaultGender = "mr";

$listOfCountries = [
					"fr"=>"France",
					"pl"=>"Pologne",
					"en"=>"Angleterre"
];
$defaultCountry = "fr";

$avatarFileType = ["png", "jpg", "jpeg", "gif"];
$avatarLimitSize = 10000000;
