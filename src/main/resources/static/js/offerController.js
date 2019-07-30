/**
 * 
 This is a controller for offers 
 */
var app= angular.module("offers",[]);
app.controller("offerController",function($scope,$http){
	$scope.offerForm={offerId:-1,offerName:"",description:"",createDate:"",price:"",startDate:"",endDate:""}
	$scope.offerList=[];
	$scope.offerform=false;
	$scope.offerlist=true;
	
	console.log("contrller");
	
	
	
	
	getAllOffers();
	
	
	$scope.showList=function(){
		$scope.offerform=false;
		$scope.offerlist=true;
		 
	}
	$scope.showForm=function(){
		$scope.offerform=true;
		$scope.offerlist=false;
		 $scope.clearForm();
	}
	
	$scope.offerSubmit=function(){
		var method="";
	    var url="";
	if($scope.offerForm.offerId==-1){
		method="POST";
		url="makeOffers";
	}
	else{
		
		method="PUT";
			url="editOffers/"+$scope.offerForm.offerId;
	}
	
	$http({
		method:method,
		url:url,
		data:angular.toJson($scope.offerForm),
		header:{
			'Content-Type':'application/json'
		}
	}).then(_success,_error);
	
	}
	function _success(){
		getAllOffers();
		console.log("offerForm.startDate"+$scope.offerForm.startDate);
		$scope.offerform=false;
		$scope.offerlist=true;
		
	}
	function _error(){
		console.log("Something is missing in offers");
	}
	function getAllOffers(){
		$http({
			method:"GET",
			url:"offerList"
		}).then(function successCall(response){
			$scope.offerList=response.data;
		},function errorCall(){
			console.log("Error in OffersList");
		});	
	}
	
	$scope.editOffers=function(offervar){
		$scope.offerForm.offerId=offervar.offerId;
		$scope.offerForm.offerName=offervar.offerName;
		$scope.offerForm.description=offervar.description;
		$scope.offerForm.price=offervar.price;
		$scope.offerForm.startDate=offervar.startDate;
		$scope.offerForm.endDate=offervar.endDate;	
		$scope.offerform=true;
		$scope.offerlist=false;
	}
	
	$scope.deleteOffers=function(offervar,i){
		alert("Are You Sure You Want To Delete It?")
		$http({
			method:"DELETE",
			url:"delete/"+offervar.offerId
		}).then(function success(){
			console.log("Deleted")
		},_error);				
		$scope.offerList.splice(i,1);	
	}
	
	
	$scope.post=function(offervar){
		$http({
			method:"GET",
			url:"post/"+offervar.offerId,
			
		}).then(_success,_error);
	}
	
  $scope.clearForm=function(){
	  $scope.offerForm.offerId=-1;
		$scope.offerForm.offerName="";
		$scope.offerForm.description="";
		$scope.offerForm.price="";
		$scope.offerForm.startDate="";
		$scope.offerForm.endDate="";	
		$scope.offerform=true;
		$scope.offerlist=false;
  }
	
	
});