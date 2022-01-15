<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	 
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->model('livetable_model');
	}

	function index()
	{
		$this->load->helper('url');
		$this->load->view('coba/live_table');
	}

	function load_data()
	 {
	  $data = $this->livetable_model->load_data();
	  echo json_encode($data);
	 }

	 function insert()
	 {
	  $data = array(
	   'first_name' => $this->input->post('first_name'),
	   'last_name'  => $this->input->post('last_name'),
	   'age'   => $this->input->post('age')
	  );

	  $this->livetable_model->insert($data);
	 }

	 function update()
	 {
	  $data = array(
	   $this->input->post('table_column') => $this->input->post('value')
	  );

	  $this->livetable_model->update($data, $this->input->post('id'));
	 }

	 function delete()
	 {
	  $this->livetable_model->delete($this->input->post('id'));
	 }

	// public function index()
	// {
		// $this->load->view('welcome_message');
	// }
	public function home()
	{
		$this->load->helper('url');
		$this->load->database();
		$query = $this->db->get('portfolio');
        $data['portfolio']=$query->result_array();
		$this->load->view('frontend/home',$data);
	}
	public function admin()
	{
		$this->load->helper('url');
		$this->load->database();
		// $query = $this->db->get('portfolio');
        // $data['portfolio']=$query->result_array();
		$this->load->view('backend/admin');
	}
	
}
