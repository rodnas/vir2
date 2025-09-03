<?php
if (!DEFINED('runOK')) exit;
$viewItem['configShare_x_searchFilter']=0;
$viewItem[$config["modulSelect"].'_x_insertWhen']=0;
$viewItem[$config["modulSelect"]."_x_bannerMmaximum"]=0;
$viewItem[$config["modulSelect"]."_x_marqueeMmaximum"]=0;
$viewItem[$config["modulSelect"]."_x_sealNumber"]=1;
$viewItem[$config["modulSelect"]."_x_licence"]=1;
if ($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserLevel"]==2)
	{
	$viewItem[$config["modulSelect"]."_x_bannerMmaximum"]=1;
	$viewItem[$config["modulSelect"]."_x_marqueeMmaximum"]=1;
	}
else
	{
	if ($config["modulAction"] == "edit")
		{
		$viewItem[$config["modulSelect"]."_x_sealNumber"]=0;
		$viewItem[$config["modulSelect"]."_x_licence"]=0;
		}
	}
if ($config["modulAction"] == "add" || $config["modulAction"] == "edit")
	{
	$viewItem[$config["modulSelect"].'_x_description']=1;
	}
if ($config["modulAction"] == "list")
	{
	$viewItem[$config["modulSelect"].'_x_description']=1;
	}
$viewItem = viewConfig($config,$viewItem);
?>