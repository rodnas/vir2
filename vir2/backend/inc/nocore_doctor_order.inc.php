<?php
if (!DEFINED('runOK')) exit;
$viewItem = viewConfig($config,$viewItem);
if (isset($_POST["s_sealNumber"]))
	{
	if (!empty($_REQUEST["s_sealNumber"])) {$viewItem[$config["modulSelect"]."_x_nocore_doctorID"]=0;}
	else {$viewItem[$config["modulSelect"]."_x_nocore_doctorID"]=1;}
	}
else if (isset($_SESSION[$config["modulSelect"]."_s_sealNumber"]) && !empty($_SESSION[$config["modulSelect"]."_s_sealNumber"]))
	{
	$viewItem[$config["modulSelect"]."_x_nocore_doctorID"]=0;
	}

$viewItem[$config["modulSelect"]."_x_nocore_doctor_order_dayID"]=1;
if (isset($_POST["s_nocore_doctor_order_dayID"]))
	{
	if (!empty($_POST["s_nocore_doctor_order_dayID"])) {$viewItem[$config["modulSelect"]."_x_nocore_doctor_order_dayID"]=0;}
	else {$viewItem[$config["modulSelect"]."_x_nocore_doctor_order_dayID"]=1;}
	}
else if (isset($_SESSION[$config["modulSelect"]."_s_nocore_doctor_order_dayID"]) && !empty($_SESSION[$config["modulSelect"]."_s_nocore_doctor_order_dayID"]))
	{
	$viewItem[$config["modulSelect"]."_x_nocore_doctor_order_dayID"]=0;
	}
$viewItem[$config["modulSelect"]."_x_nocore_doctor_order_typeID"]=1;
if (isset($_POST["s_nocore_doctor_order_typeID"]))
	{
	if (!empty($_POST["s_nocore_doctor_order_typeID"])) {$viewItem[$config["modulSelect"]."_x_nocore_doctor_order_typeID"]=0;}
	else {$viewItem[$config["modulSelect"]."_x_nocore_doctor_order_typeID"]=1;}
	}
else if (isset($_SESSION[$config["modulSelect"]."_s_nocore_doctor_order_typeID"]) && !empty($_SESSION[$config["modulSelect"]."_s_nocore_doctor_order_typeID"]))
	{
	$viewItem[$config["modulSelect"]."_x_nocore_doctor_order_typeID"]=0;
	}
?>