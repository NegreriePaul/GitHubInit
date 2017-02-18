<?php

namespace TestProject\Engine\Pattern;

trait Singleton
{

    use Base;

    protected static $instance = null;

    /**
     * Get instance of class.
     *
     * @access public
     * @static
     * @return object Return the instance class or create first instance of the class.
     */
    public static function getInstance()
    {
        return (null === static::$instance) ? static::$instance = new static : static::$instance;
    }

}

