<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User_model extends CI_Model
{
    public function getUser($email = false)
    {
        if ($email == false) {
            return $this->db->get('user')->result_array();
        }

        return $this->db->get_where('user', ['email' => $email])->row_array();
    }

    public function updateUser($data)
    {
        $email = $data['email'];

        $this->db->where('email', $email);
        $this->db->update('user', $data);
    }

    public function getSekolah($email = false)
    {
        if ($email == false) {
            return $this->db->get('data_sekolah');
        }

        return $this->db->get_where('data_sekolah', ['email' => $email]);
    }

    public function getAdmin($email = false)
    {
        return $this->db->get_where('data_admin', ['email' => $email]);
    }
}
