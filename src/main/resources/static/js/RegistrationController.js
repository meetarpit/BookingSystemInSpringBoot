/**
 * 
 This is angular controller for registartion process
 * 
 */
var app=angular.module("register",['angularPayments']);
app.config(function() {
	window.Stripe.setPublishableKey('pk_test_wur0vCdLGVDD6LoLtRkSIosw');
})


	// Stripe Response Handler
	


app.controller("registrationController",function($scope,$http){
	
	

	
	$scope.stripeCallback = function (code, result) {
		if (result.error) {
			window.alert('it failed! error: ' + result.error.message);
		} else {
			window.alert('success! token: ' + result.id);
		}
	};
	
	$scope.stripePublicKey="pk_test_6pRNASCoBOKtIshFeQd4XMUh";
	
	$scope.registrationForm={id:-1,fname:"",lname:"",email:"",password:"",phone:"",gender:"",address:""};
	$scope.adminLoginForm={id:-1,adminEmail:"",password:""};
	$scope.customerList=[];
	$scope.offerList=[];
	$scope.loginPage=true;
	$scope.userlistpage=false;
	$scope.payment=false;
	$scope.offerForm={offerId:-1,offerName:"",description:"",createDate:"",price:"",startDate:"",endDate:""}
	$scope.offers1=[];
	
	
	$scope.paymentfn=function(){
		$scope.payment=true;
		$scope.userlistpage=false;
		$scope.loginPage=false;
	}
	
	$scope.registration = function(){
		$http({
			method:"POST",
			url:"save",
			data:angular.toJson($scope.registrationForm),
			header:{
				'Content-Type':'application/json'
			}
		}).then(_success,_error);
	}
	
	function _success(){
		console.log("Success");
		clearForm();
		window.location.href="login"
		
	}
	
	
	function clearForm(){
		$scope.registrationForm.id=-1;
		$scope.registrationForm.fname="";
		$scope.registrationForm.lname="";
		$scope.registrationForm.email="";
		$scope.registrationForm.password="";
		$scope.registrationForm.phone="";
		$scope.registrationForm.gender="";
		$scope.registrationForm.address="";		
	}
	function _error(){
		console.log("Something is missing");
		alert("Something is missing");
	}
	
	$scope.login=function(){
		$http({
			method:"POST",
			url:"userlogin",
			data:$scope.registrationForm
		}).then(function successCallBack(response){
			if(response.data==true){
				console.log("success");
				$scope.getUserOfferList();
				$scope.loginPage=false;
				$scope.userlistpage=true;
				
			}
			else{
				console.log("Error");
			}
			
		});
	}
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
	 $scope.getUserOfferList=function(){
		 console.log("userlist called");
		   $http({
			   method:"GET",
			   url:"userOfferList"
		   }).then(function success(response){
			   $scope.offerList=response.data;
			   console.log("$scope.offerList"+JSON.stringify(response.data));
		   },function error(){
			   console.log("Error");
		   });
	   }
	   
	$scope.goBack=function(){
		$scope.userlistpage=true;
		$scope.payment=false;
		$scope.loginPage=false;
		
	}
	$scope.paymentfn1=function(x){
		console.log("in payf");
		$http({
			method:"GET",
			url:"pay/"+x.offerId
		}).then(function success(response){
			$scope.offers1=response.data;
			console.log("offers1"+JSON.stringify(response.data));
			$scope.payment=true;
			$scope.userlistpage=false;
			$scope.loginPage=false;
			console.log("payment success");
		},_error);
	}
});