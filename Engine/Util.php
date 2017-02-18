<?php

namespace TestProject\Engine;

class Util
{
    public function getView($viewName)
    {
        $this->_get($viewName, 'View');
    }

    public function getModel($modelName)
    {
        $this->_get($modelName, 'Model');
    }

    /**
     * This method is useful in order to avoid the duplication of code (create almost the same method for "getView" and "getModel"
     */
    private function _get($fileName, $sType)
    {
        $fullPath = ROOT_PATH . $sType . '/' . $fileName . '.php';
        if (is_file($fullPath))
            require $fullPath;
        else
            exit('The "' . $fullPath . '" file doesn\'t exist');
    }

    /**
     * Set variables for the template views.
     */
    public function __set($key, $val)
    {
        $this->$key = $val;
    }

    // Easy Var Debug
    public static function debugVar($var)
    {
      echo "<pre>";
        print_r($var);
      echo "</pre>";
    }

    /**
     * Verify if the log directory exist and if the log file exist
     * To launch Before any Script execution
     */
    public static function createLogExist()
    {
      if( !is_dir('logs') )
      {
        mkdir('logs');
      }
      if( !file_exists("logs/log.txt") )
      {
        log("***/!\ This is the log File /!\***");
      }
    }

    // Safe logging writing
    public static function log($msg)
    {
      $logFile = fopen('logs/log.txt', 'a');
      // Locking file to be the only One
      if( flock($logFile, LOCK_EX) !== false )
      {
        try {
          // Writing, unlocking and closing file
          fwrite($logFile, 'At '.date("d-m-Y").' : ');
          fwrite($logFile, $msg);
          fwrite($logFile, "\n");
          flock($logFile, LOCK_UN);
          fclose($logFile);
        } catch (Exception $e) {
          die('Erreur : '.$e->getMessage());
        }
      }
    }

    // CRON function who zip logfile for storage purpose
    // Limit Size : 5Mb
    public static function purgeLog()
    {
      if( filesize("logs/log.txt") > 5242880 )
      {
        $zip = new ZipArchive();
        $zip->open("log_".date("d-m-Y"), ZipArchive::CREATE);
        $zip->close();
      }
    }


}
