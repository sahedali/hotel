app.controller('RoomController', function(dataFactory,$scope,$http,$rootScope,$routeParams){
	
	
	$scope.init = function(){
	$http.get($rootScope.baseUrl+'Room/getRoomDetails')
		  .then(function(response) {
		    $scope.roomDetails = response.data;
		  });
	$http.get($rootScope.baseUrl+'Room/getCategoryDetails')
	  .then(function(response) {
	    $scope.CategoryDetails = response.data;
	  });
	}
	$scope.editObject ={};
	$scope.addEditflag=false;
	$scope.addRoom = function(){
		$scope.editObject ={};
		$scope.addEditflag=true;
	}
	$scope.RoomValidation = function (roomObject){
		
	if(roomObject==undefined || roomObject.room_number == undefined || 
	   roomObject.categoryId == undefined  || roomObject.room_number == "" || roomObject.categoryId == "" ){
	    	swal({
	              title: 'Required Error!',
	              text: 'Please provied all field.',
	              icon: 'error'
	            }).then(function() {
	            });
				return true;
	}
	}
	
	
	$scope.saveRoom =function(){
		if($scope.RoomValidation($scope.editObject)){
			return false;
		}
	$http.post($rootScope.baseUrl+'Room/saveRoom',$scope.editObject)
	  .then(function(response) {
	    if(response.data==1){
	    	document.getElementById('closed').click();
	    	swal({
	              title: 'Save!',
	              text: 'Saved Succesfully.',
	              icon: 'success'
	            }).then(function() {
	    			$scope.init();
	            });

		}
	  });
	}
	
	$scope.updateRoom =function(){
		if($scope.RoomValidation($scope.editObject)){
			return false;
		}
	$http.post($rootScope.baseUrl+'Room/updateRoom',$scope.editObject)
	  .then(function(response) {
	    if(response.data==1){
			document.getElementById('closed').click();
			swal({
	              title: 'Update!',
	              text: 'Update Succesfully.',
	              icon: 'success'
	            }).then(function() {
	    			$scope.init();
	            });
		}
	  });
	}

	$scope.deleteRoom =function(){
	swal({
        title: "Are you sure you want to delete this?",
        text: "You will not be able to recover!",
        icon: "warning",
        buttons: [
          'No, cancel it!',
          'Yes, I am sure!'
        ],
        dangerMode: true,
      }).then(function(isConfirm) {
        if (isConfirm) {
      	  $http.post($rootScope.baseUrl+'Room/deleteRoom',$scope.editObject)
      	  .then(function(response) {
      	    if(response.data==1){
      	    	document.getElementById('closed').click();
      	    	swal({
    	              title: 'Delete!',
    	              text: 'Delete Succesfully.',
    	              icon: 'success'
    	            }).then(function() {
	        			$scope.init();
    	            });
      		}
      	  });
        } else {
          swal("Cancelled", "Not Delete)", "error");
        }
      });
	
	
	
	}
	
	$scope.editRoom = function(rm){
		$scope.editObject = rm;
		$scope.addEditflag=false;
	}   
});


