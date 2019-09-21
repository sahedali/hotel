<div id="page-wrapper" data-ng-controller="RoomCustomerBookingController" data-ng-init="init()">
	<div class="main-page">
		<div class="forms">
			<h2 class="title1">Room Booking</h2>
			<div class="form-grids row widget-shadow"
				data-example-id="basic-forms">
				<div class="form-title row">
				<div class="col-md-3">Room Details</div>
				<div class="col-md-3">
				<select class="form-control pull-center" data-ng-change="getBookingDetails()" ng-model="bookingStatus">
                                    <option value="1" ng-selected="true">
                                     Active
                                     </option>
									 <option value="2">
                                     Advance
                                     </option>
									 <option value="3">
                                     History
                                     </option>
									  
                                </select>
				</div>
				<div class="col-md-3"></div>
				<div class="col-md-3"><a class="fa fa-plus pull-right" href="#!/AddRoom" > </a> </div>
					
				</div>
				<div class="table-responsive bs-example widget-shadow">
				 <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
					<thead>
                      <tr>
                          <th class="th-sm">Name/Booking Id</th>
                          <th class="th-sm">Start Date</th> 
                          <th class="th-sm">End Date</th>
						  <th class="th-sm">Room</th>
						  <th class="th-sm">Prices</th>
						  <th class="th-sm">Room Desc</th>
						  <th class="th-sm" ng-if="bookingStatus==1">Check  Out</th>
						  <th class="th-sm" ng-if="bookingStatus==2">Check  In</th>
						  <th class="th-sm" ng-if="bookingStatus==3">Status</th>
                       </tr>
                       </thead>
                       <tbody data-ng-repeat="bk in roomBookingDetails" ng-if="bookingStatus<=2">
                       <tr style="cursor: pointer">
                        <td data-toggle="modal" 
							data-target="#exampleModal" 
							data-ng-click="editRoomBooking(bk)">{{bk.name}}({{bk.id}})</td>
                        <td data-toggle="modal" 
							data-target="#exampleModal" 
							data-ng-click="editRoomBooking(bk)">{{bk.start_date | date:'MM/dd/yy a'}}</td>
						<td data-toggle="modal" 
							data-target="#exampleModal" 
							data-ng-click="editRoomBooking(bk)">{{bk.end_date}}</td>
                        <td data-toggle="modal" 
							data-target="#exampleModal" 
							data-ng-click="editRoomBooking(bk)">{{bk.room_number}}</td>
						<td data-toggle="modal" 
							data-target="#exampleModal" 
							data-ng-click="editRoomBooking(bk)">{{bk.price}}</td>
						<td data-toggle="modal" 
							data-target="#exampleModal" 
							data-ng-click="editRoomBooking(bk)">{{bk.description}}</td>
						<td data-ng-if="bookingStatus==1"><a>Submit</a></td>
						<td data-ng-if="bookingStatus==2"><a>Submit Check in</a></td>
						<td data-ng-if="bookingStatus==3">Ok</td>
                        </tr>
                       </tbody>
					   
					    <tbody data-ng-repeat="bk in roomBookingDetails" ng-if="bookingStatus==3">
                       <tr style="cursor: pointer" >
                        <td>{{bk.name}}({{bk.id}})</td>
                        <td>{{bk.start_date}}</td>
						<td>{{bk.end_date}}</td>
                        <td>{{bk.room_number}}</td>
						<td>{{bk.price}}</td>
						<td>{{bk.description}}</td>
						<td data-ng-if="bookingStatus==1"><a>Submit</a></td>
						<td data-ng-if="bookingStatus==2"><a>Submit Check in</a></td>
						<td data-ng-if="bookingStatus==3">Ok</td>
                        </tr>
                       </tbody>
                          
				</table> 
				</div>
			</div>
		</div>
	</div>

<div class="col-md-4 modal-grids">
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="display: none;top:100px;">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" id="closed" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">�</span></button>
										<h4 class="modal-title" id="exampleModalLabel"> 
										<span data-ng-show="addEditflag">Add</span>
										<span data-ng-hide="addEditflag">Edit</span>
										Room Booking</h4>
									</div>
									<div class="modal-body">
										<form>
						<div class="form-group row">
							<div class="col-md-6">
							<label>Start Date</label> <input
									type="date" class="form-control" 
									data-ng-model="uodateBooking.start_date" disabled ng-if="bookingStatus==1">
									<input
									type="date" class="form-control" 
									data-ng-model="uodateBooking.start_date" ng-if="bookingStatus==2" min="{{start_date_advance | date: 'yyyy-MM-dd'}}">
							</div>
							
							<div class="col-md-6">
								<label>End Date</label> <input
									type="date" class="form-control" 
									data-ng-model="uodateBooking.end_date" min="{{uodateBooking.start_date | date: 'yyyy-MM-dd'}}">
							</div>
							
							<div class="col-md-6">
								<label>Room</label> <br>
								{{uodateBooking.roomId}}
							</div>
							
							
							
						</div>
					</form>
									</div>
									<div class="modal-footer">
										<!--button type="button" class="btn btn-danger pull-left" data-ng-click="deleteRoom()">Delete</button-->
										<button type="button" class="btn btn-primary" data-ng-click="updateRoomBooking()">Update</button>
									</div>
									<!--div class="modal-footer" data-ng-show="addEditflag">
										<button type="button" class="btn btn-primary" data-ng-click="saveRoom()">Add</button>
									</div-->
								</div>
							</div>
			</div>
</div>
	<!-- model end here  -->


</div>


