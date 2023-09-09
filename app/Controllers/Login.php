<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelLogin;

class Login extends BaseController
{

    public function __construct()
    {
        $this->ModelLogin = new ModelLogin();
    }

    public function index()
    {
        $data = [
            'judul'         => 'Login',
            'validation'    => \Config\Services::validation(),
        ];
        return view('v_login', $data);
    }

    public function CekLogin()
    {
        if ($this->validate([
            'email' => [
                'label'     => 'E-Mail',
                'rules'     => 'required',
                'errors'    => [
                    'required'  => '{field} Belum Diisi !',
                ]
            ],
            'password' => [
                'label'     => 'Password',
                'rules'     => 'required',
                'errors'    => [
                    'required'  => '{field} Belum Diisi !',
                ]
            ]
        ])) {
            $email = $this->request->getPost('email');
            $password = $this->request->getPost('password');
            $CekLogin = $this->ModelLogin->CekUser($email, $password);

            if ($CekLogin) {
                session()->set('nama_admin', $CekLogin['nama_admin']);
                session()->set('level', $CekLogin['level']);
                return redirect()->to(base_url('Admin'));
            } else {
                session()->setFlashdata('gagal', 'Email atau Password Salah !');
                return redirect()->to(base_url('Login'));
            }
        } else {
            session()->setFlashdata('errors', \Config\Services::validation()->getErrors());
            return redirect()->to(base_url('Login'))->withInput('validation', \Config\Services::validation());
        }
    }

    public function LogOut()
    {
        session()->remove('nama_admin');
        session()->remove('level');
        session()->setFlashdata('pesan', 'Anda Berhasil LogOut !');
        return redirect()->to(base_url('Login'));
    }
}
