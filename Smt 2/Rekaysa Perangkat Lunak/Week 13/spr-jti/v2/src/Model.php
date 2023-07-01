<?php

require_once "entity/Peminjaman.php";

class Model
{
    private $_file;

    public function __construct()
    {
        $this->_file = 'assets/data.txt';
        if(!file_exists($this->_file))
            file_put_contents($this->_file, serialize([]));
    }

    public function writeData($data)
    {
        file_put_contents($this->_file, serialize($data));
    }

    public function readData()
    {
        $fileContents = file_get_contents($this->_file);
        return unserialize($fileContents);
    }

    public function insertOne(Entity $entity) {
        $existing = $this->readData();
        $existing[] = $entity->toArray();
        $this->writeData($existing);
    }
}