<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Seleksi_model extends CI_Model
{
    public function getKuota($id_sekolah)
    {
        if ($id_sekolah != null) {
            $query = "SELECT kuota FROM data_sekolah WHERE id = '$id_sekolah'";
            $result = $this->db->query($query)->row_array();
            return $result['kuota'];
        }

        return 1000;
    }

    public function getPerSekolah($id_sekolah, $kuota)
    {
        $kuota = (int)$kuota;

        $query = "SELECT data_seleksi.*, data_siswa.nm_lengkap, data_siswa.asal_sekolah, data_siswa.nilai_un
                    FROM data_seleksi
                    JOIN data_siswa ON data_seleksi.nisn = data_siswa.nisn
                    WHERE data_seleksi.id_sekolah = '$id_sekolah'
                ORDER BY data_siswa.nilai_un DESC
                   LIMIT $kuota
                  ";

        return $this->db->query($query)->result_array();
    }
}
