<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Menu_model extends CI_Model
{

    public function deleteMenu($menu)
    {
        $this->db->where('menu', $menu);
        $this->db->delete('user_menu');
    }

    public function editMenu($data)
    {
        $id = $data['id'];
        $this->db->update('user_menu', $data, ['id' => $id]);
    }

    public function getSubMenu()
    {
        $query = "SELECT user_sub_menu.*, user_menu.menu 
                    FROM user_sub_menu 
                    JOIN user_menu 
                      ON user_sub_menu.menu_id = user_menu.id
                ORDER BY user_menu.menu ASC";
        return $this->db->query($query)->result_array();
    }

    public function deleteSubMenu($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('user_sub_menu');
    }

    public function editSubMenu($data)
    {
        $id = $data['id'];
        $this->db->update('user_sub_menu', $data, ['id' => $id]);
    }
}
