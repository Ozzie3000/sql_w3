<!DOCTYPE html>
<html lang="en">
<head>
<title>JS, jQuery, SQL| HAVING clause</title>
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
			<h1>SQL HAVING clause</h1>
		</div>


		<div data-role="main" class="ui-content">
			<div>
				<ul>
					<li>The HAVING clause was added to SQL because the WHERE keyword could not be used with aggregate functions</li>
					<li></li>
					<li></li>
				</ul>
			</div>
			<label for="explaination1">SQL HAVING clause syntax</label>
			<textarea id="stuff1">
				SELECT column(s)
				FROM table_name
				WHERE condition
				GROUP BY column(s)
				HAVING condition
				ORDER BY column(s);
			</textarea>
			<br>

			<table class="table-all">Customers
			  <tr>
			    <th>CustomerID</th>
			    <th>CustomerName</th>
			    <th>Address</th>
			    <th>City</th>
			    <th>PostalCode</th>
			    <th>Country</th>
			    <th>Age</th>
			    <th>Active</th>
			    <th>BuddyId</th>
			  </tr>
			  <tr>
			  	<td>1</td>
			  	<td>Abraham Lincoln</td>
			  	<td>123 Any Street</td>
			  	<td>Anchorage</td>
			  	<td>54321</td>
			  	<td>United States</td>
			  	<td>true</td>
			  	<td>56</td>
			  	<td>2</td>
			  </tr>
			  <tr>
			  	<td>2</td>
			  	<td>Beth Williams</td>
			  	<td>123 Any Street</td>
			  	<td>Anchorage</td>
			  	<td>54321</td>
			  	<td>United States</td>
			  	<td>true</td>
			  	<td>48</td>
			  	<td>3</td>
			  </tr>
			  <tr>
			  	<td>3</td>
			  	<td>Clay Miller</td>
			  	<td>234 Any Street</td>
			  	<td>Austin</td>
			  	<td>54613</td>
			  	<td>United States</td>
			  	<td>true</td>
			  	<td>42</td>
			  	<td>4</td>
			  </tr>
			  <tr>
			  	<td>4</td>
			  	<td>Daniel Walker</td>
			  	<td>345 Any Street</td>
			  	<td>Ft Worth</td>
			  	<td>52321</td>
			  	<td>United States</td>
			  	<td>true</td>
			  	<td>30</td>
			  	<td>5</td>
			  </tr>
			  <tr>
			  	<td>5</td>
			  	<td>Elijah Forrest</td>
			  	<td>456 Any Street</td>
			  	<td>Springfield</td>
			  	<td>24655</td>
			  	<td>United States</td>
			  	<td>true</td>
			  	<td>55</td>
			  	<td>6</td>
			  </tr>
			  <tr>
			  	<td>6</td>
			  	<td>Elanor Gray</td>
			  	<td>567 Any Street</td>
			  	<td>Albany</td>
			  	<td>55555</td>
			  	<td>United States</td>
			  	<td>true</td>
			  	<td>70</td>
			  	<td>7</td>
			  </tr>
			  <tr>
			  	<td>7</td>
			  	<td>L'Olonnais</td>
			  	<td>678 Any Street</td>
			  	<td>Bridgeport</td>
			  	<td>44444</td>
			  	<td>United States</td>
			  	<td>true</td>
			  	<td>39</td>
			  	<td>8</td>
			  </tr>
			  <tr>
			  	<td>8</td>
			  	<td>Blackbeard</td>
			  	<td></td>
			  	<td>Bristol</td>
			  	<td>98765</td>
			  	<td>United Kingdom</td>
			  	<td>true</td>
			  	<td>35</td>
			  	<td>9</td>
			  </tr>
			  <tr>
			  	<td>9</td>
			  	<td>William Wallace</td>
			  	<td></td>
			  	<td>Edinburgh</td>
			  	<td>22557</td>
			  	<td>Scotland</td>
			  	<td>true</td>
			  	<td>35</td>
			  	<td>1</td>
			  </tr>
			</table>

			<br>

			<label for="stuff2">Examples</label>
		  <ul id="stuff2" type="square">
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>

			<label for="stuff3">SQL Statments</label>
			<textarea id="stuff3">
				Show countries with 3 or more customers
				SELECT COUNT(CustomerId) AS total_from_country, Country
				FROM Customers
				GROUP BY Country
				HAVING COUNT(CustomerId) > 3;

				SELECT COUNT(CustomerId) AS country_count, Country
				FROM Customers
				GROUP BY Country
				HAVING COUNT(CustomerId) > 2;
				ORDER BY Count(CustomerId) DESC;

				having with joins
				SELECT Customers.CustomerName, Count (Orders.OrderId) AS NumOrders
				FROM (Orders INNER JOIN Customers ON Orders.CustomerId = Customer.CustomerId)
				GROUP BY LastName
				HAVING COUNT()


				SELECT Customers.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
				FROM Orders
				INNER JOIN Customers ON Orders.CustomerId = Customers.CustomerId
				WHERE Country LIKE '%United States%'
				GROUP BY Country
				HAVING COUNT(Country) > 1;
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