<?php

/** Allows to create an admin password easily **/

$sPwd = 'pwd123'; // Admin Password
$sHashedPwd = password_hash($sPwd , PASSWORD_BCRYPT, array('cost' => 14));
echo 'Password is: ' . $sHashedPwd;
