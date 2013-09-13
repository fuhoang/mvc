<?php

class Login_model extends Model {

	public function __construct(){
		parent::__construct();
		//echo md5('chinaman');
	}	

	public function run(){
		
		$sth = $this->db->prepare("select userid, password, role FROM users WHERE username = :login AND
					password = :password");

		$sth->execute(array(
				':login' => $_POST['login'],
				':password' => Hash::create('sha256', $_POST['password'], HASH_PASSWORD_KEY) 
				
				));
				
				$data = $sth->fetch();
				
				
				//print_r($data);
				
				
				$count = $sth->rowCount();
				//print_r($data);
				if($count > 0 ){
					//login
					Session::init();
					Session::set('role', $data['role']);
					Session::set('loggedIn', true);
					Session::set('userid', $data['userid']);
					header('location:../dashboard');
				}else{
					//show an error 
					header('location: ../login');
				}
	}
}

?>