app.controller('RoomCategoryController', function($scope,$http,$rootScope){
	$scope.init = function(){
		
		$scope.curPage = 1,
		  $scope.itemsPerPage = 10,
		  $scope.maxSize = 5;
		//this.items = $scope.CategoryDetails;
		//$scope.CategoryDetails =[];
	$http.get($rootScope.baseUrl+'Room/getCategoryDetails')
	  .then(function(response) {
	    $scope.CategoryDetails = response.data;
	    
	    $scope.numOfPages = function () {
		    return Math.ceil($scope.CategoryDetails.length / $scope.itemsPerPage);
		    
		  };
		    $scope.$watch('curPage + numPerPage', function() {
		    var begin = (($scope.curPage - 1) * $scope.itemsPerPage),
		    end = begin + $scope.itemsPerPage;
		    $scope.CategoryDetailss = $scope.CategoryDetails.slice(begin, end);
		  });
		    
	   // $scope.CategoryDetailss = $scope.CategoryDetails;
	  });
	
	  
	    
	  // 
	  
	  
	  
	
	
	
	}
	$scope.roomCategory ={};
	$scope.addEditflag=false;
	
	$scope.editRoomCat = function(rm){
		$scope.roomCategory = rm;
		$scope.addEditflag=false;
	} 

	$scope.addRoomCat = function(){
		$scope.roomCategory ={};
		$scope.addEditflag=true;
	}
	
	/*$scope.checkProperties =function (obj) {
	var count =0;
    for (var key in obj) {
        if (obj[key] !== null && obj[key] != ""){
			count++;
		}
    }
	if(Object.keys(obj).length == count){
		return true;
	}else{
	return false;
	}
	}*/
	
	$scope.saveRoomCat =function(){

	if($scope.RoomcatValidation($scope.roomCategory)){
		return false;
	}
		
	$http.post($rootScope.baseUrl+'Room/saveRoomCat',$scope.roomCategory)
	  .then(function(response) {
	    if(response.data==1){
	    	document.getElementById('closed').click();
	    	swal({
	              title: 'Save!',
	              text: 'Saved Succesfully.',
	              icon: 'success'
	            }).then(function() {
	            	
	    			$scope.init();
	            });
		}
	  });
	}
	
	$scope.RoomcatValidation = function (roomCategory){
		if(roomCategory==undefined || roomCategory.name == undefined || 
	roomCategory.description == undefined || roomCategory.week_days_price == undefined || roomCategory.weekend_price== undefined 
	|| roomCategory.name == "" || 
	roomCategory.description == "" || roomCategory.week_days_price == "" || roomCategory.weekend_price== "" 
	){
	    	swal({
	              title: 'Required Error!',
	              text: 'Please provied all field.',
	              icon: 'error'
	            }).then(function() {
	            });
				return true;
	}
	}
	
	$scope.updateRoomCat =function(){
		
	if($scope.RoomcatValidation($scope.roomCategory)){
		return false;
	}
		
	$http.post($rootScope.baseUrl+'Room/updateRoomCat',$scope.roomCategory)
	  .then(function(response) {
	    if(response.data==1){
	    	document.getElementById('closed').click();
	    	swal({
	              title: 'Update!',
	              text: 'Update Succesfully.',
	              icon: 'success'
	            }).then(function() {
	            	
	    			$scope.init();
	            });
		}
	  });
	}

	$scope.deleteRoomCat =function(){
		
		swal({
	          title: "Are you sure you want to delete this?",
	          text: "You will not be able to recover!",
	          icon: "warning",
	          buttons: [
	            'No, cancel it!',
	            'Yes, I am sure!'
	          ],
	          dangerMode: true,
	        }).then(function(isConfirm) {
	          if (isConfirm) {
	        	  $http.post($rootScope.baseUrl+'Room/deleteRoomCat',$scope.roomCategory)
	        	  .then(function(response) {
	        	    if(response.data==1){
	        	    	document.getElementById('closed').click();
	        	    	swal({
	      	              title: 'Delete!',
	      	              text: 'Delete Succesfully.',
	      	              icon: 'success'
	      	            }).then(function() {
		        			$scope.init();
	      	            });
	        		}
	        	  });
	          } else {
	            swal("Cancelled", "Not Delete)", "error");
	          }
	        });
	}
});



