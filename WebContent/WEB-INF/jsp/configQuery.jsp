<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
	<%@include  file="../../header.html"%>
	
	
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/s/dt/pdfmake-0.1.18,dt-1.10.10,af-2.1.0,b-1.1.0,b-colvis-1.1.0,b-html5-1.1.0,b-print-1.1.0,cr-1.3.0,fc-3.2.0,fh-3.1.0,r-2.0.0,rr-1.1.0,sc-1.4.0,se-1.1.0/datatables.min.css"/> 
	<script type="text/javascript" src="https://cdn.datatables.net/s/dt/pdfmake-0.1.18,dt-1.10.10,af-2.1.0,b-1.1.0,b-colvis-1.1.0,b-html5-1.1.0,b-print-1.1.0,cr-1.3.0,fc-3.2.0,fh-3.1.0,r-2.0.0,rr-1.1.0,sc-1.4.0,se-1.1.0/datatables.min.js"></script>
DataTables designed and created by SpryMedia Ltd © 2007-2015. MIT licensed. Our Supporters
	<script type="text/javascript">
		$(document).ready(function() {
			$('#example').dataTable();
		} );
	</script>
	
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
	
</body>
</html>