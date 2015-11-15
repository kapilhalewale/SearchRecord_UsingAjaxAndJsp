
<html>
<head>
<style>

</style>
</head>
<body>

<a href="#" id="home" class="nav">Homes</a>
<a href="#" id="add" >Add</a>
<a href="#" id="contact" class="nav">Contact Us</a>

<div class="response" id="response"></div>

	<% int id=100; %>
	<script src="ajaxCall.js" type="text/javascript"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		// load index page when the page loads
		$("#response").load("home.html");
		$("#home").click(function(){
		// load home page on click
			$("#response").load("home.html");
		});
		$("#add").click(function(){
		// load about page on click
			$("#response").load("time.jsp?id=<%= id %>&pid=40");
		});
		$("#contact").click(function(){
		// load contact form onclick
			$("#response").load("test.html");
		});
	});
	</script>
</body>
</html>