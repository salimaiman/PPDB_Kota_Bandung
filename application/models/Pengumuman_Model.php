<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pengumuman_model extends CI_Model
{
    public function getPengumuman($id = false)
    {
        if ($id) {
            return $this->db->get_where('data_pengumuman', ['id' => $id])->row_array();
        }

        return $this->db->get('data_pengumuman')->result_array();
    }

    // CRUD
    public function tambahPengumuman($data)
    {
        $this->db->insert('data_pengumuman', $data);
    }
}
