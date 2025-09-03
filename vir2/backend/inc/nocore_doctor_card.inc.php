<?php
if (!DEFINED('runOK')) exit;
$viewItem[$config["modulSelect"].'_x_patientIDEnd']=0;
if ($config["modulAction"]=="add")
	{
	$viewItem[$config["modulSelect"].'_x_patientIDEnd']=1;
	}
$viewItem = viewConfig($config,$viewItem);
?>