<?php
$request_method = $_SERVER["REQUEST_METHOD"];
$local = $_SERVER['SCRIPT_NAME'];
$uri = $_SERVER['PHP_SELF'];
$rout = str_replace($local, "", $uri);
$uriSegments = explode("/", $rout);
// 0-> index.php
// 1-> clients
// 2-> id

if(isset($uriSegments[1])){
	switch($uriSegments[1]){
		case 'client':
			require_once("Controllers/UserController.php");
			$user = new UserController();
			if($user -> isAdmin()){
				require_once("Controllers/ClientController.php");
				$clientController = new ClientController();
				switch($request_method){
					case 'GET':
						if(!isset($uriSegments[2]))
							$clientController -> listClients();
						else
							$clientController -> clientDetails($uriSegments[2]);
					break;
					case 'POST':
						$clientController -> insertClient();
					break;
					case 'PUT':
						$clientController -> updateClient($uriSegments[2]);
					break;
					case 'DELETE':
						$clientController -> deleteClient($uriSegments[2]);
					break;
				}
			}
		break;


		case 'user':
			require_once('Controllers/UserController.php');
			$user = new UserController();
			switch($request_method){
				case 'GET':
					$user -> validateLogin();
				break;
			}
		break;


		case 'contact':
			require_once('Controllers/ContactController.php');
			$contact = new ContactController();
			switch($request_method){
				case 'GET':
					if(!isset($uriSEgments[2])){
						$contact -> listContact();
					}else{
						$contact -> contactDetails($uriSegments[2]);
					}
				break;
			}
		break;
	}
}
?>
