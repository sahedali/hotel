<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class LoginModel extends CI_Model {
    function __construct()
    {
        parent::__construct();
    }
	
	public function login()
	{
        $userName = $this->input->post('email');
        $password = $this->input->post('password');
        /*if($userName=="Demo" && $password=="Demo"){
            return "Demo";
        }*/
        $sql ="select * from user usr,role_master rm  where usr.username ='$userName' and usr.password= '$password' and usr.role_id = rm.id";
        $result =$this->db->query($sql);
        return $result->result_array();
	}
	
	public function alluser()
	{
		$aa="SELECT * FROM user";
		$result =$this->db->query($aa);
		return $result->result_array();
	}
}

