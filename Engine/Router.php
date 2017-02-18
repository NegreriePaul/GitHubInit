<?php

namespace TestProject\Engine;

class Router
{
    public static function run (array $params)
    {
        $namespace = 'TestProject\Controller\\';
        $defCtrl = $namespace . 'Blog';
        $ctrlPath = ROOT_PATH . 'Controller/';
        $ctrl = ucfirst($params['ctrl']);

        if (is_file($ctrlPath . $ctrl . '.php'))
        {
            $ctrl = $namespace . $ctrl;
            $ctrl = new $ctrl;

            if ((new \ReflectionClass($ctrl))->hasMethod($params['act']) && (new \ReflectionMethod($ctrl, $params['act']))->isPublic())
                call_user_func(array($ctrl, $params['act']));
            else
                call_user_func(array($ctrl, 'notFound'));
        }
        else
        {
            call_user_func(array(new $defCtrl, 'notFound'));
        }
    }

}
