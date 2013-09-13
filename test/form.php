<?php
require '../config.php';
require '../libs/Form.php';
require '../libs/Database.php';
$form = new Form();



if(isset($_REQUEST['run'])){
	try{
		
		$form 	->post('name')
				->val('minlength', 2)
				->post('age')
				->val('digit')
				->post('gender');
				
		$form 	->submit();
		$data = $form->fetch();
		
		print_r($data);
		//print_r($form);
		
		$db = new Database(DB_TYPE, DB_HOST, DB_NAME, DB_USER, DB_PASS);
		$db->insert('person', $data);
		//print_r($form);
	} catch(Exception $e){
		echo $e->getMessage(); 
	}
}
?>

<form method="post" action="?run">
	Name: <input type="text" name="name" />
	Age: <input type="text" name="age" />
	Gender: <select name="gender">
		<option value="m">Male</option>
		<option value="f">Female</option>
		
	</select>
	<input type="submit"" />
	
	
</form>