<?php
if (!DEFINED('runOK')) exit;
$viewItem = viewConfig($config,$viewItem);
$viewItem["contentFrameMiniHead"]=1;
$viewItem["listBottomNavigation"]=0;
$viewItem[$config["modulSelect"]."_x_description"]=1;
$viewItem[$config["modulSelect"]."_x_nocore_patientID"]=1;
if (isset($_POST["s_nocore_patientID"]))
	{
	if (!empty($_POST["s_nocore_patientID"])) {$viewItem[$config["modulSelect"]."_x_nocore_patientID"]=0;}
	else {$viewItem[$config["modulSelect"]."_x_nocore_patientID"]=1;}
	}
else if (isset($_SESSION[$config["modulSelect"]."_s_nocore_patientID"]) && !empty($_SESSION[$config["modulSelect"]."_s_nocore_patientID"]))
	{
	$viewItem[$config["modulSelect"]."_x_nocore_patientID"]=0;
	}
$viewItem[$config["modulSelect"]."_x_nocore_reservation_typeID"]=1;
//$viewItem[$config["modulSelect"]."_x_nocore_doctorID"]=1;
if (isset($_POST["s_nocore_reservation_typeID"]))
	{
	if (!empty($_POST["s_nocore_reservation_typeID"])) {$viewItem[$config["modulSelect"]."_x_nocore_reservation_typeID"]=0;}
	else {$viewItem[$config["modulSelect"]."_x_nocore_reservation_typeID"]=1;}
	}
else if (isset($_SESSION[$config["modulSelect"]."_s_nocore_reservation_typeID"]) && !empty($_SESSION[$config["modulSelect"]."_s_nocore_reservation_typeID"]))
	{
	$viewItem[$config["modulSelect"]."_x_nocore_reservation_typeID"]=0;
	}
$config[$config["modulSelect"]."x_patientID_disable"]="";
if ($config["modulAction"]=="edit")
	{
	$config[$config["modulSelect"]."_x_patientID_disable"]=" disabled ";
	}
?>