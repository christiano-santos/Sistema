<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html ng-app="consultarRegistrosControllerApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultar Registros</title>

<link rel="stylesheet" type="text/css" href="../resources/css/estilo.css">
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap.css">
<script type="text/javascript" src="../resources/javascript/bootstrap.js"></script>
<script type="text/javascript" src="../resources/javascript/angular.min.js"></script>
<script type="text/javascript" src="../resources/javascript/consultarRegistrosController.js"></script>

</head>
<body class="consulta">
	<h1>Consulta de Registros</h1>
	<table class="table table-striped table-dark" ng-controller="consultarRegistrosController" data-ng-init="init()">
		<thead>
			<tr>
				<th>Código</th>
				<th>Nome</th>
				<th>Login</th>
				<th>Ativo</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr ng-repeat="usuario in usuarios">

				<td>{{ usuario.codigo }}</td>
				<td>{{ usuario.nome }}</td>
				<td>{{ usuario.login }}</td>
				<td>{{ usuario.ativo ? "Sim" : "Não" }}</td>
				<td class="badge badge-warning" ><a ng-href="editarRegistro.html/{{usuario.codigo}}">Editar</a></td>
				<td class="badge badge-danger" ><a href="#" ng-click="excluirRegistro(usuario.codigo)">Excluir</a></td>
			</tr>
		</tbody>
	</table>

	<a class="btn btn-info" href="../">Voltar</a>


</body>
</html>