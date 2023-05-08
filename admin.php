<?php 
require_once("connection.php");
?>
<html>
<head>
<?php
include_once("link.php");
?>
</head>
<?php
echo " 
    <body>
        <div class='container'>";
		include_once("head.php");
		include_once("mainmenu.php");
		echo "<div class='row'>
		     <div class='col-md-3'>";
		include("left.php");
		echo "</div>";
		echo "<div class='col-md-9'>";
		echo " <div class='panel panel-$theme'>
                        <div class='panel-heading'> Admin Profile </div> </div>
                        <div class='panel-body minheight'>";
											
							$sql="select * from admin where id=$login_id";
	

						$query= mysqli_query($con,$sql);
						$row_data=mysqli_fetch_row($query);
//						print_r($row_data);
						$num_col=mysqli_num_fields($query);
						echo "<table class='table'>";
						for($i=0;$i<$num_col;$i++)
						{
							$temp=mysqli_fetch_field($query);
							$col_name=$temp->name;
							if($i<2)
							echo "<tr><th>$col_name</th><td>$row_data[$i]</td></tr>"; 
							else if($i==2 ){
							$pass=base64_decode($row_data[$i]);
							echo "<tr><th>$col_name</th><td>$pass</td></tr>";} 

						//  else if($i<11)
						//	echo "<tr><th>$col_name</th><td>$row_data[$i]</td></tr>"; 
                             else if($i==3)
	                           	echo "<tr><th>$col_name</th><td><img  src='$row_data[$i]' width=200 /></td></tr>";
							
						
						if($i==4)
							echo "<tr><th><i>$col_name</i></th><td><b>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<mark>$row_data[$i]</mark></b></td></tr>"; 
							}
						echo "</table>";

					
		
		//echo "</div>";

		//echo "<div class='col-md-3'>";
		//include("right.php");
		//echo "</div>";

		//include_once("footer.php");
		include_once("modal.php");
   
  echo " </div>
   </body>
   
   ";
?>
</html>