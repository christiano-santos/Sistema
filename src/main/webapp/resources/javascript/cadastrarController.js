var cadastrarControllerApp = angular.module("cadastrarControllerApp",[]);
 
cadastrarControllerApp.controller("cadastrarController",function($scope, $window, $http){
 
	
	/*DEFININDO O MODELO PARA O NOSSO FORMULÁRIO*/
	$scope.usuarioModel = [
		{nome: "", login: "", senha: "", ativo: ""}
	];
 
	$scope.salvarUsuario = function(){
	
		var usuarioModel =  new Object();
	
		usuarioModel.nome  = $scope.usuarioModel.nome;
		usuarioModel.login = $scope.usuarioModel.login;
		usuarioModel.senha = $scope.usuarioModel.senha;	
		usuarioModel.ativo = $scope.usuarioModel.ativo;	
		
		/*EXECUTA O POST PARA SALVAR O REGISTRO*/
		//var response = $http.post("salvar", usuarioModel);
		$http.post("salvar", usuarioModel).then(successCallback, errorCallback);
		console.log(usuarioModel);
		function successCallback(response){
		 
			/*MOSTRA O RESULTADO QUE RETORNOU DO SPRING*/
			 if(response.data.codigo == 1){
	 
				 /*MENSAGEM DE SUCESSO*/
				 $window.alert(response.data.mensagem);
	 
				 /*LIMPA OS CAMPOS APÓS SALVAR O REGISTRO COM SUCESSO*/
				 $scope.usuarioModel.nome  = null;
				 $scope.usuarioModel.login = null;
				 $scope.usuarioModel.senha = null;
				 $scope.usuarioModel.ativo = null;
			 }
			 else{
	 
				 /*MOSTRA O ERRO TRATO PELO SPRING (OBJETO ResultadoModel)*/
				 $window.alert(response.data.mensagem);
	 
			 }
		}
		 
		function errorCallback(error){
			
			$window.alert(error);
		} 
 
	};
 
});