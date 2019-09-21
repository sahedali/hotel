<?php

if (! defined('BASEPATH'))
    exit('No direct script access allowed');

class Booking extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('CommonModel');
        $login = $this->session->userdata('logged_in');
        if(!isset($login)){
            redirect('Login/logout');
            return false;
        }
    }

   /*  public function RoomBooking() {
        $this->load->view('common/header');
        $this->load->view('Booking/RoomBooking');
        $this->load->view('common/footer');
    }
    
    public function AddRoom() {
        $this->load->view('common/header');
        $this->load->view('Booking/AddBooking');
        $this->load->view('common/footer');
    } */
    
    public function upload(){
        if(!empty($_FILES['image'])){ 
            $data = json_decode($_POST['data']);
            $customerId=$this->CommonModel->saveBooking($data);
            $ext = pathinfo($_FILES['image']['name'],PATHINFO_EXTENSION);
            $image = $customerId['customer_id'].'.jpg';//.$ext; //time()
            $path =FCPATH."bower_components\\CustomarImage\\";
            move_uploaded_file($_FILES["image"]["tmp_name"], $path.$image);
            echo json_encode($customerId);
        }else{
            $data = json_decode($_POST['data']);
            $customerId=$this->CommonModel->saveBooking($data);
			echo json_encode($customerId);
        }
    }
    
    public function getMasterId(){
        echo json_encode($this->CommonModel->getIdMaster());
    }
    
    public function getRoomFoorBooking(){
        echo json_encode($this->CommonModel->getRoomForBooking(json_decode(file_get_contents('php://input'))));
    }
    
    public function getBookingDetails(){
        echo json_encode($this->CommonModel->getBookingDetails(json_decode(file_get_contents('php://input'))));
    }
	public function getBookingDetailsHistory(){
        echo json_encode($this->CommonModel->getBookingDetailsHistory());
    }
	
	public function searchCustomer(){
		echo json_encode($this->CommonModel->getCustomer(json_decode(file_get_contents('php://input'))));
	}
	
	public function getBookingDetailsUpdate(){
		echo json_encode($this->CommonModel->getBookingDetailsUpdate(json_decode(file_get_contents('php://input'))));
	}
	
    
}