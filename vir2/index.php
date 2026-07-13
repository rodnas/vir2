<?php

//if (version_compare(phpversion(), '5.3.10', '>'))
//	{
//	echo 'Current PHP version: '.phpversion().'<br>';
	error_reporting(0);
//	}


$sessionID = session_id();
if(empty($sessionID)) {
	session_id('vir2');
	session_start();
}

ob_start();
ini_set('display_errors',1);
if (!DEFINED('runOK')) define('runOK',true);
$config=Array();
$config["startPageTime"]=microtime(true);
$config["bannerROOT"]="../docroot/core_advert/";
$config["bannerDrROOT"]="../docroot/nocore_doctor_advert/";
$config["systemROOT"]="/";

include "share/inc/config.inc.php";
include "share/lib/config.lib.php";    	

$config["dbConnect"] = new PDO($config["configShare"]["databaseType"].':host='.$config["configShare"]["databaseServer"].';dbname='.$config["configShare"]["databaseSelect"], $config["configShare"]["databaseUser"], $config["configShare"]["databasePassword"]);
$setNames=$config["dbConnect"]->prepare($config["configShare"]["setNames"]);
$setNames->execute();

$config = configFieldSearchAll($config,"backend");
$config["dayID"] = dayIdentifier(time());

if (isset($_GET["cssconvert"]) && !empty($_GET["cssconvert"]))
	{
	$result = cssConvert($config,$_GET["systemType"],$_GET["cssconvert"],$_GET["resolution"]);
	echo $result;
	}
else if (isset($_GET["jsconvert"]) && !empty($_GET["jsconvert"]))
	{
	$result = jsConvert($config,"backend/js/",$_GET["jsconvert"]);
//	$result = jsConvert($config,"frontend/js/",$_GET["jsconvert"]);
	echo $result;
	}
else if (isset($_GET["ajax"]) && !empty($_GET["ajax"]))
	{
	include "backend/ajax/".$_GET["ajax"].".php";
	}
else if (isset($_GET["pdf"]) && !empty($_GET["pdf"]))
	{
	$config = configFieldSearchAll($config,"backend");
	$config = languageFieldSearchAll($config,"backend");
	$fileName="configShare";
	$fileType="cfg";
	$filePath="backend/cfg/";
	$loadError="cssNotFound";
	$config = cfgLoader($config,$fileName,$fileType,$filePath,$loadError);
	$config["configShare"]["whichSystemAndMode"]=$config["configShare"]["whichSystem"].$config["configShare"]["whichSystemMode"]."_";
	include "share/pdfmake/pdfmake.php";
	}
else
	{
	header("Location: backend/index.php");
	}
$config["dbConnect"] = NULL;	
?>