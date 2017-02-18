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

}
