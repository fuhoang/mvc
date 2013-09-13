<?php

class Blog_Model extends Model{
	
	
	public function __construct(){
		
		parent::__construct();
	}
	
	public function create($data){
		
		print_r($data);
		
		//die;
		
		$this->db->insert('blog_table', array(
			'blog_title' => $data['blog_title'],
			'blog_content' =>  $data['blog_content'],
			'keywords' => $data['keywords'],
			'cat_id' => $data['category'],
			'image_url' => $data['image_url'],
			'date_posted' => date( 'Y-m-d H:i:s' )
		
		)); 	
		
	}
	
	public function dropDownMenu(){
		return $this->db->select('SELECT * FROM category');
		
	}
	
	public function blogList(){
		return $this->db->select('SELECT * FROM blog_table');
	}
	
	public function blog_cat($catid){
		
		return $this->db->select('SELECT * FROM category, blog_table WHERE category.id = :catid AND cat_id = :catid', 
									array('catid' => $catid));
									
		
	}
	
	public function upload_pic($_FILES, $image){
		if($_FILES[$image]['type'] ){
		
			$dir_name = "uploads/" . date("Ymd");
		
			if(!is_dir($dir_name)){	
				mkdir($dir_name) or die("could not create directory " . $dir_name);
			}
			
			$i = 1;						
			$orig_filename = $_FILES[$image]['name'];
			
			while(file_exists($dir_name . "/" . $_FILES[$image]['name'])){
			
				$_FILES[$image]['name'] = $i . "_" . $orig_filename;
			
				$i++;
			}
			
			move_uploaded_file($_FILES[$image]['tmp_name'], $dir_name ."/". $_FILES[$image]['name']);
			$feedback = "uploads/" . date("Ymd") ."/". $_FILES[$image]['name'];
			return($feedback);			
		
		}
		
	}
	
}

?>