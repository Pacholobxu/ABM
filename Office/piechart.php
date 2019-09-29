<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<div class="container">
<a href="admDasboard1.php" target="_parent">Back To Dash Board</a>
  <h2>Agent Monthy Sales Chart Projection</h2>
  <table class="table table-striped">
    <thead>
      <tr>
	
        <td>Agent</td>
        <td>Sale's</td>
      </tr>
    </thead>
    <tbody>
	<?php   require 'dbconfig.php';
		$fetchqry = "SELECT * FROM `piechart`";
		$result=mysqli_query($con,$fetchqry);
		$num=mysqli_num_rows($result);
	 while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){ 
?>
      <tr>
		
        <td><?php echo $row['activity'];?></td>
        <td><?php echo $row['time'];?></td>
      </tr>
	<?php } ?>
    </tbody>
  </table>
</div>
<div id="piechart"></div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Hobbies', 'Time in Hours'], <?php
		$result=mysqli_query($con,$fetchqry);
  while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
  echo "['".$row['activity']."', ".$row['time']."],";
   } ?>  ]);
  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Monthly Sale Activities', 
				 'width':'500px', 
				 'height':'400px',
				 // pieHole: 0.2,
				  };

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
</script>

</body>
</html>