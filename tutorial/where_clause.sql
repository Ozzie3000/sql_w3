<!DOCTYPE html>
<html lang="en">
<head>
<title>JS, jQuery, SQL| WHERE clause</title>
<meta charset="utf-8">
<meta name="description" content="HTML5, js, jquery demos" />
<!-- server
<link rel="stylesheet" type="text/css" href="..stylesheets/main1.css"></link>
-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--
<link rel="stylesheet" type="text/css" href="../stylesheets/main1.css"></link>
-->
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.css">
<link href='https://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<style type="text/css">
	.table-all{
		border: 2px solid black;
		table-layout: fixed;
	}
	td{
		width: 15%;
	}
</style>
<!-- jquery 2 doesn't work with these examples
<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
-->
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.js"></script>
<!--
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
-->
<script type="text/javascript">
	$(document).ready(function(){
		
	}); //end doc ready
</script>
</head>
<body>

	<div data-role="page" id="page_1">
		<div data-role="header">
			<h1>WHERE clause</h1>
		</div>


		<div data-role="main" class="ui-content">
			<table class="table-all">Customers
			  <tr>
			    <th>CustomerID</th>
			    <th>CustomerName</th>
			    <th>Address</th>
			    <th>City</th>
			    <th>PostalCode</th>
			    <th>Country</th>
			  </tr>
			  <tr>
			  	<td>1</td>
			  	<td>Abraham Lincoln</td>
			  	<td>123 Any Street</td>
			  	<td>Anchorage</td>
			  	<td>54321</td>
			  	<td>United States</td>
			  </tr>
			  <tr>
			  	<td>2</td>
			  	<td>Beth Williams</td>
			  	<td>123 Any Street</td>
			  	<td>Anchorage</td>
			  	<td>54321</td>
			  	<td>United States</td>
			  </tr>
			  <tr>
			  	<td>3</td>
			  	<td>Clay Miller</td>
			  	<td>123 Any Street</td>
			  	<td>Anchorage</td>
			  	<td>54321</td>
			  	<td>United States</td>
			  </tr>
			  <tr>
			  	<td>4</td>
			  	<td>Daniel Walker</td>
			  	<td>123 Any Street</td>
			  	<td>Anchorage</td>
			  	<td>54321</td>
			  	<td>United States</td>
			  </tr>
			  <tr>
			  	<td>5</td>
			  	<td>Elijah Forrest</td>
			  	<td>123 Any Street</td>
			  	<td>Anchorage</td>
			  	<td>54321</td>
			  	<td>United States</td>
			  </tr>
			  <tr>
			  	<td>6</td>
			  	<td>Elanor Gray</td>
			  	<td>456 Any Street</td>
			  	<td>Albany</td>
			  	<td>55555</td>
			  	<td>United States</td>
			  </tr>
			  <tr>
			  	<td>7</td>
			  	<td>L'Olonnais</td>
			  	<td>789 Any Street</td>
			  	<td>Bridgeport</td>
			  	<td>44444</td>
			  	<td>United States</td>
			  </tr>
			  <tr>
			  	<td>8</td>
			  	<td>Blackbeard</td>
			  	<td></td>
			  	<td>Bristol</td>
			  	<td>98765</td>
			  	<td>United Kingdom</td>
			  </tr>
			</table>

			<br>

			<label for="stuff">SQL Statments</label>
			<textarea id="stuff">
				Find people fromt he UK
				SELECT * FROM Customers WHERE Country = "United Kingdom";

				Find people in the zip code 44444
				SELECT * FROM Customers WHERE PostalCode = 44444;

				Find everyone but people in postal code 44444
				SELECT * FROM Customers WHERE PostalCode <> 44444;

				Find people made after the 5th entry into DB
				SELECT * FROM Customer WHERE CutomerID > 5;

				Find entries before 6th entry into DB
				SELECT * FROM Customers WHERE CustomerID < 6;

				Find people made on or after the 5th entry into DB
				SELECT * FROM Customer WHERE CutomerID >= 5;

				Find people made on or before the 6th entry into DB
				SELECT * FROM Customer WHERE CutomerID <= 6;

				Find clients with ids between 3-5 inclusive
				SELECT * FROM Customers WHERE CustomerID BETWEEN 3 AND 5; 
			</textarea>
		</div>

		<div data-role="footer">
			<h1>Footer: text</h1>
		</div>
	</div>
 

<br><br><br>
<script>
	//document.getElementById("").


	$(document).ready(function(){

	}); //end doc ready
</script>
</body>
</html>