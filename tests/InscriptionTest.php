<?php

require 'blog/conf/conf.inc.php';

class InscriptionTest extends \PHPUnit_Framework_TestCase {

  public static function isRegistered($email) {

    $db = new PDO( DB_DRIVER.":host=".DB_HOST.";port=".DB_PORT.";dbname=".DB_NAME, DB_USER, DB_PWD);
  	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $query = $db->prepare( "SELECT email FROM ".DB_PREFIX."users;" );
    $query->execute();

    $result = $query->fetch();

    $this->assertEquals($email, $result['email'], "L'email n'existe pas dans la base de données !");
  }



}

InscriptionTest::isRegistered('azertyu@iop.fr');
