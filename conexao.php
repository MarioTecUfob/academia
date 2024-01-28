<?php
	$servidor = "localhost";
	$usuario = "root";
	$senha = "";
	$dbname = "meubanco";
	
	//Criar a conexão
	$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);
	$tsql2 = "SET NAMES utf8;";
    $resultado = mysqli_query($conn, $tsql2);	
?>