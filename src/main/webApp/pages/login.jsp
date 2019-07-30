
<!-- Registration page for user -->

<!doctype html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Concept - Bootstrap 4 Admin Dashboard Template</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <script src="js/RegistrationController.js"></script>
    <script src="js/offerController.js"></script>
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
     <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
    <style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
    /**
 * The CSS shown here will not be introduced in the Quickstart guide, but shows
 * how you can use CSS to style your Element's container.
 */
.StripeElement {
  background-color: white;
  height: 40px;
  padding: 10px 12px;
  border-radius: 4px;
  border: 1px solid transparent;
  box-shadow: 0 1px 3px 0 #e6ebf1;
  -webkit-transition: box-shadow 150ms ease;
  transition: box-shadow 150ms ease;
}

.StripeElement--focus {
  box-shadow: 0 1px 3px 0 #cfd7df;
}

.StripeElement--invalid {
  border-color: #fa755a;
}

.StripeElement--webkit-autofill {
  background-color: #fefde5 !important;
}
    </style>
</head>
<!-- ============================================================== -->
<!-- signup form  -->
<!-- ============================================================== -->

<body ng-app="register" ng-controller="registrationController">
    <!-- ============================================================== -->
    <!-- signup form  -->
    <!-- ============================================================== -->
    <div class="container" ng-show="userlistpage">
    
    
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="index.html">Booking</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                        <li class="nav-item">
                            <div id="custom-search" class="top-search-bar">
                                <!-- <input class="form-control" type="text" placeholder="Search.."> -->
                                <form>
                              <div class="form-inline">
                               <input class="form-control" type="text" placeholder="Search.." name="name">
                               <button style="height:35px;width:35px;"><i class="fa fa-search"></i></button>
                               </div>
                              
                              </form>
                            </div>
                        </li>
                       
                        
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/avatar-1.jpg" alt="" class="user-avatar-md rounded-circle"></a>
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name"></h5>
                                    <span class="status"></span><span class="ml-2">Available</span>
                                </div>
                               <iframe style="display: none" src="https://accounts.google.com/Logout"></iframe>
                                <a class="dropdown-item" href="exit"><i class="fas fa-power-off mr-2"></i>Logout</a>
                              
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
     
        
 <div class="row">
                    <!-- ============================================================== -->
                    <!-- basic table  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header">Detail</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered first">
									
									
									<thead><tr>
<th>Name</th>
<th>Description</th>
<th>startDate</th>
<th>endDate</th>
<th>price</th>
</tr>
                                        </thead>
										<tbody>
										  <tr ng-repeat="x in offerList">

<td>{{x.offerName}}</td>
<td>{{x.description}}</td>
<td>{{x.startDate}}</td>
<td>{{x.endDate}}</td>
<td>{{x.price}}</td>
<td><a href="" ng-click="paymentfn1(x)">pay</a></td>

</tr>
										</tbody>
										</table>
										</div>
										</div></div></div></div>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
    
               
            <!-- ============================================================== -->
            <!-- footer -->
        
    </div>
    
   
    
    
    
    
    
    
    
    
    
    
    
    
   
    
    <form class="splash-container" ng-submit="login()" ng-show="loginPage">
        <div class="card">
            <div class="card-header">
                <h3 class="mb-1">Registrations Form</h3>
                <p>Please enter your user information.</p>
            </div>
            <div class="card-body">
                
                 <div class="form-group">
                    <input class="form-control form-control-lg" type="text"  ng-model="registrationForm.email" placeholder="Enter Email" autocomplete="off">
                </div>
                
                <div class="form-group">
                    <input class="form-control form-control-lg" type="password"  ng-model="registrationForm.password" placeholder="Enter password" autocomplete="off">
                </div>
                
                <div class="form-group pt-2">
                    <button class="btn btn-block btn-primary" type="submit">Sign in</button>
                </div>
                      
                </div>
            </div>
            <div class="card-footer bg-white">
                <p>New member? <a href="register" class="text-secondary">Register Here.</a></p>
            </div>
        
    </form>
    <div ng-show="payment">
    
    <table>
 <tr>
 <th>Name</th>
<th>Description</th>
<th>startDate</th>
<th>endDate</th>
<th>price</th>
</tr>
<tr>
<td>{{offers1.offerName}}</td>
<td>{{offers1.price}}</td>
</tr>
    </table>
    
    <form stripe-form="stripeCallback" name="form" >
			<input ng-model="number" placeholder="Card Number" payments-format="card"
			       payments-validate="card" name="card" />
			<input ng-model="expiry" placeholder="Expiration" payments-format="expiry"
			       payments-validate="expiry" name="expiry" />
			<input ng-model="cvc" placeholder="CVC" payments-format="cvc"
			       payments-validate="cvc" name="cvc" />
			<button type="submit">Submit</button>
			<a href="" ng-click="goBack()">go back</a>
		</form>
</div>
		<div ng-if="form.card.$invalid">
			Error: invalid card number!
		</div>
		<div ng-if="form.expiry.$invalid">
			Error: invalid expiration date!
		</div>
		<div ng-if="form.cvc.$invalid">
			Error: invalid CVC!
		</div>

		<!-- Angular, stripe -->
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-rc.0/angular.min.js"></script>
		<script type="text/javascript" src="https://js.stripe.com/v2/"></script>

		<!-- angular-payments library - you probably want to install it through either bower or npm -->
		<script src="http://cdn.rawgit.com/laurihy/angular-payments/2472bc9befa256780d106a8e53a9dea12b7341ed/lib/angular-payments.js"></script>

		<!-- our code -->
  
    
     
  <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
   <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
   <script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
   <script src="assets/vendor/parsley/parsley.js"></script>
    <script src="assets/vendor/datepicker/moment.js"></script>
   <script src="assets/vendor/datepicker/tempusdominus-bootstrap-4.js"></script>
   <script src="assets/vendor/datepicker/datepicker.js"></script>
   <script src="assets/libs/js/main-js.js"></script>
   <script>
   $('#form').parsley();
   </script>
   <script>
   // Example starter JavaScript for disabling form submissions if there are invalid fields
   (function() {
       'use strict';
       window.addEventListener('load', function() {
           // Fetch all the forms we want to apply custom Bootstrap validation styles to
           var forms = document.getElementsByClassName('needs-validation');
           // Loop over them and prevent submission
           var validation = Array.prototype.filter.call(forms, function(form) {
               form.addEventListener('submit', function(event) {
                   if (form.checkValidity() === false) {
                       event.preventDefault();
                       event.stopPropagation();
                   }
                   form.classList.add('was-validated');
               }, false);
           });
       }, false);
   })();
   </script>
</body>

 
</html>