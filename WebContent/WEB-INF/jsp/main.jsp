<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <div class="col-md-16" >
   				<div class="panel panel-default">
   					<div class="panel-heading">Map Data</div>
					<div class="row field-block">
						<div class="col-md-6" id="map_canvas" class="panel panel-info" onclick="mapDivClicked(event);"></div>
						<div class="col-md-6">
						<div ng-controller="WithAjaxCtrl as showCase">
						    <table datatable="ng" dt-options="showCase.dtOptions" dt-column-defs="showCase.dtColumnDefs" class="table row-border hover">
						        <thead>
						        <tr>
						           	<th>Meter Id</th>
							    	<th>Street Address</th>
							    	<th>Zip Code</th>
						        </tr>
						        </thead>
						        <tbody>
						        <tr ng-repeat="m in showCase.results">
						           	<td>{{m.id}}</td>
									<td>{{m.street}}</td>
									<td>{{m.zipcode}}</td>
						        </tr>
						        </tbody>
						    </table>
						</div>	
							    
						</div>
						
					</div>
					<div class="col-md-offset-1">
						<form>
							<div class="row field-block">
						       	<div class="col-md-4"><label for="posX">x</label><input class="form-control" id="posX"/></div>
						       	<div class="col-md-4"><label for="posY">y</label><input class="form-control"  id="posY"/></div>
						    </div>			    
						    <div class="row field-block">
						       	<div class="col-md-4"><label for="lat">lat</label><input class="form-control" id="lat"/></div>
						       	<div class="col-md-4"><label for="lng">lng</label><input class="form-control" id="lng"/></div>
						    </div>			    			    
						    <div class="row field-block">
						        <div class="col-md-4"><label for="latMap">lat from map</label><input class="form-control" id="latMap" /></div>
						        <div class="col-md-4"><label for="lngMap">lng from map</label><input class="form-control" id="lngMap" /></div>
						    </div>
					    </form>
				    </div>
				    <br/>
			    </div>
			    <div class="panel panel-info">
			     <div class="panel-heading">Search for User</div>
				    <div class="row field-block" >
					    <div class="col-md-6">
					    	<div class="col-md-offset-1">
					    		<form ng-controller="searchPerson">			
							    	<div class="row" >
										<label for="firstName">First Name</label><input type="text" class="form-control" id="firstName" ng-model="firstName"/>
									</div>
									<div class="row" >
										<label for="lastName">Last  Name</label><input type="text" class="form-control" id="lastName" ng-model="lastName"/>
									</div>
									<br/>
									<div class="row">
										<div class="col-md-2"><button  type="button" class="btn btn-primary" ng-click="complete()"><span class="glyphicon glyphicon-play-circle"></span>Search</button></div><div class="col-md-4"><p class="alert alert-success" ng-bind="result.name"></p></div>
									</div>
								</form>
							</div>
						</div>
						<div class="col-md-6">
							<table class="table"  ng-controller="display">
						    	<tr>
							    	<th>Name</th>
							    	<th>Age</th>
							    	<th>Date of Birth</th>
						    	</tr>		  
						  		<tr ng-repeat="p in listperson">
									<td>{{p.name}}</td>
									<td>{{p.age}}</td>
									<td>{{p.DOB}}</td>
								</tr>
							</table>			
						</div>			
					</div>				
				</div>			    
		</div>