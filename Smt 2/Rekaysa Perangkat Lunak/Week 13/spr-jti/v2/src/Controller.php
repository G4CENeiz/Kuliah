<?php

require_once "Model.php";
require_once "entity/Peminjaman.php";

class Controller {

    private $_model;

    public function __construct()
    {
        $this->_model = new Model();
    }

    public function index()
    {
        if (isset($_POST['submit']))
        {
            $peminjaman = new Peminjaman($_POST);

            $this->_model->insertOne($peminjaman);
        }
        return $this->_model->readData();
    }

    public static function displayError()
    {
        error_reporting(E_ALL);
        ini_set("display_errors", 1);
    }
}