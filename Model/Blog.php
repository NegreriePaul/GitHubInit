<?php

namespace TestProject\Model;

class Blog
{
    protected $db;

    public function __construct()
    {
        $this->db = new \TestProject\Engine\Db;
    }

    public function get($offset, $limit)
    {
        $result = $this->db->prepare('SELECT * FROM Posts ORDER BY createdDate DESC LIMIT :offset, :limit');
        $result->bindParam(':offset', $offset, \PDO::PARAM_INT);
        $result->bindParam(':limit', $limit, \PDO::PARAM_INT);
        $result->execute();
        return $result->fetchAll(\PDO::FETCH_OBJ);
    }

    public function getAll()
    {
        $result = $this->db->query('SELECT * FROM Posts ORDER BY createdDate DESC');
        return $result->fetchAll(\PDO::FETCH_OBJ);
    }

    public function add(array $aData)
    {
        $result = $this->db->prepare('INSERT INTO Posts (title, body, createdDate) VALUES(:title, :body, :created_date)');
        return $result->execute($aData);
    }

    public function getById($iId)
    {
        $result = $this->db->prepare('SELECT * FROM Posts WHERE id = :postId LIMIT 1');
        $result->bindParam(':postId', $iId, \PDO::PARAM_INT);
        $result->execute();
        return $result->fetch(\PDO::FETCH_OBJ);
    }

    public function update(array $aData)
    {
        $result = $this->db->prepare('UPDATE Posts SET title = :title, body = :body WHERE id = :postId LIMIT 1');
        $result->bindValue(':postId', $aData['post_id'], \PDO::PARAM_INT);
        $result->bindValue(':title', $aData['title']);
        $result->bindValue(':body', $aData['body']);
        return $result->execute();
    }

    public function delete($iId)
    {
        $result = $this->db->prepare('DELETE FROM Posts WHERE id = :postId LIMIT 1');
        $result->bindParam(':postId', $iId, \PDO::PARAM_INT);
        return $result->execute();
    }

}
