<?php
if (!DEFINED('runOK')) exit;
$viewItem['configShare_x_searchFilter']=0;
if ($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserLevel"]!=2)
	{
	$viewItem['nocore_barcode_sealNumber']=0;
	}
else
	{
	$viewItem['nocore_barcode_sealNumber']=1;
	}
$viewItem = viewConfig($config,$viewItem);
?>