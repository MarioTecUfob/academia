<meta charset= "UTF-8"/>
<head>
<style>
a{
	color:green;
	text-decoration:none; 
}
</style>
<title>Agendando Aula</title>
<meta charset="utf-8">
<script language="javascript" type="text/javascript">
</script>
</head>
<body bgcolor="black">
<font color="white">
<h1 align="center">PAINEL DE Reagendamento De Aula </h1>
<form id="formulario" name="formulario" method="post" action="gravarreposicao.php">
<p><label for="cNome">Nome:<input type="text" name="tNome" id= "cNome" size="35" maxlength="35" placeholder="Nome Completo"/></label></p>
	
    <p><label for="cCpf">CPF:<input type="cpf" name="tCpf" id= "cCpf" size="11" maxlength="11"</label></p>
	
	<p><label for="rg">RG: <input type="rg" name="tRg" id="cRg" size="11" maxlength="11" /></label></p></div><p>
	 <p><label for="cData">Data Da Aula Não Realizada:<input type="date" name="tDatap"id= "tDatap"/></label></p>
	 <p><label for="cData">Data de Reposição:<input type="date" name="tDatar"id= "tDatar"/></label></p>
	 <p><label for="cData">Horario Da Reposição:<input type="time" name="hora"id= "hora"/></label></p>
	
<br/>
<br/>
<input type="submit" value="Gravar"><br>
</font>
</form>
</body>
</html>
