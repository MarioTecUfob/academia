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
$sexo=$_POST['sexo'];
$nome=$_POST['tNome'];
$cpf=$_POST['tCpf'];
$rg=$_POST['tRg'];
$email=$_POST['tMail'];
$logradouro=$_POST['tRua'];
$bairro=$_POST['tBar'];
$cidade=$_POST['tCid'];
$cep=$_POST['tCep'];
$data=$_POST['tData'];
$saude=$_POST['saude'];
$numero=$_POST['tNum'];
$estado = $_POST['uf'];
$total =  $_POST['total'];

$valorcTkd = $_POST['valorcTkd'];
$valorcJiu = $_POST['valorcJiu'];
$valorcMus = $_POST['valorcMus'];
$valorcPil = $_POST['valorcPil'];
$valorcZum = $_POST['valorcZum'];
$valorcBale = $_POST['valorcBale'];



//conectando ao banco de dados
$link = mysqli_connect("localhost", "root", "", "meubanco");

//preparando o comando para inserir os dados no banco
$tsql = "INSERT INTO matricula (nome, cpf, rg, email, sexo, data_nasc, logradouro, numero, estado,";
$tsql = $tsql."cidade, cep, taekwondo, jiujitsu, musculacao, pilates, zumba, bale,mensalidade) ";
$tsql = $tsql." VALUES ('$nome', '$cpf', '$rg', '$email', '$sexo', '$data', '$logradouro', '$numero',"; 
$tsql = $tsql."'$estado', '$cidade', '$cep', '$valorcTkd', '$valorcJiu', '$valorcMus', '$valorcPil', '$valorcZum', '$valorcBale', '$total')";

                      
//executando o comando de inserção dos dados no banco
$result = mysqli_query($link, $tsql);

//confirmando inclusão no banco
$resultado = mysqli_query($link, "commit");


echo "<h1>Matrícula Realizada Com Sucesso</h1></br>";
echo "<fieldset>";
echo "<table>";
echo "<tr>";
echo "<td><h2>Nome:</h2></td><td><h3>$nome</h3></td>";
echo "</tr>";
echo "</table>";

if ($sexo=="M"){
	echo "<table>";
	echo "<tr>";
	echo "<td><h2>Sexo:</h2></td><td><h3>Masculino</h3></td>";
	echo "</tr>";
	echo "</table>";
	
	}else{
		echo "<table>";
		echo "<tr>";	
		echo "<td><h2>Sexo:</h2></td><td><h3>Feminino</h3></td>";
		echo "</tr>";
		echo "</table>";
	}
	 echo "<table>";
	 echo "<tr>";	
	 echo "<td><h2>Nascido Em:</h2></td><td><h3>$data</h3></td>";
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
echo "<td><h2>E-mail:</h2></td><td><h3>$email</h3></td>";
echo "</tr>";
echo "</table>";

echo "<table>";
echo "<tr>";
echo "<td><h2>Endereço:</h2></td><td><h3>$logradouro</h3></td>";
echo "</tr>";
echo "</table>";

echo "<table>";
echo "<tr>";
echo "<td><h2>Número:</h2></td><td><h3>$numero</h3></td>";
echo "</tr>";
echo "</table>";

echo "<table>";
echo "<tr>";
echo "<td><h2>Bairro:</h2></td><td><h3>$bairro</h3></td>";
echo "</tr>";
echo "</table>";


 if(isset($estado))
    {
        echo "<table>";
		echo "<tr>";
		echo "<td><h2>Estado:</h2></td><td><h3>$estado</h3></td>";
		echo "</tr>";
		echo "</table>";

		 
    }
echo "<table>";
echo "<tr>";
echo "<td><h2>Cidade:</h2></td><td><h3>$cidade</h3></td>";
echo "</tr>";
echo "</table>";

echo "<table>";
echo "<tr>";
echo "<td><h2>CEP:</h2></td><td><h3>$cep</h3></td>";
echo "</tr>";
echo "</table>";

	//} else {
	//	echo "Outros</br>";	
if(isset($_POST["aula"]))
{
    echo "<h2>Você Quer Fazer:</h2>";
     
    // Faz loop pelo array dos numeros
    foreach($_POST["aula"] as $arte)
    {
        echo "=> " . $arte . "</br>";
		
    }
	echo "</br>O preço do serviço(s) selecionado(s) é R$ $total,00";
}	
if ($saude=="S"){
	echo "<h2>Possui Problema De Saúde.</h2>";	
	echo "<h2>Especificação:</h2> " . $_POST["tMsg"];
	}
	else {
	//($saude=="N") 	
		echo " <h2>Não Possui Problema De Saúde.</h2></br>";
	}
echo "</fieldset>";	
echo "</br> <input type='submit' value='Gerar Boleto'/>";
echo "</form>";



?>