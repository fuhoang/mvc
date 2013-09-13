<?php
/**
 *
 */
class Blog extends Controller {

	public function __construct() {
		parent::__construct();
		Auth::handleLogin();
		      $this->view->js = array('blog/js/default.js');
	}

	public function index() {
		$this -> view -> dropDownMenu = $this -> model -> dropDownMenu();
		$this -> view -> blogList = $this -> model -> blogList();
		$this -> view -> render('blog/index');

	}

	public function create() {
		//echo 1;
		//die;
		if (is_uploaded_file($_FILES['pic']['tmp_name'])) {
			$image = $this -> model -> upload_pic($_FILES, 'pic');			
		}
		
		$data = array();
		$data['blog_title'] = $_POST['blog_title'];
		$data['blog_content'] = $_POST['blog_content'];
		$data['keywords'] = $_POST['keywords'];
		$data['category'] = $_POST['category'];
		$data['image_url'] = $image;
		
		$this -> model -> create($data);
		header('location: ' . URL . 'blog');
	}

	public function blog_cat($id) {

		//echo $id;
		$this -> view -> dropDownMenu = $this -> model -> dropDownMenu();

		$this -> view -> blog_cat = $this -> model -> blog_cat($id);

		if (empty($this -> view -> blog_cat)) {
			die('This is an invalid note!');
		}

		$this -> view -> render('blog/blog_cat');
	}

}
?>
