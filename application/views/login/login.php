<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login :: Hotel</title>
    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Modernize Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta Tags -->

    <!-- Style-sheets -->
    <!-- Bootstrap Css -->
    <link href="<?php echo base_url();?>bower_components/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Bootstrap Css -->
    <!-- Common Css -->
    <link href="<?php echo base_url();?>bower_components/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--// Common Css -->
    <!-- Fontawesome Css -->
    <link href="<?php echo base_url();?>bower_components/css/font-awesome.css" rel="stylesheet">
    <!--// Fontawesome Css -->
    <!--// Style-sheets -->

    <!--web-fonts-->
    <link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <!--//web-fonts-->
</head>

<body>
    <div class="bg-page py-5">
        <div class="container">
            <!-- main-heading -->
            <h2 class="main-title-w3layouts mb-2 text-center text-white">Login</h2>
            <!--// main-heading -->
                    <div id="page-wrapper">
            <div class="main-page login-page ">
                <h2 class="title1">Login</h2>
                <div class="widget-shadow">
                    <div class="login-body">
                        <form action="<?php echo base_url();?>Home/dashoard" method="post">
                            <input type="text" class="user emailStyle" name="email" placeholder="Enter Your Email" required="">
                            <input type="password" name="password" class="lock" placeholder="Password" required="">
                            <div class="forgot-grid">
                                <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Remember me</label>
                                <div class="forgot">
                                    <a href="#">forgot password?</a>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <input type="submit" name="Sign In" value="Sign In">
                            <div class="registration">
                                Don't have an account ?
                                <a class="" href="signup.html">
                                    Create an account
                                </a>
                            </div>
                        </form>
                    </div>
                </div>
                
            </div>
        </div>

        </div>
    </div>
  
    <!-- Js for bootstrap working-->
    <script src="<?php echo base_url();?>bower_components/js/bootstrap.js"> </script>

</body>
</html>

