<?php

 namespace GitHubInit\Core;

  class Helpers {

    // Easy Var Debug
    public static function debugVar($var) {
      echo "<pre>";
        print_r($var);
      echo "</pre>";
    }

    /**
     * Verify if the log directory exist and if the log file exist
     * To launch Before any Script execution
     * @before AnyFunction()
     */
    public static function createLogExist() {
      if( !is_dir('logs') ) {
        mkdir('logs');
      }
      if( !is_file("logs/log.txt") ) {
        $this->log("***/!\ This is the log File /!\***");
      }
    }

    // Safe logging writing
    public static function log($msg) {
      $logFile = fopen("log.txt", "a");
      // Locking file to be the only One
      if( flock($logFile, LOCK_EX) !== false ) {
        try {
          // Writing, unlocking and closing file
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

    // CRON function who zip logfile for storage purpose
    // Limit Size : 5Mb
    public static function purgeLog() {
      if( filesize("logs/log.txt") > 5242880 ) {
        $zip = new ZipArchive();
        $zip->open("log_".date("d-m-Y"), ZipArchive::CREATE);
        $zip->close();
      }
    }

  }
