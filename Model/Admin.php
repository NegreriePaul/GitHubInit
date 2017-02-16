<?php

namespace Model;

class Admin extends Blog
{

    public function login($email, $password)
    {
        $result = $this->db->prepare('SELECT email, password FROM Admins WHERE email = :email LIMIT 1');
        $result->bindValue(':email', $email, \PDO::PARAM_STR);
        $result->execute();
        $row = $result->fetch(\PDO::FETCH_OBJ);

        return password_verify($password, @$row->password);
    }

}
