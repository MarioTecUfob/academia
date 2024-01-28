<meta charset= "UTF-8"/>
<head>
<style>
a{
	color:green;
	text-decoration:none; 
}
</style>
<title>ADM</title>
<meta charset="utf-8">
<script language="javascript" type="text/javascript">
function change(valor) {
	document.getElementById('valor').value = valor; 		
} 
</script>
</head>
<body bgcolor="black">
<font color="white">
<h1 align="center">PAINEL DE IMPRESSÃO DE BOLETOS</h1>
<form id="formulario" name="formulario" method="post" action="boleto_bb.php">
<h2 align="center">SELECIONE QUAL O CLIENTE QUE DESEJA IMPRIMIR BOLETO:</h2>
<h2 align="center"><select name="cliente" id="cliente" onchange="change(this.value );">
<option value="Selecione">Selecione</option>
<?php
session_start ();
include_once("conexao.php");
$tsql = "select nome,cpf from matricula";
$resultado = mysqli_query($conn, $tsql);
while ($row = mysqli_fetch_assoc($resultado)){
      echo "<option value='".$row['cpf']."'>".$row['nome']."</option>";
	  $cpf=$row['cpf'];
	  $nome=$row['nome'];
}
?>
</select>


<br/>
<br/>
<input type="hidden" id="valor" name="valor" value="">
<input type="submit" value="GERARBOLETO" onclick="return validar()"><br>
</font>
</form>
</body>
</html>
