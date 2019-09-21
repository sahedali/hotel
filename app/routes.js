var app =  angular.module('hotelApp',['ngRoute','ui.bootstrap']);

app.config(['$routeProvider',function($routeProvider,$locationProvider){
	$routeProvider
	.when('/',{
		templateUrl :'../app/View/Home.html'
	})
	.when('/RoomCategory',{
		templateUrl :'../app/View/Room/RoomCategory.php'
	})
	.when('/RoomMaster',{
		templateUrl :'../app/View/Room/RoomView.php'
	})
	.when('/RoomPrice',{
		templateUrl :'../app/View/Room/RoomPrice.php'
	})
	.when('/RoomBooking',{
		templateUrl :'../app/View/Booking/RoomBooking.php'
	})
	.when('/AddRoom',{
		templateUrl :'../app/View/Booking/AddBooking.php'
	})
	.when('/editBookind/:bk',{
		templateUrl :'../app/View/Booking/EditBookind.php'
	})
	
}])
app.run(function($rootScope) {
    $rootScope.baseUrl = "http://localhost/Hotel/";
});
