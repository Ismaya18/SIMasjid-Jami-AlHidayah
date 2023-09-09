<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelDataAdmin;

class DataAdmin extends BaseController
{

    public function __construct()
    {
        $this->ModelDataAdmin = new ModelDataAdmin();
    }

    public function index()
    {
        $data = [
            'judul'   => 'Admin',
            'menu'    => 'data-admin',
            'submenu' => '',
            'page'    => 'v_data_admin',
            'admin'    => $this->ModelDataAdmin->AllData(),
        ];
        return view('v_template_admin', $data);
    }

    public function InsertData()
    {
        $data = [
            'nama_admin' => $this->request->getPost('nama_admin'),
            'email'     => $this->request->getPost('email'),
            'password'  => $this->request->getPost('password'),
            'level'     => $this->request->getPost('level'),
        ];
        $this->ModelDataAdmin->InsertData($data);
        session()->setFlashdata('pesan', 'Data Berhasil Ditambahkan !');
        return redirect()->to(base_url('DataAdmin'));
    }

    public function UpdateData($id_admin)
    {
        $data = [
            'id_admin'       => $id_admin,
            'nama_admin' => $this->request->getPost('nama_admin'),
            'email'     => $this->request->getPost('email'),
            'password'  => $this->request->getPost('password'),
            'level'     => $this->request->getPost('level'),
        ];
        $this->ModelDataAdmin->UpdateData($data);
        session()->setFlashdata('pesan', 'Data Berhasil Diubah !');
        return redirect()->to(base_url('DataAdmin'));
    }

    public function DeleteData($id_admin)
    {
        $data = [
            'id_admin'     => $id_admin,
        ];
        $this->ModelDataAdmin->DeleteData($data);
        session()->setFlashdata('pesan', 'Data Berhasil Dihapus !');
        return redirect()->to(base_url('DataAdmin'));
    }
}
