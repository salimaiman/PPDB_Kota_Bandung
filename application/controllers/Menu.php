<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Menu extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        is_logged_in();

        $this->load->model('Menu_model', 'menu');
        $this->load->library('form_validation');
    }

    // MENU

    public function index()
    {
        $data['title'] = 'Menu Management';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['menu'] = $this->db->get('user_menu')->result_array();

        $this->form_validation->set_rules('menu', 'Menu', 'required|is_unique[user_menu.menu]', [
            'is_unique' => 'The menu has to be unique!'
        ]);

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('menu/index', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user_menu', ['menu' => $this->input->post('menu')]);

            $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
           New menu successfully added!</div>');
            redirect('menu');
        }
    }

    public function delete($title)
    {
        $this->menu->deleteMenu($title);

        $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
           Menu has been deleted!</div>');
        redirect('menu');
    }


    public function edit($id)
    {
        $data = [
            'id' => $id,
            'menu' => $this->input->post('menu')
        ];

        $this->menu->editMenu($data);

        $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
           Menu has been updated!</div>');
        redirect('menu');
    }

    // SUB MENU

    public function subMenu()
    {


        $data['title'] = 'Submenu Management';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['submenu'] = $this->menu->getSubMenu();
        $data['menu'] = $this->db->get('user_menu')->result_array();

        $this->form_validation->set_rules('title', 'Title', 'required|is_unique[user_sub_menu.title]', [
            'is_unique' => 'The sub menu title has to be unique!'
        ]);
        $this->form_validation->set_rules('menu_id', 'Menu', 'required');
        $this->form_validation->set_rules('url', 'Url', 'required|is_unique[user_sub_menu.url]', [
            'is_unique' => 'The sub menu url has to be unique!'
        ]);
        $this->form_validation->set_rules('icon', 'Icon', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('menu/submenu', $data);
            $this->load->view('templates/footer');
        } else {
            $data = [
                'title' => $this->input->post('title'),
                'menu_id' => $this->input->post('menu_id'),
                'url' => $this->input->post('url'),
                'icon' => $this->input->post('icon'),
                'is_active' => $this->input->post('is_active')
            ];

            $this->db->insert('user_sub_menu', $data);


            $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
            Sub menu successfully added!</div>');
            redirect('menu/submenu');
        }
    }

    public function editSubMenu($id)
    {
        $data = [
            'id' => $id,
            'title' => $this->input->post('title'),
            'menu_id' => $this->input->post('menu_id'),
            'url' => $this->input->post('url'),
            'icon' => $this->input->post('icon'),
        ];

        $this->menu->editSubMenu($data);

        $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
           Sub menu has been updated!</div>');
        redirect('menu/submenu');
    }

    public function deleteSubMenu($id)
    {
        $this->menu->deleteSubMenu($id);

        $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
        Sub menu has been deleted!</div>');
        redirect('menu/submenu');
    }
}
