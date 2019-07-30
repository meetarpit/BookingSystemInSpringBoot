
<!-- Registration page for user -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
 
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
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
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
    </style>
</head>
<!-- ============================================================== -->
<!-- signup form  -->
<!-- ============================================================== -->

<body ng-app="register" ng-controller="registrationController">
    <!-- ============================================================== -->
    <!-- signup form  -->
    <!-- ============================================================== -->
    <form class="splash-container" ng-submit="registration()">
        <div class="card">
            <div class="card-header">
                <h3 class="mb-1">Registrations Form</h3>
                <p>Please enter your user information.</p>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text"  ng-model="registrationForm.fname" placeholder="Enter First Name" autocomplete="off">
                </div>
                
                
                 <div class="form-group">
                    <input class="form-control form-control-lg" type="text"  ng-model="registrationForm.lname" placeholder="Enter Last Name" autocomplete="off">
                </div>
                
                 <div class="form-group">
                    <input class="form-control form-control-lg" type="text"  ng-model="registrationForm.email" placeholder="Enter Email" autocomplete="off">
                </div>
                
                <div class="form-group">
                    <input class="form-control form-control-lg" type="password"  ng-model="registrationForm.password" placeholder="Enter password" autocomplete="off">
                </div>
                
                 <div class="form-group">
                    <input class="form-control form-control-lg" type="password"  ng-model="registrationForm.phone" placeholder="Enter phone number" autocomplete="off">
                </div>
                
                 <div>
               <label class="custom-control custom-radio custom-control-inline">
                                               <input type="radio" ng-model="registrationForm.gender" class="custom-control-input" value="M"><span class="custom-control-label">male</span>
                                           </label>
                                              <div>
               <label class="custom-control custom-radio custom-control-inline">
                                               <input type="radio" ng-model="registrationForm.gender" class="custom-control-input" value="F"><span class="custom-control-label">Female</span>
                                           </label>
                </div>
                 <div class="form-group">
                    <input class="form-control form-control-lg" type="text"  ng-model="registrationForm.address" placeholder="Enter address" autocomplete="off">
                </div>
                
                <div class="form-group pt-2">
                    <button class="btn btn-block btn-primary" type="submit">Register My Account</button>
                </div>
                
                
                    
                </div>
            </div>
            <div class="card-footer bg-white">
                <p>Already member? <a href="/" class="text-secondary">Login Here.</a></p>
            </div>
        </div>
    </form>
</body>

 
</html>