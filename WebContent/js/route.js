// route.js

    // create the module and name it routApp
    // also include ngRoute for all our routing needs
    var routeApp = angular.module('routeApp', []);
    //var routeApp = angular.module('routeApp', ['ngResource','smart-table']);
    
	
	routeApp.controller("display",  ["$scope", "$http", function($scope, $http) {
		$http.get('http://localhost:8089/PartnerRest/users/list/all').success(function(data) {
			$scope.persons = data.persons;            
		});
	}]);
		
	
	
	routeApp.controller('searchPerson',["$scope", "$http", function($scope, $http){
		
	    $scope.firstName= "John";
	    $scope.lastName= "Chasteen";
	    //var u = "rest/user/search/" + $scope.lastName;
	    $scope.complete = function(){	    	
	    	  
	    	$http.get('http://localhost:8089/PartnerRest/users/person/' + $scope.lastName).success(function(data) {
	   			$scope.result = data;            
	   		});	    
	   
	    	}
	    
	  
	}]);
	
	// Table Controller
	routeApp.controller('WithAjaxCtrl', function ($http, DTOptionsBuilder, DTColumnDefBuilder) {
	    var vm = this;
		vm.results = [];
	    vm.dtOptions = DTOptionsBuilder.newOptions().withPaginationType('full_numbers').withDisplayLength(10);
	    vm.dtColumnDefs = [
	                       DTColumnDefBuilder.newColumnDef(0),
	                       DTColumnDefBuilder.newColumnDef(1),
	                       DTColumnDefBuilder.newColumnDef(2)
       ];
	                       
       $http.get('http://localhost:8089/PartnerRest/assets/list/meters').success(function(data) {
    	   vm.results = data.metering_units;            
	   });
	    
	 });
	
	
	routeApp.controller("asset",  ["$scope", "$http", function($scope, $http) {
		
		$scope.itemsByPage=20;	
		
		$http.get('http://localhost:8089/PartnerRest/assets/list/meters').success(function(data) {
			
			$scope.result = data.metering_units;            
		});
	}]);
	
	
	
	
	

    // create the controller and inject Angular's $scope
    routeApp.controller('MainController', function($scope) {			
    });
	
	// create the controller and inject Angular's $scope
    routeApp.controller('PortfolioController', function($scope) {			
    });
	
	/*routApp.controller('ModalDemoCtrl', function ($scope, $modal, $log) {

		$scope.items = ['item1', 'item2', 'item3'];

		$scope.animationsEnabled = true;

	  $scope.open = function (size) {

			var modalInstance = $modal.open({
			  animation: $scope.animationsEnabled,
			  templateUrl: 'myModalContent.html',
			  controller: 'ModalInstanceCtrl',
			  size: size,
			  resolve: {
				items: function () {
				  return $scope.items;
				}
			  }
			});
	
	routApp.controller('contactController', function($scope) {
		$scope.master = {firstName: "John", lastName: "Doe"};
		$scope.reset = function() {
			$scope.user = angular.copy($scope.master);
		};
    $scope.reset();
});*/
	
	