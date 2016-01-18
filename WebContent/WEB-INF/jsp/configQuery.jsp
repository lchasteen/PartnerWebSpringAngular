<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
	<%@include  file="../../header.html"%>
</head>
<body>
	<%@include  file="../../html/nav.html" %>
	<div class="container">
		<h1>Meters</h1>
		<div class="container">
		  <table id="example" class="display" cellspacing="0" width="100%">
		  <thead>
	        <tr>
	           	<th>Meter Id</th>
		    	<th>Street Address</th>
		    	<th>Zip Code</th>
	        </tr>
	        </thead>
	        <tbody>
	        <c:forEach items="${meters}" var="m">
	        <tr>
	           	<td>${m.id}</td>
				<td>${m.street}</td>
				<td>${m.zipcode}</td>
	        </tr>
	        </c:forEach>
	        </tbody>
	    </table>    
	    </div>
		<%@include  file="../../footer.html"%>
	</div>
	<script src="js/jquery/2.1.4/jquery-2.1.4.min.js"></script>	
	<script src="css/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
	<script src="js/AngularJS/1.4.5/angular.min.js"></script>    
	<script src="js/AngularJS/1.4.5/angular-route.js"></script> 
	<script src="js/AngularJS/1.4.5/angular-resource.js"></script>	
	<script src="js/route.js"></script>
	<script src="DataTables/datatables.min.js"></script>
	
			
	<script>
		$(document).ready(function() {
			$('#example').dataTable();
		});	
	</script>	
</body>
</html>