app.controller('RoomPriceController', function($scope,$http,$rootScope){
	$scope.init = function(){
	$http.get($rootScope.baseUrl+'Room/getCategoryDetails')
	  .then(function(response) {
	    $scope.CategoryDetails = response.data;
	  });
	
	$http.get($rootScope.baseUrl+'Room/getPriceDetails')
	  .then(function(response) {
	    $scope.getPriceDetails = response.data;
	  });
	
	}
	
	$scope.formatDate = function(date){
        return new Date(date);
  };
	
	
	$scope.roomCategory ={};
	$scope.addEditflag=false;
	
	$scope.addRoomPrice =function(){
		$scope.roomPrice={};
		$scope.addEditflag=true;
	}
	
	$scope.editRoomPrice = function(rm){
		$scope.roomPrice = rm;
		$scope.roomPrice.start_date=$scope.formatDate(rm.start_date);
		$scope.roomPrice.end_date=$scope.formatDate(rm.end_date);
		$scope.addEditflag=false;
	} 

	$scope.addRoomCat = function(){
		$scope.roomCategory ={};
		$scope.addEditflag=true;
	}
	
	$scope.RoomPriceValidation = function(roomObject){
	if(roomObject==undefined || roomObject.categoryId == undefined || 
	roomObject.amount == undefined || roomObject.start_date == undefined || roomObject.end_date== undefined 
	|| roomObject.categoryId == "" || 
	roomObject.amount == "" || roomObject.start_date == "" || roomObject.end_date== ""
	){
	    	swal({
	              title: 'Required Error!',
	              text: 'Please provied all field.',
	              icon: 'error'
	            }).then(function() {
	            });
				return true;
	}
	}
	
	$scope.saveRoomPrice =function(){
		if($scope.RoomPriceValidation($scope.roomPrice)){
			return false;
		}
	$http.post($rootScope.baseUrl+'Room/saveRoomPrice',$scope.roomPrice)
	  .then(function(response) {
	    if(response.data==1){
	    	document.getElementById('closed').click();
	    	swal({
	              title: 'Save!',
	              text: 'Saved Succesfully.',
	              icon: 'success'
	            }).then(function() {
      			$scope.init();
	            });
		}
	  });
	}
	
	$scope.updateRoomPrice =function(){
		if($scope.RoomPriceValidation($scope.roomPrice)){
			return false;
		}
	$http.post($rootScope.baseUrl+'Room/updateRoomPrice',$scope.roomPrice)
	  .then(function(response) {
	    if(response.data==1){
	    	document.getElementById('closed').click();
	    	swal({
	              title: 'Update!',
	              text: 'Update Succesfully.',
	              icon: 'success'
	            }).then(function() {
    			$scope.init();
	            });
		}
	  });
	}

	$scope.deleteRoomPrice =function(){
		
		swal({
	          title: "Are you sure you want to delete this?",
	          text: "You will not be able to recover!",
	          icon: "warning",
	          buttons: [
	            'No, cancel it!',
	            'Yes, I am sure!'
	          ],
	          dangerMode: true,
	        }).then(function(isConfirm) {
	          if (isConfirm) {
	        	  $http.post($rootScope.baseUrl+'Room/deleteRoomPrice',$scope.roomPrice)
	        	  .then(function(response) {
	        	    if(response.data==1){
	        	    	document.getElementById('closed').click();
	        	    	swal({
	      	              title: 'Delete!',
	      	              text: 'Delete Succesfully.',
	      	              icon: 'success'
	      	            }).then(function() {
		        			$scope.init();
	      	            });
	        		}
	        	  });
	          } else {
	            swal("Cancelled", "Not Delete)", "error");
	          }
	        });
 }
	
  
});


