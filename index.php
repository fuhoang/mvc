<?php

error_reporting(E_ALL);
error_reporting(-1);

require 'config.php';
require 'util/Auth.php';

function __autoload($class){
	require LIBS . $class . '.php';
	
}


$bootstrap = new Bootstrap();
//$bootstrap->setControllerPath();
//$bootstrap->setModelPath();
//$bootstrap->setDefaultFile();
$bootstrap->setErrorFile('e.php');
$bootstrap->init();

?>
