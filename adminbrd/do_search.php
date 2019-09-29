<?php



	if(isset($_POST['querystr'])){

		$conn = new mysqli('localhost', 'root', 'root', 'laravel_test');



		$results = array('error' => false, 'data' => '');

 

		$querystr = $_POST['querystr'];

 

		if(empty($querystr)){

			$results['error'] = true;

		}else{

			$sql = "SELECT
agsales_cart.Agent_ID,
agsales_cart.Qty,
agsales_cart.C_id,
agsales_cart.Item_code,
agsales_cart.Date,
agsales_cart.Scode,
agsales_cart.AprvDiscount
FROM
agsales_cart where agsales_cart.Agent_ID LIKE '%$querystr%'";

			$sqlquery = $conn->query($sql);

 

			if($sqlquery->num_rows > 0){

				while($ldata = $sqlquery->fetch_assoc()){

					$results['data'] .= "

						<li class='list-gpfrm-list' data-fullname='".$ldata['name']." ".$ldata['sirname']."'>".$ldata['name']." ".$ldata['sirname']."</li>

					";

				}

			}

			else{

				$results['data'] = "

					<li class='list-gpfrm-list'>No found data matches Records</li>

				";

			}

		}

 

		echo json_encode($results);

	}

?>
