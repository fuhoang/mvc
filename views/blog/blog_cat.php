<h1><?php echo $this->blog_cat[0]['category_name'];?></h1>

<?
//print_r($this->blog_cat);

//echo $this->blog_cat[0]['blog_title'];
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

<table>
<?

	foreach($this->blog_cat as $key => $value){
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