<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pengumuman extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();

        $this->load->model('User_Model', 'user');
        $this->load->model('Seleksi_Model', 'seleksi');
        $this->load->model('Sekolah_Model', 'sekolah');
        $this->load->model('Pengumuman_Model', 'pengumuman');
    }

    public function index()
    {
        $email = $this->session->userdata('email');
        $data['title'] = 'Pengumuman';
        $data['user'] = ($this->user->getUser($email)) ? $this->user->getUser($email) : $this->sekolah->getUser($email);
        $data['pengumuman'] = $this->pengumuman->getPengumuman();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pengumuman/index', $data);
        $this->load->view('templates/footer');
    }

    public function detailpengumuman($id)
    {
        $email = $this->session->userdata('email');
        $data['title'] = 'Pengumuman';
        $data['user'] = ($this->user->getUser($email)) ? $this->user->getUser($email) : $this->sekolah->getUser($email);
        $data['pengumuman'] = $this->pengumuman->getPengumuman($id);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pengumuman/detail', $data);
        $this->load->view('templates/footer');
    }

    public function perSekolah()
    {
        $id_sekolah = $this->input->post('id_sekolah');
        $kuota = $this->seleksi->getKuota($id_sekolah);
        $deadline = $this->db->get('data_deadline')->row_array();
        $deadline = $deadline['deadline'];

        $email = $this->session->userdata('email');
        $data['title'] = 'Kelulusan Tiap Sekolah';
        $data['user'] = ($this->user->getUser($email)) ? $this->user->getUser($email) : $this->sekolah->getUser($email);
        $data['siswa'] = $this->seleksi->getPerSekolah($id_sekolah, $kuota);
        $data['message'] = (date('Y-m-d') > $deadline) ? '<div class="alert alert-success" role="alert">
        Data berikut adalah hasil akhir seleksi!</div>' : '<div class="alert alert-danger" role="alert">
        Data berikut belum merupakan data hasil akhir seleksi<br>Data dapat berubah sewaktu-waktu!</div>';

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pengumuman/per_sekolah', $data);
        $this->load->view('templates/footer');
    }
}
