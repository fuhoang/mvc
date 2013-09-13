<?php
/**
 * 
 */
class Category extends Controller {
	
	public function __construct() {
        parent::__construct();
        Auth::handleLogin();
    }
    
    public function index() 
    {    
       // $this->view->noteList = $this->model->noteList();
        $this->view->render('category/index');
    }
	
	public function create(){
		$data = array();
        $data['category_name'] = $_POST['category_name'];
        $data['description'] = $_POST['description'];
        $data['keyword'] = $_POST['keyword'];
        
        $this->model->create($data);
		 header('location: ' . URL . 'category');
	}
}


?>