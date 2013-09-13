<?php

class Controller {

	function __construct() {
		//echo 'Main controller';
		$this->view = new View();
	}

	public function loadModel($name, $modelPath){
	
		$path = $modelPath . $name . '_model.php';
		
		if(file_exists($path)){
			require $modelPath . $name . '_model.php';
			
			$modeName = $name . '_Model';
			$this->model = new $modeName();
		}
	}
}

?>
