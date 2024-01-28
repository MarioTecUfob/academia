<meta charset= "UTF-8"/>
<style>
h1 {
	color: red;
	text-align: center
}
h2 {
			font-size: 14px;
			font-family: Arial;
			font-weight: bold;
		}
h3 {
			font-size: 14px;
			font-family: Arial;	
			font-weight: lighter;
		}

</style>
<?php
echo "<form  method='post' action='imprimircliente.php'>";
header ('Content-type: text/html; charset=UTF-8');
// Recebe os dados e guarda-os em variáveis
$nome=$_POST['tNome'];
$cpf=$_POST['tCpf'];
$rg=$_POST['tRg'];
$datap=$_POST['tDatap'];
$datar=$_POST['tDatar'];
$hora=$_POST['hora'];


/*//conectando ao banco de dados
session_start();
include_once("conexao.php");
//preparando o comando para inserir os dados no banco
$tsql = "INSERT INTO reposicao (nome, cpf, rg, datap, datar, horario)  VALUES ('$nome', '$cpf', '$rg', '$datap', '$datar', '$hora')";                       
//executando o comando de inserção dos dados no banco
$result = mysqli_query($link, $tsql);

//confirmando inclusão no banco
$resultado = mysqli_query($link, "commit");
*/
echo "<fieldset>";
echo "<table>";
echo "<tr>";
echo "<td><h2>Nome:</h2></td><td><h3>$nome</h3></td>";
echo "</tr>";
echo "</table>";

echo "<table>";
echo "<tr>";
echo "<td><h2>CPF:</h2></td><td><h3>$cpf</h3></td>";
echo "</tr>";
echo "</table>";

echo "<table>";
echo "<tr>";
echo "<td><h2>RG:</h2></td><td><h3>$rg</h3></td>";
echo "</tr>";
echo "</table>";

echo "<table>";
echo "<tr>";
echo "<td><h2>Data Da Aula Não Realizada:</h2></td><td><h3>$datap</h3></td>";
echo "</tr>";
echo "</table>";

echo "<table>";
echo "<tr>";
echo "<td><h2>Data de Reposição:</h2></td><td><h3>$datar</h3></td>";
echo "</tr>";
echo "</table>";

echo "<table>";
echo "<tr>";
echo "<td><h2>Horario:</h2></td><td><h3>$hora</h3></td>";
echo "</tr>";
echo "</table>";

?>