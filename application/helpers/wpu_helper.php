<?php

function is_logged_in()
{
    $ci = get_instance();
    if (!$ci->session->userdata('email')) {
        redirect('auth');
    } else {
        $role_id = $ci->session->userdata('role_id');
        $menu = $ci->uri->segment(1);

        $queryMenu = $ci->db->get_where('user_menu', ['menu' => $menu])->row_array();
        $menu_id = $queryMenu['id'];

        $accessMenu = $ci->db->get_where('user_access_menu', [
            'role_id' => $role_id,
            'menu_id' => $menu_id
        ]);

        if ($accessMenu->num_rows() < 1) {
            redirect('auth/blocked');
        }
    }
}

function check_access($role_id, $menu_id)
{
    $ci = get_instance();

    $result = $ci->db->get_where('user_access_menu', ['role_id' => $role_id, 'menu_id' => $menu_id]);

    if ($result->num_rows() > 0) {
        return "checked = 'checked'";
    }
}

function field_value($field)
{
    $ci = get_instance();
    $email = $ci->session->userdata('email');
    $value = "value=" . '"' . "<?= " . '$user' . "[$field]; ?>" . '"';

    $ci->load->model('Siswa_Model', 'siswa');

    $value_user = 'value="<?= $user[' . $field . ']; ?>"';
    $set_value = 'value="<?= set_value(' . "'$field'" . '); ?>"';


    if ($ci->siswa->cekData($email)) {
        return $value;
    }
    return $set_value;
}
