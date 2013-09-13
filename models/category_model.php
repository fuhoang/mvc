<?php
class Category_Model extends Model{
	
	function __construct(){
		parent::__construct();
	}
	
	public function create($data){
		
	
		
		//print_r($data);
		
		$this->db->insert('category', array(
			'category_name' => $data['category_name'],
			'description' =>  $data['description'],
			'cat_keywords' => $data['keyword']
			
		)); 	
		
		//print_r($sth);
		
	}
	
}

?>