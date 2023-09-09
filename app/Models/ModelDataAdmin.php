<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelDataAdmin extends Model
{
    public function AllData()
    {
        return $this->db->table('tbl_admin')
            ->get()->getResultArray();
    }

    public function InsertData($data)
    {
        $this->db->table('tbl_admin')->insert($data);
    }

    public function UpdateData($data)
    {
        $this->db->table('tbl_admin')
            ->where('id_admin', $data['id_admin'])
            ->update($data);
    }

    public function DeleteData($data)
    {
        $this->db->table('tbl_admin')
            ->where('id_admin', $data['id_admin'])
            ->delete($data);
    }
}
