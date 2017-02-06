<?php

namespace GitHubInit\Core;

  class Database {

    private $db;
    private $table;
    private $columns = [];

    public function __construct() {
      try {
        $this->setDb();
      } catch( Exception $e ) {
        die("Erreur SQL : ".$e->getMessage());
      }

      // $this->setTable();
      // $this->setColumns();
    }

    // Insert or Update en BDD
    public function save() {
      if($this->getId() === -1) {
        $sqlCol = null;
        $sqlKey = null;
        $this->unsetColumn('id');
        foreach ($this->getColumns() as $column => $value) {
          $data[$column] = $this->$column;
          $sqlCol .= ','.$column;
          $sqlKey .= ',:'.$column;
        }
        print_r($data);
        $query = $this->getDb()->prepare( 'INSERT INTO '. $this->getTable(). '('.
        trim($sqlCol, ','). ') VALUES ( '. trim($sqlKey, ',') . ');');
        $query->execute($data);
      } else {
        $sqlCol = null;
        foreach ($this->getColumns() as $column => $value) {
          $data[$column] = $this->$column;
          $sqlCol[] .= $column.':='.$column;
        }
        $query = $this->getDb()->prepare( 'UPDATE '. $this->getTable(). ' SET ('.
        implode(',', $sqlCol). ') WHERE ( id=:id );');
        $query->execute($data);
      }
    }

    public function populate() {
      // Charge un objet vide a partir d'un élément du tableau
      // Penser au Duplicata dans la BDD
    }

    protected function setDb() {
      $this->db = new PDO( DB_DRIVER.":host=".DB_HOST.";port=".DB_PORT.";dbname=".DB_NAME, DB_USER, DB_PWD );
      $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    protected function getDb() {
      return $this->db;
    }

    protected function getTable() {
      return $this->table;
    }

    protected function setTable() {
      // Récupérer le nom de la table dynamiquement
      $this->table = DB_PREFIX.strtolower(get_class($this));
    }

    protected function getColumns() {
      return $this->columns;
    }

    protected function setColumns() {
      // Récupérer le nom des colonnes de la table dynamiquement
      $this->columns = array_diff_key(get_class_vars(get_class($this)),
        get_class_vars(get_parent_class($this)));
    }

    protected function unsetColumn($column) {
      unset($this->columns[$column]);
    }

  }
