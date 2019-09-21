<div id="page-wrapper" data-ng-controller="RoomController" data-ng-init="init()">
	<div class="main-page">
		<div class="forms">
			<h2 class="title1">Room</h2>
			<div class="form-grids row widget-shadow"
				data-example-id="basic-forms">
				<div class="form-title">
					<h4>Room Add Form <a class="fa fa-plus pull-right" data-toggle="modal" 
		data-target="#exampleModal" data-ng-click="addRoom()"> </a> </h4>
				</div>
				<div class="table-responsive bs-example widget-shadow">
				 <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
					<thead>
                      <tr>
                          <th class="th-sm">Room Number</th>
                          <th class="th-sm">Category</th>
                      </tr>
                     </thead>
                     <tbody data-ng-repeat="rm in roomDetails">
                       <tr  data-toggle="modal" style="cursor: pointer" title="click here to edit"
                        data-target="#exampleModal" data-ng-click="editRoom(rm)">
                        	<td>{{rm.room_number}}</td>
                        	<td>{{rm.name}}</td>
                        </tr>
                      </tbody>
                          
				</table> 
				</div>
			</div>
		</div>
	</div>

<!-- model start here  -->

<div class="col-md-4 modal-grids">
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="display: none;top:100px;">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" id="closed" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
										<h4 class="modal-title" id="exampleModalLabel"> 
										<span data-ng-show="addEditflag">Add</span>
										<span data-ng-hide="addEditflag">Edit</span>
										Room</h4>
									</div>
									<div class="modal-body">
										<form>
						<div class="form-group row">
							<div class="col-md-3">
								<label>Room Number</label> <input
									type="text" class="form-control" 
									placeholder="Room Number" data-ng-model="editObject.room_number">
							</div>
							<div class="col-md-4">
								<label >Select Category</label> 
								<select class="form-control" data-ng-model="editObject.categoryId">
                                    <option data-ng-selected="{{cat.id == category}}"
                                     data-ng-repeat="cat in CategoryDetails" value="{{cat.id}}">
                                     {{cat.name}}
                                     </option>
                                </select>
							</div>
						</div>
					</form>
									</div>
									<div class="modal-footer" data-ng-hide="addEditflag">
										<button type="button" class="btn btn-danger pull-left" data-ng-click="deleteRoom()">Delete</button>
										<button type="button" class="btn btn-primary" data-ng-click="updateRoom()">Update</button>
									</div>
									<div class="modal-footer" data-ng-show="addEditflag">
										<button type="button" class="btn btn-primary" data-ng-click="saveRoom()">Add</button>
									</div>
								</div>
							</div>
			</div>
</div>
	<!-- model end here  -->


</div>


