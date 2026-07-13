<?php
if (!DEFINED('runOK')) exit;
$viewItem = viewConfig($config,$viewItem);
$viewItem[$config["modulSelect"].'_x_insertWhen']=0;
$viewItem[$config["modulSelect"].'_x_description']=0;
//$viewItem[$config["modulSelect"].'_searchfilter']=1;
/*
if ($config["modulAction"] == "add" || $config["modulAction"] == "edit")
	{
	$viewItem['nocore_patient_x_description']=1;
	}
*/
if ($config["modulAction"] == "list")
	{
	$viewItem[$config["modulSelect"].'_x_insertWhen']=1;
	$viewItem[$config["modulSelect"].'_x_description']=1;
	}
?>