<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
	<head>
		<%@include  file="../../header.html"%>
	</head>
	<body ng-app="routeApp">
		<%@include  file="../../html/nav.html" %>
		  
		<div class="container">
			<%@include  file="main.jsp" %>
			<%@include  file="../../footer.html" %>		
		</div>	
	         
	    <script src="js/jquery/2.1.4/jquery-2.1.4.min.js"></script>	
		<script src="css/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
		<script src="js/AngularJS/1.4.5/angular.min.js"></script>    
		<script src="js/AngularJS/1.4.5/angular-route.js"></script> 
		<script src="js/AngularJS/1.4.5/angular-resource.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js"></script>
		<script src="js/map.js"></script>        
		<script src="js/route.js"></script>   
		<script src="DataTables/datables.min.js"></script>
		   
	    <script>$(document).ready( function(){
	    	 initialize();   	
	    });</script>		
	</body>
</html>