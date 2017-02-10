<?php

  namespace Tests\Core;

  use PHPUnit\Framework\TestCase;
  use Core\Helpers;

  class HelpersTest extends TestCase {

    public function testCreateLogExist() {
      Helpers::createLogExist();
      $this->assertDirectoryExists('logs/', 'Erreur le dossier logs n\'à pas été créé.');
      $this->assertFileExists('logs/log.txt', 'Erreur le fichier logs.txt n\'à pas été créé.');
      $this->assertFileIsReadable('logs/log.txt', 'Erreur de droits de lecture.');
      $this->assertFileIsWritable('logs/log.txt', 'Erreur de droits d\'écriture.');
    }

    // Testing if the logging functions work properly
    // public function testLog() {
    //   $msg = '***/!\ This is an ERROR  /!\***';
    //   Helpers::log($msg);
    // }

    public function testPurgeLog() {
      Helpers::purgeLog();
      $this->assertFileExists('logs/*.zip', 'Erreur il n\'existe aucun fichier de log zippé.');
    }

  }
