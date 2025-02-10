<?php

require_once 'Entity.php';

class Peminjaman extends Entity
{
    private $_namaPeminjam;
    private $_unitKerja;
    private $_tanggalPeminjaman;
    private $_lamaPeminjaman;
    private $_ruanganYangDipinjam;
    private $_lantai;

    public function __construct($post)
    {
        $this->_namaPeminjam        = $post['nama_peminjam'];
        $this->_unitKerja           = $post['unit_kerja'];
        $this->_tanggalPeminjaman   = $post['tanggal_peminjaman'];
        $this->_lamaPeminjaman      = $post['lama_peminjaman'];
        $this->_ruanganYangDipinjam = $post['ruangan_yang_dipinjam'];
        $this->_lantai              = $post['lantai'];
    }

    public function toArray()
    {
        return [
            'nama_peminjam'         => $this->_namaPeminjam,
            'unit_kerja'            => $this->_unitKerja,
            'tanggal_peminjaman'    => $this->_tanggalPeminjaman,
            'lama_peminjaman'       => $this->_lamaPeminjaman,
            'ruangan_yang_dipinjam' => $this->_ruanganYangDipinjam,
            'lantai'                => $this->_lantai
        ];
    }
}