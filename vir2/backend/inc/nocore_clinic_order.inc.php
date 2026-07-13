<?php
if (!DEFINED('runOK')) exit;
$viewItem = viewConfig($config,$viewItem);
$viewItem[$config["modulSelect"]."_x_nocore_clinicID"]=1;
if (isset($_POST["s_nocore_clinicID"]))
	{
	if (!empty($_POST["s_nocore_clinicID"])) {$viewItem[$config["modulSelect"]."_x_nocore_clinicID"]=0;}
	else {$viewItem[$config["modulSelect"]."_x_nocore_clinicID"]=1;}
	}
else if (isset($_SESSION[$config["modulSelect"]."_s_nocore_clinicID"]) && !empty($_SESSION[$config["modulSelect"]."_s_nocore_clinicID"]))
	{
	$viewItem[$config["modulSelect"]."_x_nocore_clinicID"]=0;
	}
?>