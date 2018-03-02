var testApp = angular.module('testApp', []);

testApp.controller('testController' , function ($scope, $http, $sce) {
    $scope.home = "This is the homepage";
    $scope.getRequest = function () {
        console.log("I've been pressed!");  
	console.log($scope.year)
        $http.get("http://localhost:8080/greeting?name="+$scope.year)
            .then(function successCallback(response){
		$scope.test = response.data.content
		$scope.response = response.data
		console.log($scope.response.data)
            }, function errorCallback(response){
                console.log("Unable to perform get request");
            });
    };
    
});
