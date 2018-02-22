<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE>
<html ng-app="cadastrarControllerApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar</title>

<link rel="stylesheet" type="text/css" href="../resources/css/estilo.css">
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap.css">
<script type="text/javascript" src="../resources/javascript/bootstrap.js"></script>
<script type="text/javascript" src="../resources/javascript/angular.min.js"></script>
<script type="text/javascript" src="../resources/javascript/cadastrarController.js"></script>
 
</head>
<body class="cadastro">
 
<form ng-controller="cadastrarController">
 
	<h1>Novo Cadastro de Usuário</h1>
	<br/>
	<br/>
	<div class="form-group"> 
		<label for="input-nome" >Nome: </label>
		<input type="text" id="input-nome" ng-model="usuarioModel.nome"/>
 	</div>

 	<div class="form-group">
		<label for="input-login">Login: </label>
		<input type="text" id="input-login" ng-model="usuarioModel.login"/>
 	</div>

 	<div class="form-group">
		<label for="input-senha">Senha:</label>
		<input type="password" id="input-senha" ng-model="usuarioModel.senha" />
 	</div>

 	<div class="form-check">
		<label for="input-registroAtivo">Ativo:</label>
		<input type="checkbox" id="input-registroAtivo" ng-model="usuarioModel.ativo"/> 
 	</div>

 	<br/>
 	<br/>
	<p>
		<a class="btn btn-info" href= "../">Voltar</a>
 
		<input class="btn btn-success" type="button" value="Salvar" ng-disabled="!usuarioModel.nome || !usuarioModel.login || !usuarioModel.senha " ng-click="salvarUsuario()"/>
 		
 	</p>
 
 
</form>
 
</body>
</html>