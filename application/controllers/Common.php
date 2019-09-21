<?php

if (! defined('BASEPATH'))
    exit('No direct script access allowed');

class Common extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
    }
    public function home()
    {
        $login = $this->session->userdata('logged_in');
        if(!isset($login)){
            redirect('Login/logout');
            return false;
        }else{
           // $this->LoginModel->alluser();
            $data['titel']='Dashboard';
            $this->load->view('common/header',$data);
            //$this->load->view('home');
            $this->load->view('common/footer');
        }
    }
    
}