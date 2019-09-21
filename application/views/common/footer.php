<!--footer-->
    <div class="footer">
       <p>&copy; 2018 Glance Design Dashboard. All Rights Reserved | Design by>Sahed</a></p>       
    </div>
    <!--//footer-->
    </div>
        
    <!-- new added graphs chart js-->
    <!-- new added graphs chart js-->
    
    <!-- Classie --><!-- for toggle left push menu script -->
        <script src="<?php echo base_url();?>bower_components/js/classie.js"></script>
        <script>
            var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
                showLeftPush = document.getElementById( 'showLeftPush' ),
                body = document.body;
                
            showLeftPush.onclick = function() {
                classie.toggle( this, 'active' );
                classie.toggle( body, 'cbp-spmenu-push-toright' );
                classie.toggle( menuLeft, 'cbp-spmenu-open' );
                disableOther( 'showLeftPush' );
            };
            

            function disableOther( button ) {
                if( button !== 'showLeftPush' ) {
                    classie.toggle( showLeftPush, 'disabled' );
                }
            }
        </script>
    <!-- //Classie --><!-- //for toggle left push menu script -->
        
    <!--scrolling js-->
    <script src="<?php echo base_url();?>bower_components/js/jquery.nicescroll.js"></script>
    <script src="<?php echo base_url();?>bower_components/js/scripts.js"></script>
    <!--//scrolling js-->
    
    <!-- side nav js -->
    <script src='<?php echo base_url();?>bower_components/js/SidebarNav.min.js' type='text/javascript'></script>
    <script>
      $('.sidebar-menu').SidebarNav()
    </script>
    <!-- //side nav js -->
    
    <!-- for index page weekly sales java script -->
    <script src="<?php echo base_url();?>bower_components/js/SimpleChart.js"></script>
    
    <!-- //for index page weekly sales java script -->
    
    
    <!-- Bootstrap Core JavaScript -->
   <script src="<?php echo base_url();?>bower_components/js/bootstrap.js"> </script>
    <!-- //Bootstrap Core JavaScript -->
     <!-- Swal alert Core JavaScript -->
    <script src="<?php echo base_url();?>bower_components/sweetAlert/sweetalert.min.js"></script>
     <!-- Swal alert Core JavaScript -->
</body>
</html>