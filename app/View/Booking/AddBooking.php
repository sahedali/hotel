<div id="page-wrapper" data-ng-controller="BookingController" data-ng-init="init()">
	<div class="main-page">
		<div class="forms">
			<h2 class="title1">Room Booking</h2>
			<div class="form-grids row widget-shadow"
				data-example-id="basic-forms">
				<div class="form-title">
							<h4>Booking Form :</h4>
						</div>
				
				<div class="form-body">
				
					 <div class="row">
						<br>
						<div class="col-md-3">
								<label>Start Date</label> 
								<div class="input-group">							
								<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
								</span>
								<input type="date" class="form-control1" 
								data-ng-model="form1.start_date" min="{{form1.start_date_v | date: 'yyyy-MM-dd'}}"
								placeholder="Enter Mobile No" ng-change="dateValidation()">
								</div>
						</div>
						<div class="col-md-3">
								<label>End Date</label> 
								<div class="input-group">							
								<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
								</span>
								<input type="date" class="form-control1" data-ng-change="getRoom()"
								data-ng-model="form1.end_date" min="{{form1.end_date_v | date: 'yyyy-MM-dd'}}">
								</div>
						</div>
						
						<div class="col-md-3" data-ng-if="getroomDetails.length>0">
								<label>Choose Room</label> 
								<select class="form-control1" data-ng-model="form1.roomId">
									<option value="{{rm.room_id}}{{','+getamountDetails(rm,weekendFlg,0)}}" data-ng-repeat="rm in getroomDetails" 
									 data-ng-attr-title="{{rm.description}}">{{getamountDetails(rm,weekendFlg,1)}}
									</option>
                                </select>
								
						</div>
						
						<div class="col-md-3" data-ng-if="getroomDetails.length>0">
						<label>Search</label> 
											<div class="input-group" title="Please search for exsisting customer i.e mobile number ">
												<input type="text" data-ng-model="srch.searchId" class="form-control1" placeholder="Please provide mobile number ">
												<div class="input-group-addon"><span class="glyphicon glyphicon-search" data-ng-click="search()"></span></div>
											</div>
										</div>
					</div>  
					<form data-ng-if="getroomDetails.length>0"> 
					<div class="form-group"> 
						<div class="col-md-3">
								<label>Name</label> 
								<div class="input-group">							
								<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
								</span>
								<input type="text" class="form-control1" 
								data-ng-model="form1.name"
								placeholder="Enter Name">
								</div>
						</div>
						
						<div class="col-md-3">
								<label>Select Gender</label> 
								<select class="form-control1" data-ng-model="form1.gender">
                                    <option value="Male">Male</option>
                                    <option value="FeMale">FeMale</option>
                                </select>
						</div>
							<div class="col-md-3">
								<label>Age</label> 
								<div class="input-group">							
								<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
								</span>
								<input type="number" class="form-control1" 
								placeholder="Enter Age." data-ng-model="form1.age">
								</div>
							</div>
							
							<div class="col-md-3">
								<label>Email</label> 
								<div class="input-group">							
								<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
								</span>
								<input
									type="email" class="form-control1" 
									placeholder="Enter Email Id." data-ng-model="form1.email">
								</div>
							</div>
							
						</div>
						
						<div class="row">
						<br>
						<div class="col-md-3">
								<label>Mobile No</label> 
								<div class="input-group">							
								<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
								</span>
								<input type="text" class="form-control1" 
								data-ng-model="form1.m_no" ng-change="searchformobileOld()" ng-Trim="false"
								placeholder="Enter Mobile No">
								</div>
						</div>
					 
					 <div class="col-md-3">
								<label>Id Type</label> 
								<div class="input-group">							
								<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
								</span>
								<select class="form-control1" data-ng-model="form1.idType">
									<option value="{{id.id}}" data-ng-repeat="id in getIdMaster">{{id.name}}</option>
                                </select>
								</div>
						</div>
					 <div class="col-md-3">
								<label>Id Value</label> 
								<div class="input-group">							
								<span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
								</span>
								<input type="text" class="form-control1" 
								data-ng-model="form1.idValue"
								placeholder="Enter Id Value">
								</div>
						</div>
						
						<div class="col-md-3">
								<label>Upload Id</label> 
								<div class="input-group">							
								<!-- <span class="input-group-addon">
													<i class="fa fa-envelope-o"></i>
								</span> -->
								<input data-ng-model="form.image" type="file" class="form-control input-sm" accept="image/*"
	  								onchange="angular.element(this).scope().uploadedFile(this)">
								
								 <br/>
	  							<img ng-src="{{image_source}}" style="width:100px;">
								</div>
						</div>
					 </div>
					 <div class="row">
					 <div class="col-md-2">  
					 	<label>&nbsp;</label> 
					 	<div class="input-group">							
								<button type="submit" class="btn btn-default" data-ng-click="submit()">Submit</button> 
						</div>
					 </div>
					 </div>
					 
					  </form> 
				</div>	
						
						
						
						
					<!-- 	<div class="form-body">
				<div class="form-group">
							<div class="col-md-3">
								<label>Name</label> <input
									type="text" class="form-control" 
									placeholder="Enter Name" data-ng-model="user.name">
							</div>
							<div class="col-md-3">
								<label>Select Gender</label> 
								<select class="form-control" data-ng-model="user.gender">
                                    <option value="Male">Male</option>
                                    <option value="FeMale">FeMale</option>
                                </select>
							</div>
							<div class="col-md-3">
								<label>Mobile</label> 
								<input
									type="text" class="form-control" 
									placeholder="Enter Mobile no." data-ng-model="user.moile">
							</div>
							
							<div class="col-md-3">
								<label>Email</label> 
								<input
									type="email" class="form-control" 
									placeholder="Enter Email Id." data-ng-model="user.email">
							</div>
			  </div>
			  </div> -->
			</div>
		</div>
	</div>
	
</div>


