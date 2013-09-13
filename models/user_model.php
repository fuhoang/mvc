<?php

class User_model extends Model {

	public function __construct(){
		parent::__construct();
		//echo md5('chinaman');
	}	

	public function userList(){
		return $this->db->select('SELECT userid, username, role FROM users');
		
	
	}
	
	public function userSingleList($userid){
		return $this->db->select('SELECT userid, username, role FROM users WHERE userid = :userid', array('userid' => $userid));
		
	}
	
	public function create($data){
		
		$this->db->insert('users', array(
			'username' => $data['username'],
			'password' =>  Hash::create('sha256', $data['password'], HASH_PASSWORD_KEY),
			'role' => $data['role']
		
		)); 	
		
	}
	
	public function editSave($data){
		$postData = array(
			'username' => $data['username'],
			'password' => Hash::create('sha256', $data['password'], HASH_PASSWORD_KEY),
			'role' => $data['role']
		);	
			
		$this->db->update('users', $postData, "`userid` = {$data['userid']}" ); 	
		
	}
	
	
	public function delete($userid){
		$sth = $this->db->select('SELECT role FROM users WHERE userid = :userid', array('userid' => $userid));
		
	
		
		if($sth[0]['role'] == 'owner'){
		
			return false;
		}	
		
		$this->db->delete('users', "userid = '$userid'");
	
		
	}
}

?>

