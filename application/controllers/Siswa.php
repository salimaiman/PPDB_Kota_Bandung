<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Siswa extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();

        $this->load->model('Siswa_Model', 'siswa');
        $this->load->model('User_Model', 'user');
        $this->load->model('Seleksi_Model', 'seleksi');
        $this->load->model('Sekolah_Model', 'sekolah');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $email = $this->session->userdata('email');
        $data['title'] = 'Data Siswa';

        $data['user'] = $this->user->getUser($email);
        $data['siswa'] = $this->siswa->getSiswa($email);
        if ($data['siswa']) {
            $data['siswa']['tgl_lahir'] = date_format(date_create($data['siswa']['tgl_lahir']), 'j F Y');
        }


        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('siswa/index', $data);
        $this->load->view('templates/footer');
    }

    public function input()
    {
        // INISIALISASI DATA USER AKTIF
        $email = $this->session->userdata('email');
        $data['title'] = 'Data Siswa';
        $data['user'] = $this->user->getUser($email);
        $data['agama'] = ['Islam', 'Katolik', 'Kristen', 'Hindu', 'Budha', 'Konghucu'];


        // FORM VALIDATION
        if (empty($_FILES['pas_foto']['name'])) {
            $this->form_validation->set_rules('pas_foto', 'Pas Foto', 'required');
        }
        $this->form_validation->set_rules('nm_lengkap', 'Nama Lengkap', 'required|trim');
        $this->form_validation->set_rules('nisn', 'NISN', 'required|trim|is_unique[data_siswa.nisn]', [
            'is_unique' => 'NISN sudah digunakan'
        ]);
        $this->form_validation->set_rules('tmp_lahir', 'Tempat Lahir', 'required|trim');
        $this->form_validation->set_rules('tgl_lahir', 'Tanggal Lahir', 'required|trim');
        $this->form_validation->set_rules('agama', 'Agama', 'required|trim|callback_valid_dropdown');
        $this->form_validation->set_rules('gender', 'Jenis Kelamin', 'required|trim');
        $this->form_validation->set_rules('nm_ortu', 'Nama Orang Tua', 'required|trim');
        $this->form_validation->set_rules('alamat_ortu', 'Alamat Orang Tua', 'required|trim');
        $this->form_validation->set_rules('nilai_un', 'Nilai UN', 'required|trim');
        $this->form_validation->set_rules('prestasi', 'Prestasi', 'required|trim');
        $this->form_validation->set_rules('sekolah_pil1', 'Sekolah Pilihan 1', 'required|trim|callback_valid_dropdown');
        $this->form_validation->set_rules('sekolah_pil2', 'Sekolah Pilihan 2', 'required|trim|callback_valid_dropdown');
        $this->form_validation->set_rules('sekolah_pil3', 'Sekolah Pilihan 3', 'required|trim|callback_valid_dropdown');
        if (empty($_FILES['bukti']['name'])) {
            $this->form_validation->set_rules('bukti', 'Dokumen', 'required');
        }


        // EKSEKUSI INPUTAN USER
        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('siswa/input', $data);
            $this->load->view('templates/footer');
        } else {

            // UPLOAD PAS FOTO
            $pas = $_FILES['pas_foto']['name'];

            if ($pas) {
                $config['allowed_types'] = 'gif|jpg|png|jpeg';
                $config['max_size'] = '5120';
                $config['upload_path'] = './assets/img/fotopas';

                $this->load->library('upload', $config);

                if ($this->upload->do_upload('pas_foto')) {

                    $img_pas_foto = $this->upload->data('file_name');
                } else {
                    echo $this->upload->display_errors();
                }
            }

            // UPLOAD BUKTI PENDAFTARAN
            $bukti = $_FILES['bukti']['name'];

            if ($bukti) {
                $config['allowed_types'] = 'gif|jpg|png|jpeg';
                $config['max_size'] = '3072';
                $config['upload_path'] = './assets/img/bukti';

                $this->load->library('upload', $config);

                if ($this->upload->do_upload('bukti')) {

                    $img_bukti = $this->upload->data('file_name');
                } else {
                    echo $this->upload->display_errors();
                }
            }

            // ARRAY DATA UNTUK DISTORE KE DB
            $data = [
                'pas_foto' => $img_pas_foto,
                'email' => $email,
                'nm_lengkap' => htmlspecialchars($this->input->post('nm_lengkap', true)),
                'nisn' => htmlspecialchars($this->input->post('nisn', true)),
                'tmp_lahir' => htmlspecialchars($this->input->post('tmp_lahir', true)),
                'tgl_lahir' => $this->input->post('tgl_lahir'),
                'agama' => htmlspecialchars($this->input->post('agama', true)),
                'asal_sekolah' => htmlspecialchars($this->input->post('asal_sekolah', true)),
                'gender' => $this->input->post('gender', true),
                'nm_ortu' => htmlspecialchars($this->input->post('nm_ortu', true)),
                'alamat_ortu' => htmlspecialchars($this->input->post('alamat_ortu', true)),
                'nilai_un' => htmlspecialchars($this->input->post('nilai_un', true)),
                'prestasi' => htmlspecialchars($this->input->post('prestasi', true)),
                'id_sekolah1' => $this->input->post('sekolah_pil1'),
                'id_sekolah2' => $this->input->post('sekolah_pil2'),
                'id_sekolah3' => $this->input->post('sekolah_pil3'),
                'bukti' => $img_bukti
            ];

            // STORE DATA
            $this->siswa->tambahSiswa($data);

            for ($i = 1; $i <= 3; $i++) {
                $data_seleksi = [
                    'id_sekolah' => $this->input->post('sekolah_pil' . $i),
                    'nisn' => $this->input->post('nisn')
                ];

                $this->db->insert('data_seleksi', $data_seleksi);
            }

            // MESSAGE DAN REDIRECT
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Data anda berhasil disimpan!</div>');
            redirect('siswa');
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

    public function cetak()
    {

        $email = $this->session->userdata('email');
        $data['title'] = 'Cetak Bukti Pendaftaran';

        $data['user'] = $this->user->getUser($email);
        $data['siswa'] = $this->siswa->getSiswa($email);
        if ($data['siswa']) {
            $data['siswa']['tgl_lahir'] = date_format(date_create($data['siswa']['tgl_lahir']), 'j F Y');
        }

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('siswa/cetak', $data);
        $this->load->view('templates/footer');
    }

    public function print()
    {
        // panggil library yang kita buat sebelumnya yang bernama pdfgenerator
        $this->load->library('pdf');

        $email = $this->session->userdata('email');
        $this->data['title_pdf'] = 'Bukti Pendaftaran';
        $this->data['siswa'] = $this->siswa->getSiswa($email);
        $this->data['siswa']['tgl_lahir'] = date_format(date_create($this->data['siswa']['tgl_lahir']), 'd/m/Y');


        // filename dari pdf ketika didownload
        $file_pdf = 'bukti-pendaftaran-' . $this->data['siswa']['nm_lengkap'];
        // setting paper
        $paper = 'A4';
        //orientasi paper potrait / landscape
        $orientation = "portrait";

        $html = $this->load->view('siswa/bukti_pdf', $this->data, true);

        // run dompdf
        $this->pdf->generate($html, $file_pdf, $paper, $orientation);
    }

    public function hasil()
    {
        $email = $this->session->userdata('email');
        $deadline = $this->db->get('data_deadline')->row_array();
        $deadline = $deadline['deadline'];

        $data['title'] = 'Hasil Seleksi';
        $data['user'] = $this->user->getUser($email);
        $data['siswa'] = $this->siswa->getSiswa($email);

        // CEK KELULUSAN SISWA
        for ($i = 1; $i <= 3; $i++) {
            $id_sekolah = $data['siswa']['id_sekolah' . $i];
            $kuota = $this->seleksi->getKuota($id_sekolah);
            $sma = $this->seleksi->getPerSekolah($id_sekolah, $kuota);
            $data['status_sma' . $i] = (array_search($data['siswa']['nisn'], array_column($sma, 'nisn'))) ? 1 : 0;
        }

        $data['deadline'] = date('Y-m-d') > $deadline;
        $data['message'] = (date('Y-m-d') > $deadline) ? '<div class="alert alert-success" role="alert">
        Data berikut adalah hasil akhir seleksi!</div>' : '<div class="alert alert-danger" role="alert">
        Data berikut belum merupakan data hasil akhir seleksi<br>Data dapat berubah sewaktu-waktu!</div>';


        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('siswa/hasil', $data);
        $this->load->view('templates/footer');
    }
}
