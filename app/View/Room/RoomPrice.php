<div id="page-wrapper" data-ng-controller="RoomPriceController" data-ng-init="init()">
	<div class="main-page">
		<div class="forms">
			<h2 class="title1">Room Price</h2>
			<div class="form-grids row widget-shadow"
				data-example-id="basic-forms">
				<div class="form-title">
					<h4>Room Price Add<a class="btn fa fa-plus pull-right" data-toggle="modal" title="Click to Add Price" 
		data-target="#exampleModal" data-ng-click="addRoomPrice()"> </a> </h4>
				</div>
				<div class="table-responsive bs-example widget-shadow">
				 <table id="dtBasicExample" class="table table-striped table-bordered table-sm"
				  cellspacing="0" width="100%">
					<thead>
                      <tr><th class="th-sm">Sl No</th>
                          <th class="th-sm">Category</th>
                           <th class="th-sm">Price</th>
                           <th class="th-sm">Start Date</th>
                           <th class="th-sm">End Date</th>
                      </tr>
                       </thead>
                       <tbody data-ng-repeat="price in getPriceDetails">
                       <tr  data-toggle="modal" style="cursor: pointer"
							data-target="#exampleModal" title="Click here to edit"
							data-ng-click="editRoomPrice(price)">
                            <td>{{$index+1}}</td>
    						<td>{{price.name}}</td>
                            <td>{{price.amount}}</td>
                            <td>{{formatDate(price.start_date) | date:'dd-MMM-yyyy'}}</td>
                            <td>{{formatDate(price.end_date) | date:'dd-MMM-yyyy'}}</td>
                            
                        </tr>
                       </tbody>
                          
				</table> 
				</div>
			</div>
		</div>
	</div>


<!-- model start here  -->
		<!-- button type="button" class="btn btn-primary btn-lg" data-toggle="modal" 
		data-target="#exampleModal" data-whatever="@mdo">Open modal for @mdo</button-->

<div class="col-md-4 modal-grids">
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="display: none;top:100px;">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" id="closed" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
										<h4 class="modal-title" id="exampleModalLabel"> 
										<span data-ng-show="addEditflag">Add</span>
										<span data-ng-hide="addEditflag">Edit</span>
										Price</h4>
									</div>
									<div class="modal-body">
										<form>
						<div class="form-group row">
							<div class="col-md-6">
								<label>Select Category</label> 
								<select class="form-control" data-ng-model="roomPrice.categoryId">
                                    <option data-ng-selected="{{cat.id == categoryId}}"
                                     data-ng-repeat="cat in CategoryDetails" value="{{cat.id}}">
                                     {{cat.name}}
                                     </option>
                                </select>
							</div>
							<div class="col-md-6">
								<label>Start Date</label> <input
									type="date" class="form-control" 
									data-ng-model="roomPrice.start_date">
							</div>
							
							<div class="col-md-6">
								<label>End Date</label> <input
									type="date" class="form-control" 
									data-ng-model="roomPrice.end_date">
							</div>
							
							<div class="col-md-6">
								<label>Amount</label> <input
									type="text" class="form-control" placeholder="Please Enter Amount"
									data-ng-model="roomPrice.amount">
							</div>
							
							
							
						</div>
					</form>
									</div>
									<div class="modal-footer" data-ng-hide="addEditflag">
										<button type="button" class="btn btn-danger pull-left" data-ng-click="deleteRoomPrice()">Delete</button>
										<button type="button" class="btn btn-primary" data-ng-click="updateRoomPrice()">Update</button>
									</div>
									<div class="modal-footer" data-ng-show="addEditflag">
										<button type="button" class="btn btn-primary" data-ng-click="saveRoomPrice()">Add</button>
									</div>
								</div>
							</div>
			</div>
</div>
	<!-- model end here  -->


</div>


