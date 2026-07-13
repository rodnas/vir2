<?php
if (!DEFINED('runOK')) exit;
$viewItem = viewConfig($config,$viewItem);
$viewItem[$config["modulSelect"]."_x_sealNumberDeputy"]=1;
if (isset($_POST["s_sealNumberDeputy"]))
	{
	if (!empty($_POST["s_sealNumberDeputy"])) {$viewItem[$config["modulSelect"]."_x_sealNumberDeputy"]=0;}
	else {$viewItem[$config["modulSelect"]."_x_sealNumberDeputy"]=1;}
	}
else if (isset($_SESSION[$config["modulSelect"]."_s_sealNumberDeputy"]) && !empty($_SESSION[$config["modulSelect"]."_s_sealNumberDeputy"]))
	{
	$viewItem[$config["modulSelect"]."_x_sealNumberDeputy"]=0;
	}
?>