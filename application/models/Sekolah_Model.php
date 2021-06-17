<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Sekolah_model extends CI_Model
{
    public function getUser($email = false)
    {
        if ($email == false) {
            return $this->db->get('user_sekolah')->result_array();
        }

        return $this->db->get_where('user_sekolah', ['email' => $email])->row_array();
    }

    public function getSekolah($email = false)
    {
        if ($email == false) {
            $this->db->order_by('id');
            return $this->db->get('data_sekolah')->result_array();
        }

        return $this->db->get_where('data_sekolah', ['email' => $email])->row_array();
    }

    public function getSekolahLimit($limit, $start, $filter, $keyword = null,)
    {
        if ($keyword != null) {
            $this->db->like($filter, $keyword);
        }
        return $this->db->get('data_sekolah', $limit, $start)->result_array();
    }

    public function getSekolahById($id)
    {
        return $this->db->get_where('data_sekolah', ['id' => $id])->row_array();
    }

    public function getKecamatan()
    {
        $kecamatan = [
            'Andir', 'Antapani', 'Ujung Berung', 'Babakan Ciparay', 'Bandung Wetan', 'Bojongloa Kaler', 'Buahbatu', 'Cibiru', 'Cicendo', 'Cibeunying Kidul', 'Coblong', 'Gedebage', 'Kiaracondong', 'Lengkong', 'Rancasari', 'Regol', 'Sukajadi', 'Sukasari', 'Sumur Bandung', 'Ujung Berung'
        ];

        return $kecamatan;
    }

    public function countSekolah($keyword)
    {
        if ($keyword != null) {
            $this->db->like('nama', $keyword);
        }
        return $this->db->get('data_sekolah')->num_rows();
    }


    // CRUD
    public function updateSekolah($data)
    {
        $email = $data['email'];
        $this->db->update('data_sekolah', $data, ['email' => $email]);
    }

    public function tambahSekolah($data)
    {
        $this->db->insert('data_sekolah', $data);
    }

    public function deleteSekolah($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('data_sekolah');
    }
}
