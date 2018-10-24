<?php
	include 'elems/init.php';

	
	function showPage($link){
		$query = "SELECT city, area, street, house FROM addresses ORDER BY city, area, street, house";
		$result = mysqli_query($link, $query) or die(mysqli_error($link));
		for ($data = []; $row = mysqli_fetch_assoc($result); $data[] = $row);

		$content = '';
		foreach ($data as $kay => $value) {
				$content .= '<div class="item">
					<h3>HOME Address</h3>
					<p>'.$value['city'].', '.$value['area'].', '.$value['street'].', '.$value['house'].'</p>
					<div class="actbox">
						<a href="#" class="bcross"></a>
					</div>
				</div>';
		}

		include 'user_office_address.php';
	}


	function add_Addresses($link){
		if (isset($_POST['name']) and isset($_POST['city']) and isset($_POST['area'])) {
			$name = mysqli_real_escape_string($link, $_POST['name']);
			$city = mysqli_real_escape_string($link, $_POST['city']);
			$area = mysqli_real_escape_string($link, $_POST['area']);
			$street = mysqli_real_escape_string($link, $_POST['street']);
			$house = mysqli_real_escape_string($link, $_POST['house']);
			$info = mysqli_real_escape_string($link, $_POST['info']);

			$query = "INSERT INTO addresses (name, city, area, street, house, info) VALUES ('$name', '$city', '$area', '$street', '$house', '$info')";
			mysqli_query($link, $query) or die(mysqli_error($link));

		} else {
			return '';
		}
	}

	add_Addresses($link);
	showPage($link);
	
	









