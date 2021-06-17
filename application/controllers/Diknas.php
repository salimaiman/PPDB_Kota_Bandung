<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Diknas extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->model('Siswa_Model', 'siswa');
        $this->load->model('User_Model', 'user');
        $this->load->model('Sekolah_Model', 'sekolah');
        $this->load->model('Pengumuman_Model', 'pengumuman');
        $this->load->model('Seleksi_Model', 'seleksi');
        $this->load->library('form_validation');
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

    public function kelolaSiswa()
    {
        $email = $this->session->userdata('email');
        $data['title'] = 'Kelola Data Siswa';
        $data['user'] = $this->db->get_where('user', ['email' => $email])->row_array();

        // SEARCHING
        // ambil data keyword
        if ($this->input->post('keyword')) {
            $data['keyword'] = $this->input->post('keyword');
            $this->session->set_userdata('keyword', $data['keyword']);
        } else {
            $data['keyword'] = $this->session->userdata('keyword');
        }

        // ambil data filter
        if ($this->input->post('filter')) {
            $data['filter'] = $this->input->post('filter');
            $this->session->set_userdata('filter', $data['filter']);
        } else {
            $data['filter'] = ($this->session->userdata('filter')) ? $this->session->userdata('filter') : 'nm_lengkap';
        }

        // PAGINATION
        // config
        $config['base_url'] = base_url('diknas/kelolasiswa');

        // total rows
        $this->db->like($data['filter'], $data['keyword']);
        $this->db->from('data_siswa');
        $config['total_rows'] = $this->db->count_all_results();
        $config['per_page'] = 5;

        // initialize
        $this->pagination->initialize($config);

        // Data Sekolah
        $data['start'] = $this->uri->segment(3);
        $data['siswa'] = $this->siswa->getSiswaLimit($config['per_page'], $data['start'], $data['filter'], $data['keyword']);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('diknas/siswa/kelola_siswa', $data);
        $this->load->view('templates/footer');
    }

    public function detailSiswa($id)
    {
        $email = $this->session->userdata('email');
        $data = [
            'title' => 'Detail Data Siswa',
            'user' => $this->db->get_where('user', ['email' => $email])->row_array(),
            'siswa' => $this->siswa->getSiswaById($id)
        ];
        $data['siswa']['tgl_lahir'] = date_format(date_create($data['siswa']['tgl_lahir']), 'j F Y');

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('diknas/siswa/detail_siswa', $data);
        $this->load->view('templates/footer');
    }

    public function editSiswa($id)
    {
        $email = $this->session->userdata('email');
        $data['title'] = 'Data Siswa';
        $data['user'] = $this->user->getUser($email);
        $data['siswa'] = $this->siswa->getSiswaById($id);
        $data['agama'] = ['Islam', 'Kristen', 'Katolik', 'Hindu', 'Budha', 'Konghucu'];


        // FORM VALIDATION
        $this->form_validation->set_rules('nm_lengkap', 'Nama Lengkap', 'required|trim');
        $this->form_validation->set_rules('nisn', 'NISN', 'required|trim');
        $this->form_validation->set_rules('tmp_lahir', 'Tempat Lahir', 'required|trim');
        $this->form_validation->set_rules('tgl_lahir', 'Tanggal Lahir', 'required|trim');
        $this->form_validation->set_rules('agama', 'Agama', 'required|trim');
        $this->form_validation->set_rules('gender', 'Jenis Kelamin', 'required');
        $this->form_validation->set_rules('nm_ortu', 'Nama Orang Tua', 'required|trim');
        $this->form_validation->set_rules('alamat_ortu', 'Alamat Orang Tua', 'required|trim');
        $this->form_validation->set_rules('nilai_un', 'Nilai UN', 'required|trim');
        $this->form_validation->set_rules('prestasi', 'Prestasi', 'required|trim');
        $this->form_validation->set_rules('sekolah_pil1', 'Sekolah Pilihan 1', 'required|trim');
        $this->form_validation->set_rules('sekolah_pil2', 'Sekolah Pilihan 2', 'required|trim');
        $this->form_validation->set_rules('sekolah_pil3', 'Sekolah Pilihan 3', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('diknas/siswa/edit_siswa', $data);
            $this->load->view('templates/footer');
        } else {
            $data = [
                'email' => $data['siswa']['email'],
                'nm_lengkap' => htmlspecialchars($this->input->post('nm_lengkap', true)),
                'nisn' => htmlspecialchars($this->input->post('nisn', true)),
                'tmp_lahir' => htmlspecialchars($this->input->post('tmp_lahir', true)),
                'tgl_lahir' => htmlspecialchars($this->input->post('tgl_lahir', true)),
                'agama' => htmlspecialchars($this->input->post('agama', true)),
                'gender' => htmlspecialchars($this->input->post('gender', true)),
                'nm_ortu' => htmlspecialchars($this->input->post('nm_ortu', true)),
                'alamat_ortu' => htmlspecialchars($this->input->post('alamat_ortu', true)),
                'nilai_un' => htmlspecialchars($this->input->post('nilai_un', true)),
                'prestasi' => htmlspecialchars($this->input->post('prestasi', true)),
                'id_sekolah1' => $this->input->post('sekolah_pil1'),
                'id_sekolah2' => $this->input->post('sekolah_pil2'),
                'id_sekolah3' => $this->input->post('sekolah_pil3')
            ];

            $this->siswa->updateSiswa($data);

            // update name in table user
            $data_user = [
                'email' => $data['siswa']['email'],
                'name' => htmlspecialchars($this->input->post('nm_lengkap', true))
            ];

            $this->user->updateUser($data_user);

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Data siswa berhasil diubah!</div>');
            redirect('diknas/detailsiswa/' . $id);
        }
    }

    public function deleteSiswa($id)
    {
        $this->siswa->deleteSiswa($id);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Data siswa berhasil dihapus!</div>');
        redirect('diknas/kelolasiswa');
    }

    public function kelolaSekolah()
    {
        $data['title'] = 'Kelola Data Sekolah';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        // SEARCHING
        // ambil data keyword
        if ($this->input->post('keyword')) {
            $data['keyword'] = $this->input->post('keyword');
            $this->session->set_userdata('keyword', $data['keyword']);
        } else {
            $data['keyword'] = $this->session->userdata('keyword');
        }

        // ambil data filter
        if ($this->input->post('filter')) {
            $data['filter'] = $this->input->post('filter');
            $this->session->set_userdata('filter', $data['filter']);
        } else {
            $data['filter'] = ($this->session->userdata('filter')) ? $this->session->userdata('filter') : 'nama';
        }

        // PAGINATION
        // config
        $config['base_url'] = base_url('diknas/kelolasekolah');

        // total rows
        $this->db->like($data['filter'], $data['keyword']);
        $this->db->from('data_sekolah');
        $config['total_rows'] = $this->db->count_all_results();
        $config['per_page'] = 5;

        // initialize
        $this->pagination->initialize($config);

        // Data Sekolah
        $data['start'] = $this->uri->segment(3);
        $data['sekolah'] = $this->sekolah->getSekolahLimit($config['per_page'], $data['start'], $data['filter'], $data['keyword']);


        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('diknas/sekolah/kelola_sekolah', $data);
        $this->load->view('templates/footer');
    }

    public function detailSekolah($id)
    {
        $email = $this->session->userdata('email');
        $data = [
            'title' => 'Detail Data Sekolah',
            'user' => $this->user->getUser($email),
            'sekolah' => $this->sekolah->getSekolahById($id)
        ];

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('diknas/sekolah/detail_sekolah', $data);
        $this->load->view('templates/footer');
    }

    public function editSekolah($id)
    {
        // INISIALISASI DATA USER AKTIF
        $email = $this->session->userdata('email');
        $data = [
            'title' => 'Detail Data Sekolah',
            'user' => $this->user->getUser($email),
            'sekolah' => $this->sekolah->getSekolahById($id),
            'kecamatan' => $this->sekolah->getKecamatan(),
            'akreditasi' => ['A', 'B', 'C']
        ];

        // FORM VALIDATION
        $this->form_validation->set_rules('nama', 'Nama Sekolah', 'required|trim');
        $this->form_validation->set_rules('npsn', 'NPSN', 'required|trim');
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
            $this->load->view('diknas/sekolah/edit_sekolah', $data);
            $this->load->view('templates/footer');
        } else {

            // ARRAY DATA UNTUK DISIMPAN KE DB
            $data = [
                'email' => $data['sekolah']['email'],
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
            $this->sekolah->updateSekolah($data);

            // MESSAGE DAN REDIRECT
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Data sekolah berhasil diubah!</div>');
            redirect('diknas/detailsekolah/' . $id);
        }
    }

    public function deleteSekolah($id)
    {
        $this->sekolah->deleteSekolah($id);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Data sekolah berhasil dihapus!</div>');
        redirect('diknas/kelolasekolah');
    }

    public function selesaiCari($url)
    {
        $this->session->unset_userdata('keyword');
        $this->session->unset_userdata('filter');
        redirect('diknas/' . $url);
    }

    public function kelolaPengumuman()
    {
        $email = $this->session->userdata('email');
        $data['title'] = 'Kelola Pengumuman';
        $data['user'] = $this->user->getUser($email);
        $data['pengumuman'] = $this->pengumuman->getPengumuman();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('diknas/pengumuman/kelola_pengumuman', $data);
        $this->load->view('templates/footer');
    }

    public function inputPengumuman()
    {
        $email = $this->session->userdata('email');
        $data['title'] = 'Kelola Pengumuman';
        $data['user'] = $this->user->getUser($email);

        // FORM VALIDATION
        $this->form_validation->set_rules('headline', 'Headline', 'required|trim');
        $this->form_validation->set_rules('text', 'Isi', 'required|trim');


        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('diknas/pengumuman/input_pengumuman', $data);
            $this->load->view('templates/footer');
        } else {
            // UPLOAD THUMBNAIL
            $upload = $_FILES['thumbnail']['name'];

            if ($upload) {
                $config['allowed_types'] = 'gif|jpg|png|jpeg';
                $config['max_size'] = '5120';
                $config['upload_path'] = './assets/img/pengumuman';

                $this->load->library('upload', $config);

                if ($this->upload->do_upload('thumbnail')) {

                    $thumb = $this->upload->data('file_name');
                } else {
                    echo $this->upload->display_errors();
                }
            } else {
                $thumb = 'default_pengumuman.png';
            }

            $data = [
                'headline' => $this->input->post('headline'),
                'tgl_terbit' => time(),
                'thumbnail' => $thumb,
                'text' => $this->input->post('text')
            ];

            // STORE KE DB
            $this->pengumuman->tambahPengumuman($data);
            redirect('diknas/kelolapengumuman');
        }
    }

    public function waktu()
    {
        $email = $this->session->userdata('email');
        $data['title'] = 'Set Waktu';
        $data['user'] = $this->user->getUser($email);
        $data['waktu'] = $this->db->get('data_deadline')->result_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('diknas/waktu/index', $data);
        $this->load->view('templates/footer');
    }

    public function setWaktu()
    {
        $email = $this->session->userdata('email');
        $data['title'] = 'Set Waktu';
        $data['user'] = $this->user->getUser($email);

        // FORM VALIDATION
        $this->form_validation->set_rules('judul', 'Judul', 'required|trim');
        $this->form_validation->set_rules('deadline', 'Deadline', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('diknas/waktu/set_waktu', $data);
            $this->load->view('templates/footer');
        } else {
            $data = [
                'judul' => $this->input->post('judul'),
                'deadline' => $this->input->post('deadline')
            ];

            // STORE KE DATABASE
            $this->db->insert('data_deadline', $data);

            // REDIRECT
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Waktu berhasil di atur!</div>');
            redirect('diknas/waktu');
        }
    }

    public function editWaktu($id)
    {
        $email = $this->session->userdata('email');
        $data['title'] = 'Set Waktu';
        $data['user'] = $this->user->getUser($email);

        // FORM VALIDATION
        $this->form_validation->set_rules('judul', 'Judul', 'required|trim');
        $this->form_validation->set_rules('deadline', 'Deadline', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('diknas/waktu/set_waktu', $data);
            $this->load->view('templates/footer');
        } else {
            $data = [
                'judul' => $this->input->post('judul'),
                'deadline' => $this->input->post('deadline')
            ];

            // STORE KE DATABASE
            $this->db->insert('data_deadline', $data);

            // REDIRECT
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Waktu berhasil di atur!</div>');
            redirect('diknas/waktu');
        }
    }
}
