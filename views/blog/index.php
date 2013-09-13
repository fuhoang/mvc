<h1>Blog</h1>

<?
	//print_r($this->dropDownMenu);
?>

<div id="cat_menu">
	<?
		foreach($this->dropDownMenu as $key => $value){
	?>	
		<a href="<?php echo URL;?>blog/blog_cat/<?=$value['id']?>"><?php echo $value['category_name'];?></a>
	<?
		}
	?>	
</div>


<form method="post" action="<?php echo URL;?>blog/create" enctype="multipart/form-data">
	<label class="desc" id="title3" for="Field3">Choose a Category</label>
				<select name="category">
					<option value="0" selected>Pick a category</option>	
					<?
					foreach($this->dropDownMenu as $key => $value){
					?>								
							<option value="<?php echo $value['id']; ?>"><?php echo $value['category_name']; ?></option>											
						
					<?
					}
					?>		
				</select><br />
	<label>Title</label><input type="text" name="blog_title" /><br />
	<label>Blog Content</label><textarea name="blog_content"></textarea><br />
	<label>Keywords</label><input type="text" name="keywords" /><br />
	<label>Upload Picture</label><input type="file" name="pic" /><br />
	<label>&nbsp</label><input type="submit" />
</form>

<div>
<table>
<?

	foreach($this->blogList as $key => $value){
		echo '<tr>';
		echo '<td>' . $value['blog_title'] . '</td>';
		echo '<td>' . $value['blog_content'] . '</td>';	
		echo '<td>
			
			</td>';
		echo '</tr>';	
		
	}
	//print_r($this->userList);

?>
</table>

</div>
