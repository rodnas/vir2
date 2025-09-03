<?php
// user levels

if (!defined("ewAllowAdd")) { define("ewAllowAdd", 1, true); }
if (!defined("ewAllowDelete")) { define("ewAllowDelete", 2, true); }
if (!defined("ewAllowEdit")) { define("ewAllowEdit", 4, true); }
if (!defined("ewAllowView")) { define("ewAllowView", 8, true); }
if (!defined("ewAllowList")) { define("ewAllowList", 8, true); }
if (!defined("ewAllowSearch")) { define("ewAllowSearch", 8, true); }
if (!defined("ewAllowAdmin")) { define("ewAllowAdmin", 16, true); }
// database connect
$config["configShare"]["databaseType"] = "mysql";
$config["configShare"]["languageType"] = "hu";
$config["configShare"]["setNames"]="set names utf8";
switch(strtolower($_SERVER['HTTP_HOST'])) {
	case 'localhost':
		$config["configShare"]["databaseServer"] = "localhost";
		$config["configShare"]["databaseSelect"] = "vir2_001";
		$config["configShare"]["databaseUser"] = "root";
		$config["configShare"]["databasePassword"] = "";
		break;
	case 'localhost:81':
		$config["configShare"]["databaseServer"] = "localhost:3307";
		$config["configShare"]["databaseSelect"] = "vir2_001";
		$config["configShare"]["databaseUser"] = "root";
		$config["configShare"]["databasePassword"] = "";
		break;
	case 'localhost:8012':
		$config["configShare"]["databaseServer"] = "localhost:3308";
		$config["configShare"]["databaseSelect"] = "vir2_001";
		$config["configShare"]["databaseUser"] = "root";
		$config["configShare"]["databasePassword"] = "";
		break;
	case 'localhost:8100':		// docker php742-mysql5730
		$config["configShare"]["databaseServer"] = "database:3306";
		$config["configShare"]["databaseSelect"] = "vir2_001";
		$config["configShare"]["databaseUser"] = "root";
		$config["configShare"]["databasePassword"] = "tiger";
		break;
	default:
		$config["configShare"]["databaseServer"] = "localhost";
		$config["configShare"]["databaseSelect"] = "vir2_001";
		$config["configShare"]["databaseUser"] = "root";
		$config["configShare"]["databasePassword"] = "";
		break;
}
?>