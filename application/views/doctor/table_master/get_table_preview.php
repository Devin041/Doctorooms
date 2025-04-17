
<?php
$rows = count(json_decode($label_row));; // define number of rows
$cols = count(json_decode($label_header));;// define number of columns
$th = count(json_decode($label_header));
$lableth = json_decode($label_header);

$inserted = array( '#' );
array_splice( $lableth, 0, 0, $inserted );

$labletd = json_decode($label_row);
$lablefoot = json_decode($label_footer);

?>



<table class="table table-responsive table-bordered border-1" >
	<thead>
	<tr>
		<?php
		for ($th=0; $th <= $cols; $th++) {
			echo "<th>".$lableth[$th]."</th>";
		}
		?>
	</tr>

	</thead>
	<tbody>
	<?php
	for($tr=1;$tr<=$rows;$tr++){
		echo "<tr>";

		echo "<td><b>".$labletd[$tr-1]."</b></td>";
		for($td=1;$td<=$cols;$td++){

			echo "<td></td>";

		}


		echo "</tr>";
	}
	echo "<tr>";
	echo "<th></th>";
	for ($th=0; $th < $cols; $th++) {
		echo "<th>".$lablefoot[$th]."</th>";
	}
	echo "<th style='font-weight: bold;border: 1px solid #fff;'>$extra_label</th>";

	echo "</tr>";
	?>

	</tbody>



</table>