app.controller('BookingController', function($rootScope,$scope,$http,$filter,$routeParams){
    //booking edit 
	
	$scope.getBookingDetails = function(){
		
	}
	
	// booking edit end here 
	$scope.init = function(){
		$http.get($rootScope.baseUrl+'Booking/getMasterId')
		  .then(function(response) {
		    $scope.getIdMaster = response.data;
		  }); 
	}

	$scope.form = [];
	$scope.form1 ={};
    $scope.files = [];
	$scope.srch ={};
    $scope.form1.start_date_v = new Date();
    $scope.form1.end_date_v = new Date();
	$scope.dateValidation = function(){
		$scope.form1.end_date_v = $scope.form1.start_date.setDate($scope.form1.start_date.getDate() + 1); 
	}
    $scope.getRoom = function (){
    	$scope.weekendFlg = false;
    	var start_date = $filter('date')($scope.form1.start_date, "yyyy-MM-dd");
    	var end_date = $filter('date')($scope.form1.end_date, "yyyy-MM-dd");
    	$scope.data = {
    			'start_date':start_date,
    			'end_date':end_date
    	};
    	$http.post($rootScope.baseUrl+'Booking/getRoomFoorBooking',$scope.data)
  	  .then(function(response) {
		    $scope.getroomDetails = response.data;
			if(new Date($scope.form1.start_date).getDay()==6 || new Date($scope.form1.start_date).getDay() == 0){ // saturday sunday 
			$scope.weekendFlg = true;
			}
  	  });
    	
		
	}
	$scope.searchformobile = function (){
		if($scope.form1.m_no.length>9){
			$scope.data = {
			"mobileNo":$scope.form1.m_no//$scope.srch.searchId
		};
		$http.post($rootScope.baseUrl+'Booking/searchCustomer',$scope.data)
  	  .then(function(response) {
		  var cusDetails =response.data;
		  if(cusDetails!=undefined){
			  try{
			  $scope.form1.id = cusDetails[0].id;
			  $scope.form1.name = cusDetails[0].name;
			  $scope.form1.age = Number(cusDetails[0].age);
			  $scope.form1.gender = cusDetails[0].gender;
			  $scope.form1.email = cusDetails[0].email_id;
			  $scope.form1.m_no = cusDetails[0].ph_number;
			  $scope.form1.idType = cusDetails[0].id_type;
			  $scope.form1.idValue = cusDetails[0].id_value;
			  $scope.image_source = $rootScope.baseUrl+'bower_components/CustomarImage/'+cusDetails[0].id+'.jpg';
			  }catch(e){
			  $scope.form1.id = "";
			  $scope.form1.name = "";
			  $scope.form1.age = "";
			  $scope.form1.gender = "";
			  $scope.form1.email = "";
			  $scope.form1.m_no = "";
			  $scope.form1.idType = "";
			  $scope.form1.idValue = "";
			  $scope.image_source=$rootScope.baseUrl+'bower_components/CustomarImage/0.jpg';
			  }
		  }
  	  });
		}else{
			//alert("Not success");
		}
	}
	$scope.search=function (){
		$scope.data = {
			"mobileNo":$scope.srch.searchId
		};
		$http.post($rootScope.baseUrl+'Booking/searchCustomer',$scope.data)
  	  .then(function(response) {
		  var cusDetails =response.data;
		  if(cusDetails!=undefined){
			  try{
		      $scope.form1.id = cusDetails[0].id;
			  $scope.form1.name = cusDetails[0].name;
			  $scope.form1.age = Number(cusDetails[0].age);
			  $scope.form1.gender = cusDetails[0].gender;
			  $scope.form1.email = cusDetails[0].email_id;
			  $scope.form1.m_no = cusDetails[0].ph_number;
			  $scope.form1.idType = cusDetails[0].id_type;
			  $scope.form1.idValue = cusDetails[0].id_value;
			  $scope.image_source = $rootScope.baseUrl+'bower_components/CustomarImage/'+cusDetails[0].id+'.jpg';
			  }catch(e){
			  $scope.form1.id = "";
			  $scope.form1.name = "";
			  $scope.form1.age = "";
			  $scope.form1.gender = "";
			  $scope.form1.email = "";
			  $scope.form1.m_no = "";
			  $scope.form1.idType = "";
			  $scope.form1.idValue = "";
			  $scope.image_source=$rootScope.baseUrl+'bower_components/CustomarImage/0.jpg';
			  }
		  }
  	  });
	}
	$scope.getamountDetails = function (rm,flg,getPriceflg){
		if(rm.flg==1){ // date wise price 
			if(getPriceflg==0){
				return rm.amount;
			}else{
				return rm.room_number+'( '+ rm.category + '/'+ rm.amount +' )';
			}
			
		}else{ // defult prices 
			if(flg==true){ // weekend 
				if(getPriceflg==0){
				return rm.weekend_price;
			}else{
				return rm.room_number+'( '+ rm.category + '/'+ rm.weekend_price +' )';
			}
			}else{ // weeksdays
			if(getPriceflg==0){
				return rm.week_days_price;
			}else{
				return rm.room_number+'( '+ rm.category + '/'+ rm.week_days_price +' )';
			}
			}
		}
		
	}
	$scope.bookingValidation = function(Obj){
		if(Obj==undefined || Obj.roomId == undefined || Obj.name == undefined || Obj.gender== undefined  || Obj.age == undefined || Obj.email == undefined || Obj.m_no == undefined || Obj.idType == undefined || Obj.idValue == undefined || Obj.roomId == "" || Obj.name == "" || Obj.gender == "" || Obj.age== "" || Obj.email == "" || Obj.m_no== "" || Obj.idType== "" || Obj.idValue== ""){
	    	swal({
	              title: 'Required Error!',
	              text: 'Please provied all field.',
	              icon: 'error'
	            }).then(function() {
	            });
				return true;
	}
	}
    
	$scope.submit = function() {
		
		if($scope.bookingValidation($scope.form1)){
			return false ;
		}
		if($scope.form1.id ==undefined || $scope.form1.id ==""){
			$scope.form1.id = 0;
		}
      	$scope.form.image = $scope.files[0];
      	$http({
		  method  : 'POST',
		  url     : $rootScope.baseUrl+'Booking/upload',
		  processData: false,
		  transformRequest: function (data) {
		      var formData = new FormData();
			  formData.append("image", $scope.form.image);
		      formData.append("data", JSON.stringify($scope.form1));  
		      return formData;  
		  },  
		  data : $scope.form,
		  headers: {
		         'Content-Type': undefined
		  }
	   }).then(function(responces){
		   if(responces.data.customer_id>0){
		   swal({
	              title: 'Success!',
	              text: 'Customer Id is :'+responces.data.customer_id+', Booking Succesfully Done! Booking Id is-'+responces.data.booking_id,
	              icon: 'success'
	            }).then(function() {
					$scope.form1 = {};
					$scope.image_source=$rootScope.baseUrl+'bower_components/CustomarImage/0.jpg';
	            });
		   }
	   });


      };

	 $scope.uploadedFile = function(element) {
		    $scope.currentFile = element.files[0];
		    var reader = new FileReader();
		    reader.onload = function(event) {
		      $scope.image_source = event.target.result
		      $scope.$apply(function($scope) {
		        $scope.files = element.files;
		      });
		    }
                 reader.readAsDataURL(element.files[0]);
		  }
	
	
});



