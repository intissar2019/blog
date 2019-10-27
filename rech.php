
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form method="POST" action="datasearch.php">
		<input type="text" name="description" id="description">
		<input type="submit" name="search" id="search" value="search">
	</form>
	<div></div>
	<script
			  src="https://code.jquery.com/jquery-3.3.1.min.js"
			  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
			  crossorigin="anonymous"></script>
<script>
	$( "#description" ).keyup(function(e) {
	e.preventDefault();
var dataCom=$('#description').val();
console.log(dataCom);
$.ajax({ url : 'datasearch.php', type : 'POST',dataType:'json',data: dataCom, success : function(result){
	console.log(result);
	var comments = $('div');
	$.each(result,function(key, val){
			   		var oneCom = $('<div class=" container post" style="background-color:  #d6dbdf ;"/>').appendTo(comments);
                    oneCom.append('<h5>'+val.titre+'</h5>');
	
	 
          });}
				});
});


</script>

</body>
</html>