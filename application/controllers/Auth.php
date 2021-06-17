<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->library('unit_test');
    }

    public function loginSiswa()
    {
        if ($this->session->userdata('email')) {
            redirect('auth/loginSiswa');
        }

        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');

        $data['title'] = 'PPDB Login Siswa';
        $data['type'] = 'Siswa';

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/login', $data);
            $this->load->view('templates/auth_footer');
        } else {
            $this->_login($data['type']);
        }
    }

    public function loginSekolah()
    {
        if ($this->session->userdata('email')) {
            redirect('auth/loginSekolah');
        }

        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');

        $data['title'] = 'PPDB Login Sekolah';
        $data['type'] = 'Sekolah';

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/login', $data);
            $this->load->view('templates/auth_footer');
        } else {
            $this->_login($data['type']);
        }
    }

    private function _login($type)
    {
        $email = $this->input->post('email');
        $password = $this->input->post('password');

        if ($type == 'Sekolah') {
            $user = $this->db->get_where('user_sekolah', ['email' => $email])->row_array();
        } else {
            $user = $this->db->get_where('user', ['email' => $email])->row_array();
        }

        // jika user ada
        if ($user) {
            // jika user aktif
            if ($user['is_active'] == 1) {
                // jika password benar
                if (password_verify($password, $user['password'])) {
                    $data = [
                        'email' => $user['email'],
                        'role_id' => $user['role_id']
                    ];

                    $this->session->set_userdata($data);

                    if ($user['role_id'] == 1) {
                        redirect('admin');
                    } else if ($user['role_id'] == 2) {
                        redirect('siswa');
                    } else {
                        redirect('user');
                    }
                } else {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                    Wrong Password</div>');
                    redirect('auth/login' . $type);
                }
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                This email has not been activated!</div>');
                redirect('auth/login' . $type);
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
            Email has not been registered!</div>');
            redirect('auth/login' . $type);
        }
    }

    public function regiSiswa()
    {
        if ($this->session->userdata('email')) {
            redirect('auth/siswa');
        }

        $this->form_validation->set_rules('name', 'Name', 'required|trim');
        $this->form_validation->set_rules('email', 'Email', 'required|trim|is_unique[user.email]|valid_email', [
            'is_unique' => 'This email has already registered'
        ]);
        $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[3]|matches[password2]', [
            'matches' => "Password doesn't match",
            'min_length' => "Password too short!"
        ]);
        $this->form_validation->set_rules('password2', 'Password', 'required|trim|min_length[3]|matches[password1]');

        if ($this->form_validation->run() == FALSE) {
            $data['title'] = 'WPU Registration';
            $data['type'] = 'Siswa';
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/registration', $data);
            $this->load->view('templates/auth_footer');
        } else {
            $email = $this->input->post('email', true);
            $data = [
                'name' => htmlspecialchars($this->input->post('name', true)),
                'email' => htmlspecialchars($email),
                'image' => 'default.jpg',
                'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),
                'role_id' => 2,
                'is_active' => 1,
                'date_created' => time()
            ];

            // siapin token
            // $token = base64_encode(random_bytes(32));
            // $user_token = [
            //     'email' => $email,
            //     'token' => $token,
            //     'date_created' => time()
            // ];


            $this->db->insert('user', $data); // insert data user

            // $this->db->insert('user_token', $user_token); // insert data token

            // $this->_sendEmail($token, 'verify');

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Congratulation! Your Account has been successfully created.<br>Please check your email and activate your account!</div>');
            redirect('auth/regisiswa');
        }
    }

    private function _sendEmail($token, $type)
    {
        $config = [
            'protocol' => 'smtp',
            'smtp_host' => 'ssl://smtp.googlemail.com',
            'smtp_user' => 'suhramb8@gmail.com',
            'smtp_pass' => 'salim2000',
            'smtp_port' => 465,
            'mailtype' => 'html',
            'charset' => 'utf-8',
            'newline' => "\r\n"
        ];

        $email = $this->input->post('email');

        $this->load->library('email', $config);
        $this->email->initialize($config);

        $this->email->from('suhramb8@gmail.com', 'Web Programming Unpas');
        $this->email->to($email);

        if ($type == 'verify') {
            $this->email->subject('Account Verification');
            $this->email->message('Click this link to verify your account : <a href="' . base_url() . 'auth/verify?email=' . $email . '&token=' . urlencode($token) . '">Activate</a>');
        } else  if ($type == 'forgot') {
            $this->email->subject('Reset Password');
            $this->email->message('Click this link to reset your password : <a href="' . base_url() . 'auth/resetpassword?email=' . $email . '&token=' . urlencode($token) . '">Reset Password</a>');
        }

        if ($this->email->send()) {
            return true;
        } else {
            echo $this->email->print_debugger();
            die;
        }
    }

    public function regiSekolah()
    {
        if ($this->session->userdata('email')) {
            redirect('auth/sekolah');
        }

        $this->form_validation->set_rules('name', 'Name', 'required|trim');
        $this->form_validation->set_rules('email', 'Email', 'required|trim|is_unique[user.email]|valid_email', [
            'is_unique' => 'This email has already registered'
        ]);
        $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[3]|matches[password2]', [
            'matches' => "Password doesn't match",
            'min_length' => "Password too short!"
        ]);
        $this->form_validation->set_rules('password2', 'Password', 'required|trim|min_length[3]|matches[password1]');

        if ($this->form_validation->run() == FALSE) {
            $data['title'] = 'WPU Registration';
            $data['type'] = 'Sekolah';
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/registration');
            $this->load->view('templates/auth_footer');
        } else {
            $email = $this->input->post('email', true);
            $data = [
                'name' => htmlspecialchars($this->input->post('name', true)),
                'email' => htmlspecialchars($email),
                'image' => 'default.jpg',
                'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),
                'role_id' => 3,
                'is_active' => 1,
                'date_created' => time()
            ];

            // siapin token
            $token = base64_encode(random_bytes(32));
            $user_token = [
                'email' => $email,
                'token' => $token,
                'date_created' => time()
            ];


            $this->db->insert('user_sekolah', $data); // insert data user

            // $this->db->insert('user_token', $user_token); // insert data token

            // $this->_sendEmail($token, 'verify');

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Congratulation! Your Account has been successfully created.</div>');
            redirect('auth/loginSekolah');
        }
    }

    public function verify_email()
    {
        $email = $this->input->get('email');
        $token = $this->input->get('token');

        $user = $this->db->get_where('user', ['email' => $email])->row_array();

        if ($user) {
            $user_token = $this->db->get_where('user_token', ['token' => $token])->row_array();

            if ($user_token) {
                if ((time() - $user_token['date_created']) < (60 * 60 * 24)) {
                    $this->db->set('is_active', 1);
                    $this->db->where('email', $email);
                    $this->db->update('user');

                    $this->db->delete('user_token', ['token' => $token]);

                    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                    ' . $email . ' has been activated. Please login!</div>');
                    redirect('auth');
                } else {
                    $this->db->delete('user', ['email' => $email]);
                    $this->db->delete('user_token', ['email' => $email]);

                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                    Account activation failed! Token expired!</div>');
                    redirect('auth');
                }
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                Account activation failed! Token invalid!</div>');
                redirect('auth');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
            Account activation failed! Wrong email!</div>');
            redirect('auth');
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('role_id');

        $this->session->set_flashdata('message', '<script>
                alert("You have been logout!!")</script>');

        redirect(base_url());
    }

    public function blocked()
    {
        $this->load->view('auth/blocked');
    }

    public function forgotPassword()
    {
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email');

        if ($this->form_validation->run() == FALSE) {
            $data['title'] = 'Forgot Password';
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/forgot_password');
            $this->load->view('templates/auth_footer');
        } else {
            $email = $this->input->post('email');

            $user = $this->db->get_where('user', ['email' => $email, 'is_active' => 1])->row_array();

            if ($user) {
                $token = base64_encode(random_bytes(32));

                $user_token = [
                    'email' => $email,
                    'token' => $token,
                    'date_created' => time()
                ];

                $this->db->insert('user_token', $user_token);

                $this->_sendEmail($token, 'forgot');

                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                Please check your email to reset your password!</div>');
                redirect('auth/forgotpassword');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                Email is not registered or activated!</div>');
                redirect('auth/forgotpassword');
            }
        }
    }

    public function resetPassword()
    {
        $email = $this->input->get('email');
        $token = $this->input->get('token');

        $user = $this->db->get_where('user', ['email' => $email])->row_array();

        if ($user) {
            $user_token = $this->db->get_where('user_token', ['token' => $token])->row_array();

            if ($user_token) {
                // KALAU PAKE FITUR TOKEN EXPIRED
                // if ((time() - $user_token['date_created']) < (60 * 60 * 24)) {
                // } else {
                //     $this->db->delete('user_token', ['email' => $email]);

                //     $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                //     Account activation failed! Token expired!</div>');
                //     redirect('auth');
                // }


                $this->session->set_userdata('reset_email', $email);
                $this->changePassword();
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                Reset password failed! Wrong token!</div>');
                redirect('auth/forgotpassword');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
            Reset password failed! Wrong email!</div>');
            redirect('auth/forgotpassword');
        }
    }

    public function changePassword()
    {
        if (!$this->session->userdata('reset_email')) {
            redirect('auth');
        }

        $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[3]|matches[password2]');
        $this->form_validation->set_rules('password2', 'Password', 'required|trim|min_length[3]|matches[password1]');

        if ($this->form_validation->run() == false) {
            $data['title'] = 'Change Password';
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/change_password');
            $this->load->view('templates/auth_footer');
        } else {
            $password = password_hash($this->input->post('password1'), PASSWORD_DEFAULT);
            $email = $this->session->userdata('reset_email');

            $this->db->set('password', $password);
            $this->db->where('email', $email);
            $this->db->update('user');

            $this->session->unset_userdata('reset_email');
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Password successfully reset! Please login!</div>');
            redirect('auth');
        }
    }

    // UNIT TESTING
    // public function loginSuccessTest()
    // {
    //     $test = $this->loginSiswa();
    //     $expected_result = [];
    //     $name = "Login Test Berhasil";
    //     echo $this->unit->run($test, $expected_result, $name);
    //     die;
    // }

    // public function loginFailedTest()
    // {
    //     $test = $this->loginSiswa();
    //     $expected_result = null;
    //     $name = "Login Test Gagal";
    //     echo $this->unit->run($test, $expected_result, $name);
    //     die;
    // }
}