app.controller('RoomCustomerBookingController', function(dataFactory,$scope,$http,$rootScope){
	$scope.formatDate = function(date){
        return new Date(date);
  };
   
	$scope.init = function(){
		$scope.bookingStatus = 1;
	  var bkDetails = {"flg":1};
	 $http.post($rootScope.baseUrl+'Booking/getBookingDetails',bkDetails)
	  .then(function(response) {
		  $scope.roomBookingDetails = response.data;
	  });
	}
	
	$scope.uodateBooking = {};
	// edit booking 
	$scope.editRoomBooking = function(Obj){
		$scope.uodateBooking.start_date=$scope.formatDate(Obj.start_date);
		$scope.uodateBooking.end_date=$scope.formatDate(Obj.end_date);
		$scope.start_date_advance = new Date();
		$scope.uodateBooking.roomId = Obj.room_number+'('+Obj.price+')';
		$scope.uodateBooking.id = Obj.id;
	}
	$scope.updateRoomBooking = function(){
		$http.post($rootScope.baseUrl+'Booking/getBookingDetailsUpdate',$scope.uodateBooking)
	  .then(function(response) {
		  document.getElementById('closed').click();
		   if(response.data=="true"){
			   swal({
	              title: 'Success!',
	              text: 'Booking update succfully.',
	              icon: 'success'
	            }).then(function() {
					$scope.init();
	            });
		  }
	  });
	}
	
	//
	
	$scope.getBookingDetails = function(){
	$scope.roomBookingDetails = [];	
	var bkDetails = {"flg":$scope.bookingStatus};
	 $http.post($rootScope.baseUrl+'Booking/getBookingDetails',bkDetails)
	  .then(function(response) {
		  $scope.roomBookingDetails = response.data;
	  });
		
	/*	if($scope.bookingStatus=="active"){
			$http.get($rootScope.baseUrl+'Booking/getBookingDetails')
		  .then(function(response) {
		    $scope.roomBookingDetails = response.data;
		  });
		}else{
			$http.get($rootScope.baseUrl+'Booking/getBookingDetailsHistory')
		  .then(function(response) {
		    $scope.roomBookingDetails = response.data;
		  });
		}	*/
	}
	$scope.editObject ={};
	$scope.addEditflag=false;
	$scope.addRoom = function(){
		$scope.editObject ={};
		$scope.addEditflag=true;
	}
});

