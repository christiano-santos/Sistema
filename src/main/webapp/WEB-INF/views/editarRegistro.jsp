<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<!DOCTYPE>
<html ng-app="editarRegistroControllerApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar Registro</title>
 
<script type="text/javascript" src="<spring:url value="/resources/javascript/angular.min.js"/>"></script>
<script type="text/javascript" src="<spring:url value="/resources/javascript/editarRegistroController.js"/>"></script>
<script type="text/javascript" src="<spring:url value="/resources/javascript/bootstrap.js"/>"></script>
<link rel="stylesheet" type="text/css" href="<spring:url value='/resources/css/estilo.css'/>">
<link rel="stylesheet" type="text/css" href="<spring:url value='/resources/css/bootstrap.css'/>">

</head>

<body class="cadastro">
 
<form ng-controller="editarRegistroController">
 
	<h1>Editar Cadastro de Usuário</h1>
	<br/>
	<br/>
 	<div class="form-group"> 
		<label for="input-codigo" >Código:</label>
		<input type="text" id="input-codigo" ng-model="codigo" readonly="readonly"  ng-init="codigo='${usuarioModel.codigo}'"/>
 	</div>

 	<div class="form-group"> 
	<label for="input-nome" >Nome:</label>
	<input type="text" id="input-nome" ng-model="nome"  ng-init="nome='${usuarioModel.nome}'"/>
 	</div>

 	<div class="form-group"> 
		<label for="input-login">Login:</label>
		<input type="text" id="input-login" ng-model="login" ng-init="login='${usuarioModel.login}'"/>
 	</div>

 	<div class="form-group"> 
		<label for="input-senha">Senha:</label>
		<input type="password" id="input-senha" ng-model="senha" ng-init="senha='${usuarioModel.senha}'" ng-maxlength="10"/>
 	</div>

 	<div class="form-check">
		<label for="input-registroAtivo">Ativo:</label>
		<input type="checkbox" id="input-registroAtivo" ng-model="ativo" ng-init='${usuarioModel.ativo ? "ativo=true" : ""}' ng-true-value="true" ng-false-value="" /> 
 	</div>
	<br/><br/>
 
	<p>
		<a class="btn btn-info" href= "../consultarRegistros.html">Voltar</a>
 
		<input class="btn btn-success" type="button" value="Salvar" ng-click="alterarUsuario()"/>
 
	</p>
 
</form>
 
 
 
 
</body>
</html>