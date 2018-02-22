var editarRegistroControllerApp = angular.module("editarRegistroControllerApp",[]);
 
editarRegistroControllerApp.controller("editarRegistroController",function($scope, $window, $http){
 
	/*DEFININDO O MODELO PARA O NOSSO FORMULÁRIO*/
	function initVar(){
		
		$scope.codigo = null;
		$scope.nome   = null;
		$scope.login  = null;
		$scope.senha  = null;
		$scope.ativo  = null;
		
	}
	
 
	$scope.alterarUsuario = function(){
 
		/*DEFINI O OBJETO QUE VAI SER ENVIADO VIA AJAX PELO ANGULARJS*/
		var usuarioModel =  new Object();
		usuarioModel.codigo = $scope.codigo;
		usuarioModel.nome   = $scope.nome;
		usuarioModel.login  = $scope.login;
		usuarioModel.senha  = $scope.senha;		
		usuarioModel.ativo  = $scope.ativo;	
 
		/*EXECUTA O POST PARA ALTERAR O REGISTRO*/
		$http.post("../alterar", usuarioModel).then(successCallback, errorCallback);
 
		function successCallback(response){
			console.log(response.data.codigo)
			console.log(response)
			/*MOSTRA O RESULTADO QUE RETORNOU DO SPRING*/
			 if(response.data.codigo == 1){
				 
				 /*MENSAGEM DE SUCESSO*/
				 $window.alert(response.data.mensagem);
	 
				 /*REDIRECIONA APÓS ALTERARMOS O REGISTRO*/
				 window.location.href = "../consultarRegistros.html";
	 
			 }
			 else{
	 
				 /*MOSTRA O ERRO TRATO PELO SPRING (OBJETO ResultadoModel)*/
				 $window.alert(response.data.mensagem);
				 console.log($scope.codigo);
				 console.log($scope.nome);
				 console.log($scope.login);
				 console.log($scope.senha);
				 console.log($scope.ativo);
				 console.log(usuarioModel.codigo);
				 console.log(usuarioModel.nome);
				 console.log(usuarioModel.login);
				 console.log(usuarioModel.senha);
				 console.log(usuarioModel.ativo);
			 }

		}
		
		function errorCallback(error){
			
			$window.alert(error);
			
		}		
 
	};
 
});