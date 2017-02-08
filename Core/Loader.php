<?php

  namespace GitHubInit\Core;

  // First, include necessary Pattern classes
  require_once __DIR__ . '/Pattern/Base.trait.php';
  require_once __DIR__ . '/Pattern/Singleton.trait.php';

  class Loader {

    use \GitHubInit\Core\Pattern\Singleton;

    public function init() {
      // Register the loader method
      spl_autoload_register(array(__CLASS__, '_loadClasses'));
    }

    // Class Loader
    private function _loadClasses($class) {
      // Remove namespace and backslash
      $sClass = str_replace(array(__NAMESPACE__, 'GitHubInit', '\\'), '/', $class);
      if (is_file(__DIR__ . '/' . $class . '.php'))
        require_once __DIR__ . '/' . $class . '.php';
      if (is_file(ROOT_PATH . $class . '.php'))
        require_once ROOT_PATH . $class . '.php';
    }

  }
