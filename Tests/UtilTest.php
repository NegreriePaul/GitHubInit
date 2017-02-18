<?php

  namespace Tests\Core;

  use PHPUnit\Framework\TestCase;
  use GitHubInit\Core\Util;

  class UtilTest extends TestCase {

    public function testCreateLogExist() {
      Util::createLogExist();
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
      Util::purgeLog();
      $this->assertFileExists('logs/*.zip', 'Erreur il n\'existe aucun fichier de log zippé.');
    }

  }
