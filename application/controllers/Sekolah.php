<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Sekolah extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->model('Siswa_Model', 'siswa');
        $this->load->model('User_Model', 'user');
        $this->load->model('Sekolah_Model', 'sekolah');
        $this->load->model('Seleksi_Model', 'seleksi');
        $this->load->library('form_validation');
        is_logged_in();
    }

    public function index()
    {

        $email = $this->session->userdata('email');
        $data['title'] = 'Data Sekolah';

        $data['user'] = $this->sekolah->getUser($email);
        $data['sekolah'] = $this->sekolah->getSekolah($email);


        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('sekolah/index', $data);
        $this->load->view('templates/footer');
    }

    public function input()
    {
        // INISIALISASI DATA USER AKTIF
        $email = $this->session->userdata('email');
        $data['title'] = 'Data Sekolah';
        $data['user'] = $this->sekolah->getUser($email);
        $data['kecamatan'] = $this->sekolah->getKecamatan();
        $data['akreditasi'] = ['A', 'B', 'C'];


        // FORM VALIDATION
        $this->form_validation->set_rules('nama', 'Nama Sekolah', 'required|trim');
        $this->form_validation->set_rules('npsn', 'NPSN', 'required|trim|is_unique[data_sekolah.npsn]', [
            'is_unique' => 'NPSN sudah digunakan'
        ]);
        $this->form_validation->set_rules('alamat', 'Alamat', 'required|trim');
        $this->form_validation->set_rules('kecamatan', 'Kecamatan', 'required|trim|callback_valid_dropdown');
        $this->form_validation->set_rules('telepon', 'Telepon', 'required|trim|min_length[4]|max_length[12]');
        $this->form_validation->set_rules('website', 'Website', 'required|trim');
        $this->form_validation->set_rules('akreditasi', 'Nilai Akreditasi Sekolah', 'required|trim|callback_valid_dropdown');
        $this->form_validation->set_rules('kuota', 'Kuota', 'required|trim', [
            'required' => 'Kuota harus diisi'
        ]);
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required|trim');

        // EKSEKUSI INPUTAN USER
        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('sekolah/input', $data);
            $this->load->view('templates/footer');
        } else {

            // ARRAY DATA UNTUK DISTORE KE DB
            $data = [
                'email' => $email,
                'nama' => htmlspecialchars($this->input->post('nama', true)),
                'npsn' => htmlspecialchars($this->input->post('npsn', true)),
                'alamat' => htmlspecialchars($this->input->post('alamat', true)),
                'kecamatan' => $this->input->post('kecamatan'),
                'telepon' => $this->input->post('telepon', true),
                'website' => htmlspecialchars($this->input->post('website', true)),
                'akreditasi' => htmlspecialchars($this->input->post('akreditasi', true)),
                'kuota' => $this->input->post('kuota', true),
                'deskripsi' => $this->input->post('deskripsi')
            ];

            // STORE DATA
            $this->sekolah->tambahSekolah($data);

            // MESSAGE DAN REDIRECT
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Data sekolah berhasil disimpan!</div>');
            redirect('sekolah');
        }
    }

    public function valid_dropdown($pil)
    {
        if ($pil == '0') {
            $this->form_validation->set_message('valid_dropdown', 'Field harus dipilih!');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    public function lihatSiswa()
    {
        // INISIALISASI DATA USER AKTIF
        $email = $this->session->userdata('email');
        $data['title'] = 'Lihat Data Siswa';
        $data['user'] = $this->sekolah->getUser($email);

        $id_sekolah = $data['user']['id'];
        $kuota = $this->seleksi->getKuota($id_sekolah);
        $deadline = $this->db->get('data_deadline')->row_array();
        $deadline = $deadline['deadline'];

        $email = $this->session->userdata('email');
        $data['siswa'] = $this->seleksi->getPerSekolah($id_sekolah, $kuota);
        $data['message'] = (date('Y-m-d') > $deadline) ? '<div class="alert alert-success" role="alert">
        Data berikut adalah hasil akhir seleksi!</div>' : '<div class="alert alert-danger" role="alert">
        Data berikut belum merupakan data hasil akhir seleksi<br>Data dapat berubah sewaktu-waktu!</div>';

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('sekolah/lihat_siswa', $data);
        $this->load->view('templates/footer');
    }
}
