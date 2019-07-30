<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en"> 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Booking</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script> 
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/datepicker/tempusdominus-bootstrap-4.css" />
     <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <script src="js/offerController.js"></script>         
</head>

<body ng-app="offers" ng-controller="offerController">

  <div class="dashboard-main-wrapper">
  
  
  
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
                                <input class="form-control" type="text" placeholder="Search..">
                            </div>
                        </li>
                        <li class="nav-item dropdown notification">
                            <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-fw fa-bell"></i> <span class="indicator"></span></a>
                            <ul class="dropdown-menu dropdown-menu-right notification-dropdown">
                                <li>
                                    <div class="notification-title"> Notification</div>
                                    <div class="notification-list">
                                        <div class="list-group">
                                            <a href="#" class="list-group-item list-group-item-action active">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="assets/images/avatar-2.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Jeremy Rakestraw</span>accepted your invitation to join the team.
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="assets/images/avatar-3.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">
John Abraham</span>is now following you
                                                        <div class="notification-date">2 days ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="assets/images/avatar-4.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Monaan Pechi</span> is watching your main repository
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="assets/images/avatar-5.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Jessica Caruso</span>accepted your invitation to join the team.
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="list-footer"> <a href="#">View all notifications</a></div>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/avatar-1.jpg" alt="" class="user-avatar-md rounded-circle"></a>
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name">
John Abraham</h5>
                                    <span class="status"></span><span class="ml-2">Available</span>
                                </div>
                                <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Account</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Setting</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-power-off mr-2"></i>Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
     <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                                Menu
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link " href="" ng-click="showList()"><i class="fa fa-fw fa-user-circle"></i>Dashboard </a>
                                
                            </li>
                        
                             <li class="nav-item ">
                                <a class="nav-link active"  href="" ng-click="showForm()"><i class="fab fa-fw fa-wpforms"></i>Booking</a>
                              
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="" ng-click="showList()"><i class="fas fa-fw fa-table"></i>OfferList</a>
                             
                            </li>
                           
                            
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
  
  <div class="dashboard-wrapper">
            <div class="container-fluid  dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Booking </h2>
                          
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Booking</a></li>
                                        
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
             
             
             <div ng-if="offerlist">
             
        <div class="row">
                    <!-- ============================================================== -->
                    <!-- basic table  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header">Offers Detail</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered first">
                                   
<tr>
<th>Name</th>
<th>Description</th>
<th>DateCreated</th>
<th>startDate</th>
<th>endDate</th>
<th>price</th>
<th colspan='3'>Settings</th>
</tr>
<tr ng-repeat="x in offerList">
<td>{{x.offerName}}</td>
<td>{{x.description}}</td>
<td>{{x.createDate}}</td>
<td>{{x.startDate | date : "dd-MM-y"}}</td>
<td>{{x.endDate | date : "dd-MM-y"}}</td>
<td>{{x.price}}</td>
<td><a href="" ng-click="editOffers(x)">Edit</a></td>
<td><a href="" ng-click="deleteOffers(x,$index)">delete</a></td>
<td><a href="" ng-click="post(x)">post</a></td>
</tr>
</table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end basic table  -->
                    <!-- ============================================================== -->
                </div>
             
             
             
             </div>
             
             
                    <div class="row" ng-if="offerform">
                        <!-- ============================================================== -->
                        <!-- validation form -->
                        <!-- ============================================================== -->
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">Booking Form</h5>
                                <div class="card-body">
                               <form ng-submit="offerSubmit()">
                                        <div class="row">
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 form-group">
                                                <label for="validationCustom01">Offer Name</label>
                                                <!-- <input type="text" class="form-control" id="validationCustom01" placeholder="First name" value="Mark" required> -->
                                                <input type="text" ng-model="offerForm.offerName" name="offerName"  class="form-control" id="validationCustom01" required>
                                               <div data-ng-if="!offerForm.offerName.$valid">
                                               <p style="color:red">Please Enter Offer Name</p>
                                               </div>                                                
                                            </div>
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 form-group">
                                                <label for="validationCustom02">Description</label>
                                                <!-- <input type="text" class="form-control" id="validationCustom02" placeholder="Last name" value="Otto" required> -->
                                                    <input type="text" ng-model="offerForm.description" name="description"  class="form-control" id="validationCustom01" value="Mark" required>
                                                <div data-ng-if="!offerForm.description.$valid">
                                               <p style="color:red">Please Enter Description</p>
                                               </div>
                                            </div>
                                            
                                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12 mb-2 form-group">
                                                <label for="validationCustomUsername">Price</label>
                                                <div class="input-group">
                                                   
                                                   
                                                   <input type="text" ng-model="offerForm.price" name="price"  class="form-control" id="validationCustom01" required>
                                                  
                                                </div>
                                                <div data-ng-if="!offerForm.price.$valid">
                                               <p style="color:red">Please Enter Price</p>
                                               </div>
                                            </div>
                                       
                                       
                                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12 mb-2 form-group">
                                        <label>Start Date</label>
                                        <div class="input-group date" id="datetimepicker4" data-target-input="nearest">
                                            <input name="startDate"  ng-model="offerForm.startDate" type="date" class="form-control"  formatDate>
                                            <div class="input-group-append" data-target="#datetimepicker4" data-toggle="datetimepicker">
                                            
                                            </div>
                                     
                                    </div>
                                     <div data-ng-if="!offerForm.startDate.$valid">
                                               <p style="color:red;">Please Enter Start Date</p>
                                               </div>
                                </div>
   
                                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12 mb-2 form-group">
                                        <label>End Date</label>
                                        <div class="input-group date" id="datetimepicker4" data-target-input="nearest">
                                            <input name="startDate"  ng-model="offerForm.endDate" type="date" class="form-control"  formatDate>
                                            <div class="input-group-append" data-target="#datetimepicker4" data-toggle="datetimepicker">
                                            
                                            </div>
                                      
                                    </div>
                                     <div data-ng-if="!offerForm.endDate.$valid">
                                               <p style="color:red">Please Enter End Date</p>
                                               </div>
                                </div>
                                      
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                <button class="btn btn-primary" type="submit">Create Offer</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- ============================================================== -->
                        <!-- end validation form -->
                        <!-- ============================================================== -->
                    </div>
                    
                
           
            </div>
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <div class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                             &nbsp;
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 text-right">
                            Copyright � 2018 Concept. All rights reserved. 
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
  </div>
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
