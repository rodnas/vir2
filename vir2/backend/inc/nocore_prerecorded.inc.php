<?php
if (!DEFINED('runOK')) exit;
if ($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserLevel"]!=2)
	{
	$viewItem['configShare_searchNo']=0;
	}
else
	{
	$viewItem['configShare_searchNo']=1;
	}
$viewItem = viewConfig($config,$viewItem);
$viewItem["contentFrameMiniHead"]=1;
?>