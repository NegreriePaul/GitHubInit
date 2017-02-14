<?php

namespace \Model;

class Blog
{
    protected $db;

    /*Constructor of Blog Class*/
    public function __construct()
    {
        $this->db = new \Core\Database;
    }

    public function get($offset, $limit)
    {
        $result = $this->db->prepare('SELECT * FROM Posts ORDER BY createdDate DESC LIMIT :offset, :limit');
        $result->bindParam(':offset', $offset, \PDO::PARAM_INT);
        $result->bindParam(':limit', $limit, \PDO::PARAM_INT);
        $result->execute();
        return $result->fetchAll(\PDO::FETCH_OBJ);
    }

    /*DISPLAY all existing blog posts*/
    public function getAll()
    {
        $result = $this->db->query('SELECT * FROM Posts ORDER BY createdDate DESC');
        return $result->fetchAll(\PDO::FETCH_OBJ);
    }

    /*ADD Post with Title, body of the post and date of creation in parameters*/
    public function add(array $aData)
    {
        $result = $this->db->prepare('INSERT INTO Posts (title, body, createdDate) VALUES(:title, :body, :created_date)');
        return $result->execute($aData);
    }

    /*DISPLAY the post selected by user with postId*/
    public function getById($id)
    {
        $result = $this->db->prepare('SELECT * FROM Posts WHERE id = :postId LIMIT 1');
        $result->bindParam(':postId', $id, \PDO::PARAM_INT);
        $result->execute();
        return $result->fetch(\PDO::FETCH_OBJ);
    }

    /*UPDATE the data of one or more posts according to its id*/
    public function update(array $aData)
    {
        $result = $this->db->prepare('UPDATE Posts SET title = :title, body = :body WHERE id = :postId LIMIT 1');
        $result->bindValue(':postId', $aData['post_id'], \PDO::PARAM_INT);
        $result->bindValue(':title', $aData['title']);
        $result->bindValue(':body', $aData['body']);
        return $result->execute();
    }

    /*DELETE post*/
    public function delete($id)
    {
        $result = $this->db->prepare('DELETE FROM Posts WHERE id = :postId LIMIT 1');
        $result->bindParam(':postId', $id, \PDO::PARAM_INT);
        return $result->execute();
    }
}