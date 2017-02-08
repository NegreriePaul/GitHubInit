<?php

 namespace GitHubInit\Core;

  class Helpers {

    public function getView($sViewName) {
      $this->_get($sViewName, 'View');
    }

    public function getModel($sModelName) {
      $this->_get($sModelName, 'Model');
    }
    /**
     * This method is useful in order to avoid the duplication of
     * code (create almost the same method for "getView" and "getModel"
     */
    private function _get($sFileName, $sType) {
      $sFullPath = ROOT_PATH . $sType . '/' . $sFileName . '.php';
      if (is_file($sFullPath))
        require $sFullPath;
      else
        exit('The "' . $sFullPath . '" file doesn\'t exist');
    }

    /**
     * Set variables for the template views.
     *
     * @return void
     */
    public function __set($sKey, $mVal) {
      $this->$sKey = $mVal;
    }

    public static function debugVar($var) {
      echo "<pre>";
        print_r($var);
      echo "</pre>";
    }

    // Verification en amont de l'existance d'un fichier et d'un dossier de log
    // A lancer a chaque execution de script
    public static function createLogExist() {
      if( !is_dir('logs') ) {
        mkdir('logs');
      }
      if( !is_file("logs/log.txt") ) {
        $this->log("***/!\ This is the log File /!\***");
      }
    }

    // Ecriture au sein de ce fichier du contenu de $msg
    public static function log($msg) {
      // Ouverture du fichier
      $logFile = fopen("log.txt", "a");
      // Lock du fichier pour etre du sur d'être le seul à écrire dedans
      if( flock($logFile, LOCK_EX) !== false ) {
        try {
          // Ecriture Unlock et fermeture du fichier
          fwrite($logFile, 'At : '.date("d-m-Y"));
          fwrite($logFile, '\n');
          fwrite($logFile, $msg);
          fwrite($logFile, '\n');
          fwrite($logFile, PHP_EOF);
          flock($logFile, LOCK_UN);
          fclose($logFile);
        } catch (Exception $e) {
          die("Erreur : ".$e->getMessage());
        }
      }
    }

    // Coder la fonction mais ne l'appelez pas, on passera par un CRON
    // Taille limite : 5Mb
    // A archiver
    public static function purgeLog() {
      if( filesize("logs/log.txt") > 5242880 ) {
        $zip = new ZipArchive();
        $zip->open("log_".date("d-m-Y"), ZipArchive::CREATE);
        $zip->close();
      }
    }

  }
