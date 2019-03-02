<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Employees_model extends CI_Model {

	function guardar($data){
		$this->db->insert("employees",$data);

		if ($this->db->affected_rows() > 0) {
			return true;
		}
		else{
			return false;
		}
	}
	function mostrar($valor){
		$this->db->like("curp",$valor);
		$consulta = $this->db->get("employees");
		return $consulta->result();
	}

	function actualizar($id,$data){
		$this->db->where('curp', $id);
		$this->db->update('employees', $data); 
		if ($this->db->affected_rows() > 0) {
			return true;
		}
		else{
			return false;
		}
	}

	function eliminar($id){
		$this->db->where('curp', $id);
		$this->db->delete('employees'); 
		if ($this->db->affected_rows() > 0) {
			return true;
		}
		else{
			return false;
		}
	}

}