<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Paises_model extends CI_Model{
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
    function BuscarContinentes(){
      $this->db->select('*');
      $this->db->from('continente');
      $query = $this->db->get();
      return $query->result_array();
    }

    function BuscarPais($idcontinente){
      $query3 = "SELECT * from pais WHERE fkContinente = '".$idcontinente."';";
    	$resultado3 = $this->db->query($query3);
        $json = json_encode($resultado3->result_array());
        return $json;
    }

    function BuscarCapitales($idpaiss){
      $query4 = "SELECT * from capital WHERE fkPais = '".$idpaiss."';";
    	$resultado4 = $this->db->query($query4);
        $json = json_encode($resultado4->result_array());
        return $json;
    }
}
