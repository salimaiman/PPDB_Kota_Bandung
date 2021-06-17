<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Siswa_model extends CI_Model
{
    // CRUD

    public function cekData($email)
    {
        $query = $this->db->get_where('data_siswa', ['email' => $email]);

        if ($query->num_rows() > 0) {
            return true;
        }

        return false;
    }

    public function getSiswa($email = false)
    {
        if ($email == false) {
            return $this->db->get('data_siswa')->result_array();
        }

        return $this->db->get_where('data_siswa', ['email' => $email])->row_array();
    }

    public function getSiswaById($id)
    {
        return $this->db->get_where('data_siswa', ['id' => $id])->row_array();
    }

    public function getSiswaLimit($limit, $start, $filter, $keyword = null,)
    {
        if ($keyword != null) {
            $this->db->like($filter, $keyword);
        }
        return $this->db->get('data_siswa', $limit, $start)->result_array();
    }


    public function updateSiswa($data)
    {
        $email = $data['email'];
        $this->db->update('data_siswa', $data, ['email' => $email]);
    }

    public function tambahSiswa($data)
    {
        $this->db->insert('data_siswa', $data);
    }

    public function deleteSiswa($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('data_siswa');
    }
}
