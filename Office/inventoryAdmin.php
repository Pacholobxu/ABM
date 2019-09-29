<li><a href="admDasboard1.php" target="_parent">Admin Dash Board</a></li><li><a href="logout.php" target="_parent">Log Out</a></li>

<?php
session_start();
$lifetime=600;
session_set_cookie_params( $lifetime);

mysql_connect("localhost", "root", "") or die(mysql_error());
//echo "Connected to MySQL<br />";
mysql_select_db("bioline") or die(mysql_error());
//echo "Connected to Database";

//echo "</table>";
$rows1 = mysql_query("SELECT
*
FROM
inventory");
echo "<table cellspacing='0' cellpadding='2' width='<strong>98%</strong>' border='1' >"; ?>
<img src="dashboard inventory ad.jpg" width="975" height="591" border="0" usemap="#Map" />
<map name="Map" id="Map"><area shape="rect" coords="2,5,229,186" href="inventoryAproductdata.php" target="_parent" />
<area shape="rect" coords="246,4,479,187" href="inventoryAdj.php" target="_parent" />
<area shape="rect" coords="495,4,725,185" href="inventoryMove.php" target="_parent" />
<area shape="rect" coords="742,4,973,186" href="goodstranfer.php" target="_parent" />
<area shape="rect" coords="3,203,232,387" href="inventorytaking.php" target="_parent" />
<area shape="rect" coords="248,203,478,384" href="production.php" target="_parent" />
<area shape="rect" coords="495,204,724,385" href="assembly.php" target="_parent" />
<area shape="rect" coords="741,203,973,385" href="disassembly.php" target="_parent" />
<area shape="rect" coords="3,404,231,586" href="ReceivedConsignment.php" target="_parent" />
<area shape="rect" coords="247,403,479,582" href="consignmentreturn.php" target="_parent" />
<area shape="rect" coords="495,404,726,587" href="sSellingprice.php" target="_parent" />
<area shape="rect" coords="741,405,973,588" href="inventorymanagement.php" target="_parent" />
</map>

