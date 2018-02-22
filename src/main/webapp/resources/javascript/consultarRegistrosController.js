var consultarRegistrosControllerApp = angular.module("consultarRegistrosControllerApp",[]);
 
consultarRegistrosControllerApp.controller("consultarRegistrosController",function($scope, $window, $http){
 
	/*CRIANDO UM ARRAY PARA OS REGISTROS QUE VÃO SER RETORNADOS PELO SPRING*/
	 $scope.usuarios = new Array();
 
 
	 $scope.init = function(){
 
		 /*CHAMA O MÉTODO consultarTodos DO CONTROLLER GERENCIADO PELO SPRING*/
		 //var response = $http.get("consultarTodos");
		 $http.get("consultarTodos").then(successCallback, errorCallback);

		 function successCallback(response){
			 $scope.usuarios = response.data;
			 console.log(response.data);
			}

		 function errorCallback(error){
			 $window.alert(data);
			}
	 }
 
	 /*FUNÇÃO PARA EXCLUIR UM REGISTRO*/	 
	 $scope.excluirRegistro = function(codigo){
 
		 if($window.confirm("Deseja realmente excluir esse registro?")){
 
			 /*CHAMA O MÉTODO DO SPRING PARA EXCLUIR UM REGISTRO*/
			$http.delete("excluirRegistro/" + codigo).then(successCallback, errorCallback);
 
			function successCallback(response){
				
				 $scope.init();
			}
			
			function errorCallback(error){
				
				$window.alert(data);
			}
			  
		 }
 
 
	 }
 
});