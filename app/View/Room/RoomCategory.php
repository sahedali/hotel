<div id="page-wrapper" data-ng-controller="RoomCategoryController" data-ng-init="init()">
	<div class="main-page">
		<div class="forms">
			<h2 class="title1">Room Category</h2>
			<div class="form-grids row widget-shadow"
				data-example-id="basic-forms">
				<div class="form-title">
					<h4>Room Category Add<a title="Cleck to Add Room Category" class="btn fa fa-plus pull-right" data-toggle="modal" 
		data-target="#exampleModal" data-ng-click="addRoomCat()"> </a> </h4>
				</div>
				<div class="table-responsive bs-example widget-shadow">
				 <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
					<thead>
                      <tr><th class="th-sm">Sl No</th>
                          <th class="th-sm">Category</th>
						  <th class="th-sm">Week Days Price</th>
						  <th class="th-sm">Weekend Days Price</th>
                           <th class="th-sm">Description</th>
                       </tr>
                       </thead>
                       <tbody data-ng-repeat="rmCat in CategoryDetailss">
                       <tr  data-toggle="modal" 
							data-target="#exampleModal" 
							data-ng-click="editRoomCat(rmCat)" style="cursor: pointer">
                        <td>{{$index+1}}</td>
						<td title="Click To Edit">{{rmCat.name}}</td>
						<td title="Click To Edit">{{rmCat.week_days_price}}</td>
						<td title="Click To Edit">{{rmCat.weekend_price}}</td>
                        <td title="Click To Edit">{{rmCat.description}}</td>
                        </tr>
                       </tbody>
                          
				</table> 
				</div>
				<div data-pagination="" data-num-pages="numOfPages()" 
      data-current-page="curPage" data-max-size="maxSize"  
      data-boundary-links="true"></div>
				
				
			</div>
		</div>
	</div>
<div class="col-md-4 modal-grids">
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="display: none;top:100px;">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" id="closed" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">×</span></button>
										<h4 class="modal-title" id="exampleModalLabel"> 
										<span data-ng-show="addEditflag">Add</span>
										<span data-ng-hide="addEditflag">Edit</span>
										Room</h4>
									</div>
									<div class="modal-body">
										<form>
						<div class="form-group row">
							<div class="col-md-5">
								<label>Category Number</label> <input
									type="text" class="form-control" 
									placeholder="Category Number" data-ng-model="roomCategory.name">
							</div>
							<div class="col-md-7">
								<label >Description</label> 
								<textarea class="form-control" rows="5" id="comment" 
								data-ng-model="roomCategory.description"></textarea>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-5">
								<label>Week Days Price</label> <input
									type="text" class="form-control" 
									placeholder="Week Days Price i.e monday to Friday" data-ng-model="roomCategory.week_days_price">
							</div>
							<div class="col-md-7">
								<label >Weekend Days Price</label> 
								<input type="text" class="form-control" 
									placeholder="Weekend Days Price i.e saturday to Sunday"
								data-ng-model="roomCategory.weekend_price">
							</div>
						</div>
					</form>
									</div>
									<div class="modal-footer" data-ng-hide="addEditflag">
										<button type="button" class="btn btn-danger pull-left" data-ng-click="deleteRoomCat()">Delete</button>
										<button type="button" class="btn btn-primary" data-ng-click="updateRoomCat()">Update</button>
									</div>
									<div class="modal-footer" data-ng-show="addEditflag">
										<button type="button" class="btn btn-primary" data-ng-click="saveRoomCat()">Add</button>
									</div>
								</div>
							</div>
			</div>
</div>
	<!-- model end here  -->


</div>

