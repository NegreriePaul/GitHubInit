<?php

namespace TestProject\Controller;

class Blog
{

    protected $util, $model;
    private $id;

    public function __construct()
    {
        // Enable PHP Session
        if (empty($_SESSION))
            @session_start();

        $this->util = new \TestProject\Engine\Util;

        /** Get the Model class in all the controller class **/
        $this->util->getModel('Blog');
        $this->model = new \TestProject\Model\Blog;

        /** Get the Post ID in the constructor in order to avoid the duplication of the same code **/
        $this->id = (int) (!empty($_GET['id']) ? $_GET['id'] : 0);
    }


    /***** Front end *****/
    // Homepage
    public function index()
    {
        $this->util->posts = $this->model->get(0, 5); // Get only the latest 5 posts

        $this->util->getView('index');

    }

    public function post()
    {
        $this->util->post = $this->model->getById($this->id); // Get the data of the post

        $this->util->getView('post');
    }

    public function notFound()
    {
        $this->util->getView('not_found');
    }


    /***** For Admin (Back end) *****/
    public function all()
    {
        if (!$this->isLogged()) exit;

        $this->util->posts = $this->model->getAll();

        $this->util->getView('index');
    }


    public function add()
    {
        if (!$this->isLogged()) exit;

        if (!empty($_POST['add_submit']))
        {
            if (isset($_POST['title'], $_POST['body']) && mb_strlen($_POST['title']) <= 50) // Allow a maximum of 50 characters
            {
                $data = array('title' => $_POST['title'], 'body' => $_POST['body'], 'created_date' => date('Y-m-d H:i:s'));

                if ($this->model->add($data))
                    $this->util->messageSuccess = 'Hurray!! The post has been added.';
                else
                    $this->util->errorMsg = 'Oops! An error has occurred! Please try again later.';
            }
            else
            {
                $this->util->errorMsg = 'All fields are required and the title cannot exceed 50 characters.';
            }
        }

        $this->util->getView('add_post');
    }

    public function edit()
    {
        if (!$this->isLogged()) exit;

        if (!empty($_POST['edit_submit']))
        {
            if (isset($_POST['title'], $_POST['body']))
            {
                $data = array('post_id' => $this->id, 'title' => $_POST['title'], 'body' => $_POST['body']);

                if ($this->model->update($data))
                    $this->util->messageSuccess = 'Hurray! The post has been updated.';
                else
                    $this->util->errorMsg = 'Oops! An error has occurred! Please try again later';
            }
            else
            {
                $this->util->errorMsg = 'All fields are required.';
            }
        }

        /* Get the data of the post */
        $this->util->post = $this->model->getById($this->id);

        $this->util->getView('edit_post');
    }

    public function delete()
    {
        if (!$this->isLogged()) exit;

        if (!empty($_POST['delete']) && $this->model->delete($this->id))
            header('Location: ' . ROOT_URL);
        else
            exit('Oops! Post cannot be deleted.');
    }

    protected function isLogged()
    {
        return !empty($_SESSION['is_logged']);
    }

}
