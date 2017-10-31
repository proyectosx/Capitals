<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
	public function __construct(){
	    parent::__construct();
			$this->load->model('paises_model');
	}

	public function index(){
		  $data['continente'] = $this->paises_model->BuscarContinentes();
			$this->load->view('welcome_message', $data);
	}

	public function getPaises()	{
		$idcontinente=$this->input->post('idcontinente');
		echo $this->paises_model->BuscarPais($idcontinente);
	}

	public function getCapitales()	{
		$idpaiss=$this->input->post('idpaiss');
		echo $this->paises_model->BuscarCapitales($idpaiss);
	}
}
