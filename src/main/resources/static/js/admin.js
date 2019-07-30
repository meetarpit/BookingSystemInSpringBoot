/**
 * 
 */

var app=angular.module("myapp",[]);

app.controller("ctrl",function($scope,$http){
	
	
	$scope.adminLoginForm={id:-1,adminEmail:"",password:""};
	
	$scope.adminlogin=function(){
		$http({
			method:"POST",
			url:"adminlogin",
			data:$scope.adminLoginForm
		}).then(function successCallBack(response){
			if(response.data==true){
				console.log("success");
				window.location.href="offer";
			}
			else{
				console.log("Error");
			}		
		});
	}
});