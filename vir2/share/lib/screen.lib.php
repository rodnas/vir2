<?php
function topMenu($config)
	{
	$topMenuPositionCFG = iniCFGParser($config[$config["modulSelect"]]["iniCFG"],"##topMenuPositionCFG##","##/topMenuPositionCFG##");
	$topMenuItemPositionCFG = explode('<=>',$topMenuPositionCFG);
	$topSubMenuHTML ="";
	$topMenuCFG = iniCFGParser($config["configShare"]["iniCFG"],"##topMenuCFG##","##/topMenuCFG##");
	$topMenuItemCFG = explode('<#>',$topMenuCFG);
	$noMenuItem = Array();
	if (isset($config["configShare"]["noMenuItem"]))
		{
		$noMenuItem = explode('<#>',$config["configShare"]["noMenuItem"]);	
		}
	$topMenuHTML="<div id='topMainMenu'><div id='menuBox'>";
	$topSubMenuAdd=0;
	for ($topMenuItemCFGCount=0;$topMenuItemCFGCount<count($topMenuItemCFG);$topMenuItemCFGCount++)
		{
		$menuItemsActual = explode('<subMenu>',$topMenuItemCFG[$topMenuItemCFGCount]);
		$menuItemActual = trim($menuItemsActual[0]);
		if ((modulPermission($config,$menuItemActual) & ewAllowview) == ewAllowview && !in_array(trim($menuItemActual),$noMenuItem))
			{
			if ($topMenuItemCFGCount > 0 && !empty($config["topMenuSeparator"])) 
				{
				$topMenuHTML .= $config["topMenuSeparator"];
				}
			$actualAction = setConfigValue($config,$menuItemActual,"action");
			if ($menuItemActual == $config["modulSelect"]) {$menuCSSClass = 'topMenuTextActual';} else {$menuCSSClass = 'topMenuText';}
			if ($menuItemActual == trim($topMenuItemPositionCFG[0]))  {$menuCSSClass = 'topMenuTextActual';}
			$topSubMenuCFG = trim($menuItemsActual[1]);
			$subMenuYes = 1;
			$topSubMenuItemCFG = explode('<=>',$topSubMenuCFG);
			if (in_array($config["modulSelect"], $topSubMenuItemCFG)) {$subMenuYes=1;} else {$subMenuYes=0;}
			if ($subMenuYes==1)
				{
				if (isset($topSubMenuCFG) && !empty($topSubMenuCFG)) 
					{
					$topSubMenuHTML="<div id='topSubMenuBox'><div id='menuBox'>";
					$topSubMenuItemCFG = explode('<=>',$topSubMenuCFG);
					for ($topSubMenuItemCFGCount=0;$topSubMenuItemCFGCount<count($topSubMenuItemCFG);$topSubMenuItemCFGCount++)
						{
						$topSubMenuItemActual = $topSubMenuItemCFG[$topSubMenuItemCFGCount];
						if ((modulPermission($config,$topSubMenuItemActual) & ewAllowview) == ewAllowview && !array_key_exists(trim($menuItemActual),$noMenuItem))
							{
							if ($topSubMenuItemCFGCount > 0 && !empty($config["topMenuSeparator"])) 
								{
								$topSubMenuHTML .= $config["topMenuSeparator"];
								}
							$actualAction = setConfigValue($config,$topSubMenuItemActual,"action");
							if ($topSubMenuItemActual == $config["modulSelect"] || 
								(isset($topMenuItemPositionCFG[1]) && !empty($topMenuItemPositionCFG[1]) && $topMenuItemPositionCFG[1]==$topSubMenuItemActual) ) 
								{
								$topSubMenuCSSClass = 'topMenuTextActual';
								$menuCSSClass = 'topMenuTextActual';
								$topSubMenuAdd=1;
								}
							else
								{
								$topSubMenuCSSClass = 'topMenuText';
								}
							if (empty($actualAction))
								{ 
								$topSubMenuHTML .= "<a title='' href='index.php?modulSelect=".$topSubMenuItemActual."&amp;modulAction=list&amp;".$topSubMenuItemActual."cmd=resetall' class='$topSubMenuCSSClass'>";
								}
							else
								{
								$topSubMenuHTML .= "<a title='' href='index.php?modulSelect=".$topSubMenuItemActual."&amp;modulAction=".$actualAction."&amp;".$topSubMenuItemActual."cmd=resetall' class='$topSubMenuCSSClass'>";
								}
							$topSubMenuHTML .= $config[$topSubMenuItemActual]["title"];
							$isNewItemCount = $config[$topSubMenuItemActual]["isNewItemCount"];
							if ($isNewItemCount==1 &&
								($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserLevel"] == 2 ||
								$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserLevel"] == 3))
								{
								$topMenuFilter = "isReadWhen IS NULL";
								$topMenuSQL = "SELECT COUNT(*) AS topMenuCount FROM ".$topSubMenuItemActual." WHERE " .$topMenuFilter;
								$topMenuRec=$config["dbConnect"]->prepare($topMenuSQL);
								$topMenuRec->execute();
								$topMenuCountDb = $topMenuRec->rowCount();
								$topMenuRec->closeCursor();
								if ($topMenuCountDb > 0)
									{
									$topMenuRow=$topMenuRec->fetch(PDO::FETCH_ASSOC);
									$topMenuCount = @$topMenuRow["topMenuCount"];
									if ($topMenuCount > 0)
										{
										$topSubMenuHTML .= "<span class='newitemcounttext'>&nbsp;(".$topMenuCount."&nbsp;".$config["configShare"]["newItem"].")</span>";
										}
									}
								}
							$topSubMenuHTML .= "</a>";
							}
						}
					$topSubMenuHTML .= "</div><div style='clear:both'></div></div>";
					}
				}
			if (empty($actualAction))
				{ 
				$topMenuHTML .= "<a title='' href='index.php?modulSelect=".$menuItemActual."&amp;modulAction=list&amp;".$menuItemActual."cmd=resetall' class='$menuCSSClass'>";
				}
			else
				{
				$topMenuHTML .= "<a title='' href='index.php?modulSelect=".$menuItemActual."&amp;modulAction=".$actualAction."&amp;".$menuItemActual."cmd=resetall' class='$menuCSSClass'>";
				}
			$topMenuHTML .= $config[$menuItemActual]["title"];
			$isNewItemCount = $config[$menuItemActual]["isNewItemCount"];
			if ($isNewItemCount==1 &&
				($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserLevel"] == 2 ||
				$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserLevel"] == 3))
				{
				$topMenuFilter = "isReadWhen IS NULL";
				$topMenuSQL = "SELECT COUNT(*) AS topMenuCount FROM ".$menuItemActual." WHERE " .$topMenuFilter;
				$topMenuRec=$config["dbConnect"]->prepare($topMenuSQL);
				$topMenuRec->execute();
				$topMenuCountDb = $topMenuRec->rowCount();
				$topMenuRec->closeCursor();
				if ($topMenuCountDb > 0)
					{
					$topMenuRow=$topMenuRec->fetch(PDO::FETCH_ASSOC);
					$topMenuCount = @$topMenuRow["topMenuCount"];
					if ($topMenuCount > 0)
					if ($topMenuCount > 0)
						{
						$topMenuHTML .= "<span class='newitemcounttext'>&nbsp;(".$topMenuCount."&nbsp;".$config["configShare"]["newItem"].")</span>";
						}
					}
				}
			$topMenuHTML .= "</a>";
			}
		}
	$topMenuHTML .= "</div><div style='clear:both'></div></div>";
	if ($topSubMenuAdd==1)
		{
		$topMenuHTML .= $topSubMenuHTML;
		}
	return $topMenuHTML;
	}

function loginService($config)
	{
	$loginServiceHTML = "";
	if ($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserLevel"] != 1)
		{
		if (setConfigValue($config,"configShare","onlyView") != 1 )
			{
			$loginServiceHTML .= "<div id='loginBox'>";
			$loginServiceHTML .= "<div id='loginTextBox'>";
			$loginServiceHTML .= "<span class='loginText'>".@$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_User"];
			if (isset($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_nocore_sealNumber"]))
				{
				$loginServiceHTML .= "&nbsp - (".$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_nocore_sealNumber"].")";
				}

			$loginServiceHTML .= "</span>";
			$loginServiceHTML .= "</div>";
			if ($config["layoutMainHTML"]!="layoutmini")
				{
				$loginServiceHTML .= "<div id='topServiceButton'>";
				$loginServiceHTML .= "<button title='".$config["configShare"]["myDataChangeTitle"]."' id='buttonTopHeight24' name='modulOperation' type='submit' value='item::mydata::core_users::".@$_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserID"]."::".$config["modulSelect"]."'>".$config["configShare"]["myDataChangeTitle"]."</button>";

				$loginServiceHTML .= "<button title='".$config["configShare"]["passwordChangeTitle"]."' id='buttonTopHeight24' name='modulOperation' type='submit' value='item::passchange::core_users::".@$_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserID"]."::".$config["modulSelect"]."'>".$config["configShare"]["passwordChangeTitle"]."</button>";
				if ($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserLevel"] != 1)
					{
					$loginServiceHTML .= "<button title='".$config["configShare"]["logoutTitle"]."' id='buttonTopHeight24' name='modulOperation' type='submit' value='simple::logout'>".$config["configShare"]["logoutTitle"]."</button>";
					}
				$loginServiceHTML .= "</div>";
				}
			$loginServiceHTML .= "</div>";
			}
		}
	$config["loginServiceHTML"]=$loginServiceHTML;
	$config["topErrorMessageHTML"] = topErrorMessage($config);
	return $config;
	}

function topStatus($config)
	{
	$topStatusHTML = "";
	if ($config["modulSelect"] != "notLogged")
		{
		if (setConfigValue($config,"configShare","onlyView") != 1 || $_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserLevel"] > 1)
			{
			$topStatusHTML .= "<div id='topStatusButton'>";
			if ($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 2 
				AND $config["modulAction"] == "list")
				{	
/*
				$topStatusHTML .= "<a title='' href='index.php?modulSelect=configs&amp;modulAction=list&amp;configscmd=resetall&amp;whichModul=".$config["modulSelect"]."'>";
				$topStatusHTML .= "<img alt='' src='" . $config["configShare"]["imageButton"].$config["configShare"]["configsButton"]."' border=0 name='config_".$config["modulSelect"]."' class='buttonBox' title='".$config["core_configs"]["title"]."'>";
				$topStatusHTML .= "</a>";
*/
				}
			$topStatusHTML .= "</div>";
			$topStatusHTML .= "<div id='topStatusText'>";
			$topStatusHTML .= $config[$config["modulSelect"]]["title"];
			if ($config["modulSelect"]=="nocore_reservation")
				{
				if (isset($_SESSION["calendarSelectedDate"]))
					{
					$topStatusHTML .=" (".$_SESSION["calendarSelectedDate"].") ";
					}
				else if (isset($_SESSION["calendarWeek"]))
					{
					$topStatusHTML .=" (".$_SESSION["calendarYear"].". ".$_SESSION["calendarWeek"].". ".$config["configShare"]["weekTitle"].") ";
					}
				else if (isset($_SESSION["calendarMonth"]))
					{
					$months = array('Január', 'Február', 'Március', 'Április', 'Május', 'Június', 'Július', 'Augusztus', 'Szeptember', 'Október', 'November', 'December');
					$topStatusHTML .=" (".$_SESSION["calendarYear"].". ".$months[$_SESSION["calendarMonth"]-1].") ";
					}
				else if (isset($_SESSION["calendarYear"]))
					{
					$topStatusHTML .=" (".$_SESSION["calendarYear"].") ";
					}
				}
			if ($config["modulAction"] != "list")
				{
				$topStatusHTML .= "&nbsp;=>&nbsp;".$config["configShare"][$config["modulAction"]."Title"];
				}
			$topStatusHTML .= "</div>";
			}
		}
	return $topStatusHTML;	
	}

function topAdmin($config)
	{
	$serviceMenuHTML = "";
	if ($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] > 1)
		{ 
		$topServiceCFG = iniCFGParser($config["configShare"]["iniCFG"],"##serviceMenuCFG##","##/serviceMenuCFG##");
		$isModulHTML = "";
		$serviceMenuHTMLStart = "<div id='adminBox'><div id='adminButton'>";
		$serviceMenuParamDIM = explode('<#>',$topServiceCFG);
		for ($serviceMenuCount=0;$serviceMenuCount<count($serviceMenuParamDIM);$serviceMenuCount++)
			{
			$serviceMenuFieldDIM = explode('#',rtrim(ltrim($serviceMenuParamDIM[$serviceMenuCount])));
			if (isModulView($config,$serviceMenuFieldDIM[0]))
				{
				if ($serviceMenuFieldDIM[0]=="core_users" && !isModulAdmin($config,$serviceMenuFieldDIM[0]))
					{
					continue;
					}
				if ($serviceMenuFieldDIM[0]!="config")
					{
					$serviceMenuHTML .= "<a title='' href='index.php?modulSelect=".setConfigValue($config,$serviceMenuFieldDIM[0],"name")."&amp;modulAction=list&amp;".setConfigValue($config,$serviceMenuFieldDIM[0],"name")."cmd=resetall'>";
					}
				else
					{
					$serviceMenuHTML .= "<a title='' href='index.php?modulSelect=".setConfigValue($config,$serviceMenuFieldDIM[0],"name")."&amp;modulAction=list&amp;".setConfigValue($config,$serviceMenuFieldDIM[0],"name")."cmd=resetall&amp;calltype=all'>";
					}
				$serviceMenuHTML .= "<img alt='' src='" . setConfigValue($config,"configShare","imageButton").setConfigValue($config,$serviceMenuFieldDIM[0],"icon")."' border=0 name='".$serviceMenuFieldDIM[0]."' class='buttonBox' title='".setConfigValue($config,$serviceMenuFieldDIM[0],"title")."'>";
				$serviceMenuHTML .= "</a>";
				}
			}
		if (!empty($serviceMenuHTML))
			{
			$serviceMenuHTML = $serviceMenuHTMLStart.$serviceMenuHTML;
			$serviceMenuHTML .= "</div></div>";
			}
		}
	return $serviceMenuHTML;	
	}

function topErrorMessage($config)
	{
	$topErrorMessageHTML = "";
	if (isset($config["x_errorText"]) && $config["x_errorText"] != "")
		{
		$topErrorMessageHTML .= '<div id="errorMessageBox">';
		$topErrorMessageHTML .= '<div id="errorMessageText">';
		$topErrorMessageHTML .= $config["x_errorText"];
		$topErrorMessageHTML .= "</div>";
		$topErrorMessageHTML .= "</div>";
		}
	return $topErrorMessageHTML;	
	}

function activeItem($config,$p_itemValues,$whichField,$yes_tooltip,$no_tooltip)
	{
	if ($p_itemValues[$whichField]) 
		{
		$result .= "<img alt='' src='".setConfigValue($config,"configShare","imageButton")."pipa.png' border='0' title='".$yes_tooltip."' class='buttonBox'>";
		}
	else
		{
		$result .= "<img alt='' src='".setConfigValue($config,"configShare","imageButton")."x.png' border='0' title='".$no_tooltip."' class='buttonBox'>";
		}
	return $result;
	}

function changeYesNo($config, $p_itemValues,$which_permission,$x_which_field,$yes_tooltip,$no_tooltip)
	{
	$back_text = "";
	if (($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 2 ||
		$_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 3) && setConfigValue($config,"configShare","onlyView") != 1)
		{
		if ($x_which_field=='') $x_which_field=0;
		if (isModulAdd($config,$config["modulSelect"]) || isModulEdit($config,$config["modulSelect"])) 
			{ 
			$modulTable = $config[$config["modulSelect"]]["mainTable"];
			if (!empty($modulTable)) {$modulTable = $config["modulSelect"];}
			}
		if (!is_null($x_which_field) && $x_which_field <> 0) 
			{
			$buttonYesNo = "pipa.png";
			$toolTip=$yes_tooltip;
			$boxType="button24x24YesBox";
			$buttonYesNo = "ok";
			}
		else
			{
			$buttonYesNo = "x.png";
			$toolTip=$no_tooltip;
			$boxType="button24x24NoBox";
			$buttonYesNo = "remove";
			}
		if (isModulAdd($config,$config["modulSelect"]) || isModulEdit($config,$config["modulSelect"])) 
			{ 
			if ($which_permission!="active")
				{
		  		$back_text .= "<button class='".$boxType."' title='".$toolTip."' name='modulOperation' type='submit' value='yesOrNo::".$config["modulSelect"]."::".$which_permission."::".$x_which_field."::".urlencode($p_itemValues["x_id"])."'>
				<span data-caption='Active' class='glyphicon glyphicon-".$buttonYesNo." ewIcon' data-phrase='DeleteLink'></span>
				</button>";
				}
			else
				{
		  		$back_text .= "<button class='".$boxType."' title='".$toolTip."' name='modulOperation' type='submit' value='yesOrNo::".$config["modulSelect"]."::".$which_permission."::".$x_which_field."::".urlencode($p_itemValues["x_id"])."'>
				<span data-caption='Törlés' class='glyphicon glyphicon-".$buttonYesNo." ewIcon' data-phrase='DeleteLink'></span>
				</button>";
				}
			}
		}
	else if ($which_permission != "active")
		{
		if (!is_null($x_which_field) && $x_which_field <> 0) 
			{
			$back_text .= "<img alt='' src='".setConfigValue($config,"configShare","imageButton")."pipa.png' border='0' title='".$yes_tooltip."'>";
			}
		else
			{
			$back_text .= "<img alt='' src='".setConfigValue($config,"configShare","imageButton")."x.png' border='0' title='".$no_tooltip."'>";
			}
		}
	return $back_text;
	}

function footerNavigation($config)
	{
	$footerNavigationHTML = "";
	if (!empty($config["modulAction"]))
		{
		$footerNavigationHTML .= "<div style='float:center;clear:both;height: 10px;'></div>
		<div id='footerNavigation'>";
		if ($config["modulAction"]=="pictureEdit")
			{
			$footerNavigationHTML .= "<button title='".$config["configShare"]["saveTitle"]."' id='footerMenuHeight24' name='save' type='submit' value=''>".$config["configShare"]["saveTitle"]."</button>";
			$footerNavigationHTML .= "<button title='".$config["configShare"]["saveNoBackTitle"]."' id='footerMenuHeight24' name='saveNoBack' type='submit' value=''>".$config["configShare"]["saveNoBackTitle"]."</button>";
			}
		else if ($config["modulAction"]!="view" && $config["modulAction"]!="delete" && $config["modulAction"]!="deleteGroup" && $config["modulAction"]!="pdf")
			{
			$footerNavigationHTML .= "<button title='".$config["configShare"]["saveTitle"]."' id='footerMenuHeight24' name='save' type='submit' value=''>".$config["configShare"]["saveTitle"]."</button>";
			if (!isset($config[$config["modulSelect"]]["saveNoBackNo"]) || (isset($config[$config["modulSelect"]]["saveNoBackNo"]) && $config[$config["modulSelect"]]["saveNoBackNo"]!="1"))
				{
				$footerNavigationHTML .= "<button title='".$config["configShare"]["saveNoBackTitle"]."' id='footerMenuHeight24' name='saveNoBack' type='submit' value=''>".$config["configShare"]["saveNoBackTitle"]."</button>";
				}
			if ($config["modulSelect"]=="nocore_reservation" && $config["modulAction"]=="edit")
				{
/*
	if (isModulDelete($config,$config["modulSelect"]) && setConfigValue($config,"configShare","onlyView") != 1) 
		{ 
		if (!isset($config[$config["modulSelect"]]["noDelete"]) || !$config[$config["modulSelect"]]["noDelete"])
			{
			if (($p_itemValues["x_id"] != NULL))
				{
				$subMenuHTML .= "<div><button title='".$config["configShare"]["deleteTitle"]."' id='subMenuHeight24' name='modulOperation' type='submit' value='item::delete::".$config["modulSelect"]."::".urlencode($p_itemValues["x_id"])."'>".$config["configShare"]["deleteTitle"]."</button></div>";
				}
			}
		} 
*/
				$_SESSION[$config["modulSelect"]["whichSystemAndMode"].$config["modulSelect"]."sqlKey"]="x_id='".$config["x_id"]."'";
				$footerNavigationHTML .= "<button title='".$config["configShare"]["deleteTitle"]."' id='footerMenuHeight24' name='modulOperation' type='submit' value='item::delete::".$config["modulSelect"]."::".urlencode($config["x_id"])."'>".$config["configShare"]["deleteTitle"]."</button>";
				}
			}
		else if ($config["modulAction"]=="delete" || $config["modulAction"]=="deleteGroup")
			{
			$footerNavigationHTML .= "<button title='".$config["configShare"]["deleteTitle"]."' id='footerMenuHeight24' name='delete' type='submit' value=''>".$config["configShare"]["deleteTitle"]."</button>";
			}
		if ($config["modulSelect"]=="nocore_reservation" && $config["modulAction"]=="view" && empty($config["nocore_reservation"]["reserveEditDisable"]))
			{
			$footerNavigationHTML .= "<button title='".$config["configShare"]["editTitle"]."' id='footerMenuHeight24' name='modulOperation' type='submit' value='item::edit::".$config["modulSelect"]."::".urlencode($config["x_id"])."'>".$config["configShare"]["editTitle"]."</button>";
			}
		$footerNavigationHTML .= "<button title='".$config["configShare"]["backTitle"]."' id='footerMenuHeight24' name='back' type='submit' value=''>".$config["configShare"]["backTitle"]."</button>";
		$footerNavigationHTML .= "</div>";
		$footerNavigationHTML .= "<div style='clear:both;height: 1px;'></div>";
		}
	return $footerNavigationHTML;
	}

function footer($config)
	{
	$footerHTML = setConfigValue($config,"system","footer");
	return $footerHTML;
	}

function subMenu($config, $p_itemValues, $p_modulMenu)
	{
	$subMenuHTML = "";
	if (!isset($config["plus_param"])) $config["plus_param"] = "";
	$subMenuCFG = iniCFGParser($config[$config["modulSelect"]]["iniCFG"],"##subMenuCFG##","##/subMenuCFG##");
	$subMenuItemsCFG = explode('<#>',$subMenuCFG);
	for ($subMenuItemCFGCount=0;$subMenuItemCFGCount<count($subMenuItemsCFG);$subMenuItemCFGCount++)
		{
		$subMenuItemCFG = explode('<=>',trim($subMenuItemsCFG[$subMenuItemCFGCount]));
		if (!empty($subMenuItemCFG[0]))
			{
			if (($p_itemValues["x_id"] != NULL))
				{
		  		$subMenuHTML .= "<button class='button24x24Box' title='".$config[$p_modulMenu][$subMenuItemCFG[1]."Title"]."' name='modulOperation' type='submit' value='simpleItem::".$subMenuItemCFG[1]."::".$p_modulMenu."::".urlencode($p_itemValues["x_id"])."'>".$subMenuItemCFG[0]."</button>";
				}
			}
		}
	if (isModulView($config,$config["modulSelect"])) 
		{ 
		if (!isset($config[$config["modulSelect"]]["noView"]) || !$config[$config["modulSelect"]]["noView"])
			{
			if (($p_itemValues["x_id"] != NULL))
				{
				$subMenuHTML .= "<button class='button24x24Box' title='".$config["configShare"]["viewTitle"]."' id='subMenuHeight24' name='modulOperation' type='submit' value='item::view::".$config["modulSelect"]."::".urlencode($p_itemValues["x_id"])."'><img border='0' class='buttonBox' title='".$config["configShare"]["viewTitle"]."' src='img/button/view.png' alt=''></button>";
				}
			}
		}
	if (isModulAdd($config,$config["modulSelect"]) && setConfigValue($config,"configShare","onlyView") != 1  &&
		($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] > 1))
		{ 
		if (!isset($config[$config["modulSelect"]]["noCopy"]) || !$config[$config["modulSelect"]]["noCopy"])
			{
			if (($p_itemValues["x_id"] != NULL))
				{
				$subMenuHTML .= "<button title='".$config["configShare"]["copyTitle"]."' class='buttonBox24x24' id='subMenuHeight24' name='modulOperation' type='submit' value='item::add::".$config["modulSelect"]."::".urlencode($p_itemValues["x_id"])."'>
				<span data-caption='".$config["configShare"]["copyTitle"]."' class='glyphicon glyphicon-duplicate' ewIcon' data-phrase='DuplicateLink'></span>
				</button>";
				}
			}
		} 
	if (isModulEdit($config,$config["modulSelect"]) && setConfigValue($config,"configShare","onlyView") != 1) 
		{ 
		if (!isset($config[$config["modulSelect"]]["noEdit"]) || !$config[$config["modulSelect"]]["noEdit"])
			{
			if (($p_itemValues["x_id"] != NULL))
				{
				$subMenuHTML .= "<button title='".$config["configShare"]["editTitle"]."' class='buttonBox24x24' id='subMenuHeight24' name='modulOperation' type='submit' value='item::edit::".$config["modulSelect"]."::".urlencode($p_itemValues["x_id"])."'>
				<span data-caption='".$config["configShare"]["editTitle"]."' class='glyphicon glyphicon-edit' ewIcon' data-phrase='EditLink'></span>
				</button>";
				}
			}
		}
	if (isModulDelete($config,$config["modulSelect"]) && setConfigValue($config,"configShare","onlyView") != 1) 
		{ 
		if (!isset($config[$config["modulSelect"]]["noDelete"]) || !$config[$config["modulSelect"]]["noDelete"])
			{
			if (($p_itemValues["x_id"] != NULL))
				{
				$subMenuHTML .= "<button title='".$config["configShare"]["deleteTitle"]."' class='buttonBox24x24' id='subMenuHeight24' name='modulOperation' type='submit' value='item::delete::".$config["modulSelect"]."::".urlencode($p_itemValues["x_id"])."'>
				<span data-caption='Törlés' class='glyphicon glyphicon-trash ewIcon' data-phrase='DeleteLink'></span>
				</button>";
				}
			}
		} 
	$subMenuCFG = iniCFGParser($config[$config["modulSelect"]]["iniCFG"],"##subMenuAddCFG##","##/subMenuAddCFG##");
	$subMenuItemsCFG = explode('<#>',$subMenuCFG);
	for ($subMenuItemCFGCount=0;$subMenuItemCFGCount<count($subMenuItemsCFG);$subMenuItemCFGCount++)
		{
		$subMenuItemCFG = explode('<=>',trim($subMenuItemsCFG[$subMenuItemCFGCount]));
		if (!empty($subMenuItemCFG[0]))
			{
			if (($p_itemValues["x_id"] != NULL))
				{
				if ($subMenuItemCFG[0]!="pdf")
					{
					$subMenuHTML .= "<div><button title='".$config[$p_modulMenu][$subMenuItemCFG[1]."Title"]."' id='subMenuHeight24' name='modulOperation' type='submit' value='item::".$subMenuItemCFG[1]."::".$config["modulSelect"]."::".urlencode($p_itemValues["x_id"])."'>".$config["configShare"][$subMenuItemCFG[1]."Title"]."</button></div>";
					}
				else
					{
					if (isset($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_nocore_sealNumber"]) ||
						isset($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_nocore_doctorID"]) ||
						(isset($_SESSION[$config["modulSelect"]."_s_nocore_doctorID"]) && !empty($_SESSION[$config["modulSelect"]."_s_nocore_doctorID"])))
						{
						$subMenuHTML .= "<div><button title='".$config[$p_modulMenu][$subMenuItemCFG[1]."Title"]."' id='subMenuHeight24' name='modulOperation' type='submit' value='item::".$subMenuItemCFG[1]."::".$config["modulSelect"]."::".urlencode($p_itemValues["x_id"])."'>".$config["configShare"][$subMenuItemCFG[1]."Title"]."</button></div>";
						}
					}
				}
			}
		}
	if (isModulAdmin($config,$config["modulSelect"]) && $config["configShare"]["onlyView"] != 1) 
		{ 
		$subMenuHTML.="".changeYesNo($config, $p_itemValues,"active",$p_itemValues["x_active"],$config["configShare"]["yesTitle"],$config["configShare"]["noTitle"])."";
		}
	return $subMenuHTML;
	}

function navigationNew($config,$p_modulMenu)
	{
	$config["sharedNavigation"]="";
	$config["sharedNavigationAdd"]="";
	if ($config[$config["modulSelect"]]["totalRecs"] > 0)
		{
		$config[$config["modulSelect"]]["rsEof"] = ($config[$config["modulSelect"]]["totalRecs"] < ($config[$config["modulSelect"]]["startRec"] + $config[$config["modulSelect"]]["displayRecs"]));
		$config[$config["modulSelect"]]["PrevStart"] = $config[$config["modulSelect"]]["startRec"] - $config[$config["modulSelect"]]["displayRecs"];
		if ($config[$config["modulSelect"]]["PrevStart"] < 1) $config[$config["modulSelect"]]["PrevStart"] = 1;
		$config[$config["modulSelect"]]["NextStart"] = $config[$config["modulSelect"]]["startRec"] + $config[$config["modulSelect"]]["displayRecs"];
		if ($config[$config["modulSelect"]]["NextStart"] > $config[$config["modulSelect"]]["totalRecs"] ) $config[$config["modulSelect"]]["NextStart"] = $config[$config["modulSelect"]]["startRec"];
		$config[$config["modulSelect"]]["LastStart"] = intval(($config[$config["modulSelect"]]["totalRecs"]-1)/$config[$config["modulSelect"]]["displayRecs"])*$config[$config["modulSelect"]]["displayRecs"]+1;
		if ($config[$config["modulSelect"]]["startRec"] > $config[$config["modulSelect"]]["totalRecs"])
			{
			$config[$config["modulSelect"]]["startRec"]=$config[$config["modulSelect"]]["totalRecs"];
			}
		else
			{
			}
		$config[$config["modulSelect"]]["stopRec"] = $config[$config["modulSelect"]]["startRec"] + $config[$config["modulSelect"]]["displayRecs"] - 1;
		$config[$config["modulSelect"]]["recCount"] = $config[$config["modulSelect"]]["totalRecs"] - 1;
		if ($config[$config["modulSelect"]]["rsEof"])
			{
			$config[$config["modulSelect"]]["recCount"]=$config[$config["modulSelect"]]["totalRecs"];
			}
		if ($config[$config["modulSelect"]]["stopRec"] > $config[$config["modulSelect"]]["recCount"])
			{
			$config[$config["modulSelect"]]["stopRec"] = $config[$config["modulSelect"]]["recCount"];
			}
		if (!isset($config[$config["modulSelect"]]["listScroll"])) {$config[$config["modulSelect"]]["listScroll"]=0;}
		if (!isset($config[$config["modulSelect"]]["navigationNoText"])) {$config[$config["modulSelect"]]["navigationNoText"]=1;}
		if ($config[$config["modulSelect"]]["navigationNoText"]==1)
			{
			$config["sharedNavigation"] .= "<div style='float:left;'>";
			$config["sharedNavigation"] .= "<span class='navigationText'><input type='text' name='".$config["modulSelect"]."pageno' value='' placeholder='";
			$config["sharedNavigation"] .= intval(($config[$config["modulSelect"]]["startRec"]-1)/$config[$config["modulSelect"]]["displayRecs"])+1;
			$config["sharedNavigation"] .= "' size='4' style='text-align:right'>";
			$config["sharedNavigation"] .= "/&nbsp;";
			$config["sharedNavigation"] .= intval(($config[$config["modulSelect"]]["totalRecs"]-1)/$config[$config["modulSelect"]]["displayRecs"])+1;
			$config["sharedNavigation"] .= "&nbsp;".$config["configShare"]["pageTitle"]."</span></div>";
			}
		// first page button
		$config["sharedNavigation"] .= "<div style='float:right;'><div style='float:left;'>";
		if ($config[$config["modulSelect"]]["listScroll"]!=1)
			{
			if ($config[$config["modulSelect"]]["startRec"] == 1)
				{
				$config["sharedNavigation"] .= "<img src='" . $config["configShare"]["imageButton"] . setConfigValue($config,$config["modulSelect"],"noButton")."' border='0' class='buttonBox'>";
				}
			else
				{
		  		$config["sharedNavigation"] .= "<button style='background-image:url(".$config["systemROOT"]."backend/".$config["configShare"]["imageButton"] . setConfigValue($config,$config["modulSelect"],"firstButton").")' class='button24x24Box' title='".$config["configShare"]["firstTitle"]."' name='modulOperation' type='submit' value='start::".$config["modulSelect"]."::1'></button>";
				}
			}
		// previous page button
		if ($config[$config["modulSelect"]]["listScroll"]!=1)
			{
			if ($config[$config["modulSelect"]]["PrevStart"] == $config[$config["modulSelect"]]["startRec"])
				{
				$config["sharedNavigation"] .= "<img src='" . $config["configShare"]["imageButton"] . setConfigValue($config,$config["modulSelect"],"noButton")."' border='0' class='buttonBox'>";
				}
			else
				{
		  		$config["sharedNavigation"] .= "<button style='background-image:url(".$config["systemROOT"]."backend/".$config["configShare"]["imageButton"] . setConfigValue($config,$config["modulSelect"],"prevButton").")' class='button24x24Box' title='".$config["configShare"]["prevTitle"]."' name='modulOperation' type='submit' value='start::".$config["modulSelect"]."::".$config[$config["modulSelect"]]["PrevStart"]."'></button>";
				}
			if ($config[$config["modulSelect"]]["startRec"]!=1)
				{
		  		$config["sharedNavigation"] .= "<button style='background-image:url(".$config["systemROOT"]."backend/".$config["configShare"]["imageButton"] . setConfigValue($config,$config["modulSelect"],"prevItemButton").")' class='button24x24Box' title='".$config["configShare"]["prevItemTitle"]."' name='modulOperation' type='submit' value='start::".$config["modulSelect"]."::".($config[$config["modulSelect"]]["startRec"]-1)."'></button>";
				}
			else
				{
				$config["sharedNavigation"] .= "<img src='" . $config["configShare"]["imageButton"] . setConfigValue($config,$config["modulSelect"],"noButton")."' border='0' class='buttonBox'>";
				}
			}
		// current page number
		if ($config[$config["modulSelect"]]["navigationNoText"]==1)
			{
			$config["sharedNavigation"] .= "</div><div style='float:left;line-height:24px;'>";
			$config["sharedNavigation"] .= "<span class='navigationText'>&nbsp;".trim($config[$config["modulSelect"]]["startRec"]) . " - " . $config[$config["modulSelect"]]["stopRec"] . "&nbsp;</span>";
			$config["sharedNavigation"] .= "</div><div style='float:left;'>";
			}
		// next page button
		if ($config[$config["modulSelect"]]["listScroll"]!=1)
			{
			if ($config[$config["modulSelect"]]["startRec"]<$config[$config["modulSelect"]]["totalRecs"]-$config[$config["modulSelect"]]["displayRecs"]+1)
				{
		  		$config["sharedNavigation"] .= "<button style='background-image:url(".$config["systemROOT"]."backend/".$config["configShare"]["imageButton"].setConfigValue($config,$config["modulSelect"],"nextItemButton").")' class='button24x24Box' title='".setConfigValue($config,$config["modulSelect"],"nextItemTitle")."' name='modulOperation' type='submit' value='start::".$config["modulSelect"]."::".($config[$config["modulSelect"]]["startRec"]+1)."'></button>";
				}
			else
				{
				$config["sharedNavigation"] .= "<img src='" . $config["configShare"]["imageButton"] . setConfigValue($config,$config["modulSelect"],"noButton")."' border='0' class='buttonBox'>";
				}
			if ($config[$config["modulSelect"]]["NextStart"] == $config[$config["modulSelect"]]["startRec"])
				{
				$config["sharedNavigation"] .= "<img src='" . $config["configShare"]["imageButton"] . setConfigValue($config,$config["modulSelect"],"noButton")."' border='0' class='buttonBox'>";
				}
			else
				{
		  		$config["sharedNavigation"] .= "<button class='button24x24Box' style='background-image:url(".$config["systemROOT"]."backend/".$config["configShare"]["imageButton"].setConfigValue($config,$config["modulSelect"],"nextButton").")'title='".setConfigValue($config,$config["modulSelect"],"nextTitle")."' name='modulOperation' type='submit' value='start::".$config["modulSelect"]."::".$config[$config["modulSelect"]]["NextStart"]."'></button>";
				}
			}
		// last page button 
		if ($config[$config["modulSelect"]]["listScroll"]!=1)
			{
			$config["sharedNavigation"] .= "</div><div style='float:left;'>";
			if ($config[$config["modulSelect"]]["startRec"]<$config[$config["modulSelect"]]["totalRecs"]-$config[$config["modulSelect"]]["displayRecs"]+1)
				{
		  		$config["sharedNavigation"] .= "<button style='background-image:url(".$config["systemROOT"]."backend/".$config["configShare"]["imageButton"] . setConfigValue($config,$config["modulSelect"],"lastButton").")' class='button24x24Box' title='".setConfigValue($config,$config["modulSelect"],"lastTitle")."' name='modulOperation' type='submit' value='start::".$config["modulSelect"]."::".$config[$config["modulSelect"]]["LastStart"]."'></button>";
				}
			else
				{
				$config["sharedNavigation"] .= "<img src='" . $config["configShare"]["imageButton"] . setConfigValue($config,$config["modulSelect"],"noButton")."' border='0' class='buttonBox'>";
				}
			$config["sharedNavigation"] .= "</div><div style='float:left;'>";
			}
		if (isModulAdd($config,$config["modulSelect"]))
			{
			if ((!isset($config[$config["modulSelect"]]["noAdd"]) || !$config[$config["modulSelect"]]["noAdd"]) && (!isset($GLOBALS["treeAdmin"]) || !$GLOBALS["treeAdmin"]))
				{
				$config["sharedNavigationAdd"] .= "<button title='".$config["configShare"]["addTitle"]."' id='buttonHeight24' name='modulOperation' type='submit' value='item::add::".$config["modulSelect"]."::'>".$config["configShare"]["addTitle"]."</button>";
				}
			}
		else
			{
			$config["sharedNavigation"] .= "<img src='" . $config["configShare"]["imageButton"] . setConfigValue($config,$config["modulSelect"],"noButton")."' border='0' class='buttonBox'>";
			}

		$navigationAddCFG = iniCFGParser($config[$config["modulSelect"]]["iniCFG"],"##navigationAddCFG##","##/navigationAddCFG##");
		$navigationAddItemsCFG = explode('<#>',$navigationAddCFG);
		for ($navigationAddItemCFGCount=0;$navigationAddItemCFGCount<count($navigationAddItemsCFG);$navigationAddItemCFGCount++)
			{
			$navigationAddItemCFG = explode('::',trim($navigationAddItemsCFG[$navigationAddItemCFGCount]));
			if (!empty($navigationAddItemCFG[0]))
				{
				if ($navigationAddItemCFG[0]!="pdf")
					{
					$config["sharedNavigationAdd"] .= "<button title='".$config[$config["modulSelect"]][$navigationAddItemCFG[1]."Title"]."' id='buttonHeight24' name='modulOperation' type='submit' value='item::".$navigationAddItemCFG[1]."::".$config["modulSelect"]."'>".$config["configShare"][$navigationAddItemCFG[0]."Title"]."</button>";
					}
				else
					{
					if (isset($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_nocore_sealNumber"]) ||
						isset($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_nocore_doctorID"]) ||
						(isset($_SESSION[$config["modulSelect"]."_s_nocore_doctorID"]) && !empty($_SESSION[$config["modulSelect"]."_s_nocore_doctorID"])))
						{
						$config["sharedNavigationAdd"] .= "<button title='".$config[$config["modulSelect"]][$navigationAddItemCFG[1]."Title"]."' id='buttonHeight24' name='modulOperation' type='submit' value='item::".$navigationAddItemCFG[1]."::".$config["modulSelect"]."'>".$config["configShare"][$navigationAddItemCFG[0]."Title"]."</button>";
						}
					}
				}
			}
		if (isset($config[$config["modulSelect"]]["listZoom"]) && $config[$config["modulSelect"]]["listZoom"]==1)
			{
			if (isset($config["configShare"][$config["modulSelect"]."Zoom"]) && !empty($config["configShare"][$config["modulSelect"]."Zoom"]))
				{
				switch ($config["configShare"][$config["modulSelect"]."Zoom"])
					{
					case "zoomin":
						{
						$config["sharedNavigationAdd"] .= "<button title='".$config["configShare"]["zoomoutTitle"]."' id='buttonHeight24' name='modulOperation' type='submit' value='simple::zoomout::".$config["modulSelect"]."'>".$config["configShare"]["zoomoutTitle"]."</button>";
						$config["sharedNavigationAdd"] .= "<button title='".$config["configShare"]["zoomCloseTitle"]."' id='buttonHeight24' name='modulOperation' type='submit' value='simple::zoomclose::".$config["modulSelect"]."'>".$config["configShare"]["zoomCloseTitle"]."</button>";
						break;
						}
					case "zoomout":
						{
						$config["sharedNavigationAdd"] .= "<button title='".$config["configShare"]["zoominTitle"]."' id='buttonHeight24' name='modulOperation' type='submit' value='simple::zoomin::".$config["modulSelect"]."'>".$config["configShare"]["zoominTitle"]."</button>";
						$config["sharedNavigationAdd"] .= "<button title='".$config["configShare"]["zoomCloseTitle"]."' id='buttonHeight24' name='modulOperation' type='submit' value='simple::zoomclose::".$config["modulSelect"]."'>".$config["configShare"]["zoomCloseTitle"]."</button>";
						break;
						}
					case "zoomclose":
						{
						$config["sharedNavigationAdd"] .= "<button title='".$config["configShare"]["zoominTitle"]."' id='buttonHeight24' name='modulOperation' type='submit' value='simple::zoomin::".$config["modulSelect"]."'>".$config["configShare"]["zoominTitle"]."</button>";
						$config["sharedNavigationAdd"] .= "<button title='".$config["configShare"]["zoomoutTitle"]."' id='buttonHeight24' name='modulOperation' type='submit' value='simple::zoomout::".$config["modulSelect"]."'>".$config["configShare"]["zoomoutTitle"]."</button>";
						break;
						}
					}
				}
			else
				{
				$config["sharedNavigationAdd"] .= "<button title='".$config["configShare"]["zoomoutTitle"]."' id='buttonHeight24' name='modulOperation' type='submit' value='simple::zoomout::".$config["modulSelect"]."'>".$config["configShare"]["zoomoutTitle"]."</button>";
				$config["sharedNavigationAdd"] .= "<button title='".$config["configShare"]["zoomCloseTitle"]."' id='buttonHeight24' name='modulOperation' type='submit' value='simple::zoomclose::".$config["modulSelect"]."'>".$config["configShare"]["zoomCloseTitle"]."</button>";
				}
			}
		if ($config[$config["modulSelect"]]["navigationNoText"]==1)
			{
			$config["sharedNavigationAdd"] .= "<span class='navigationText'>".$config[$config["modulSelect"]]["startRec"] . " / " . $config[$config["modulSelect"]]["totalRecs"]."&nbsp;".$config["configShare"]["itemTitle"]."&nbsp;</span>";
			}
		$config["sharedNavigation"] .= "</div></div>";
		}
	else
		{
		if ($config["modulSelect"]!="nocore_reservation")
			{
			$config["sharedNavigationAdd"] .= "<span class='navigationTextError'>";
			if (isModulList($config,$config["modulSelect"]))
				{
				$config["sharedNavigationAdd"] .= $config["configShare"]["noRecordTitle"];
				}
			else
				{
				$config["sharedNavigationAdd"] .= $config["configShare"]["noRightsTitle"];
				}
			$config["sharedNavigationAdd"] .= "</span>";
			}
		if (isModulAdd($config,$config["modulSelect"]))
			{
			if (!isset($config[$config["modulSelect"]]["noAdd"]) || !$config[$config["modulSelect"]]["noAdd"])
				{
				$config["sharedNavigationAdd"] .= "<button title='".$config["configShare"]["addTitle"]."' id='buttonHeight24' name='modulOperation' type='submit' value='item::add::".$config["modulSelect"]."::'>".$config["configShare"]["addTitle"]."</button>";
				}
			}
		$navigationAddCFG = iniCFGParser($config[$config["modulSelect"]]["iniCFG"],"##navigationAddCFG##","##/navigationAddCFG##");
		$navigationAddItemsCFG = explode('<#>',$navigationAddCFG);
		for ($navigationAddItemCFGCount=0;$navigationAddItemCFGCount<count($navigationAddItemsCFG);$navigationAddItemCFGCount++)
			{
			$navigationAddItemCFG = explode('::',trim($navigationAddItemsCFG[$navigationAddItemCFGCount]));
			if (!empty($navigationAddItemCFG[0]))
				{
				if ($navigationAddItemCFG[0]!="pdf")
					{
					$config["sharedNavigationAdd"] .= "<button title='".$config[$config["modulSelect"]][$navigationAddItemCFG[1]."Title"]."' id='buttonHeight24' name='modulOperation' type='submit' value='item::".$navigationAddItemCFG[1]."::".$config["modulSelect"]."'>".$config["configShare"][$navigationAddItemCFG[0]."Title"]."</button>";
					}
				else
					{
					if (isset($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_nocore_sealNumber"]) ||
						isset($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_nocore_doctorID"]) ||
						(isset($_SESSION[$config["modulSelect"]."_s_nocore_doctorID"]) && !empty($_SESSION[$config["modulSelect"]."_s_nocore_doctorID"])))
						{
						$config["sharedNavigationAdd"] .= "<button title='".$config[$config["modulSelect"]][$navigationAddItemCFG[1]."Title"]."' id='buttonHeight24' name='modulOperation' type='submit' value='item::".$navigationAddItemCFG[1]."::".$config["modulSelect"]."'>".$config["configShare"][$navigationAddItemCFG[0]."Title"]."</button>";
						}
					}
				}
			}
		}
	if (setConfigValue($config,$config["modulSelect"],"noNavigationDefault")==0)
		{
		$config["navigationHTML"]=$config["sharedNavigation"];
		$config["navigationAddHTML"]=$config["sharedNavigationAdd"];
		$config["navigationBackHTML"]=$config["sharedNavigationBack"];
		}
	return $config;
	}


function orderChange($config,$which_field, $orderTitle)
	{
	$actualOrder = setConfigValue($config,$config["modulSelect"],$which_field);
	if (ISSET($actualOrder))
		{
		$order_box .= "<div style='float:left'>".$orderTitle."&nbsp;</div>";
		$really_order = str_replace("Title","",$which_field);
  		$order_box .= "<button class='nosortButton16x16' title='".$config["configShare"]["orderTitle"]."' name='modulOperation' type='submit' value='order::".$config["modulSelect"]."::".urlencode($really_order)."'>";

		$order_box .= "<img style='width:16px;height:16px;margin-left:-3px;' alt='".$config["configShare"]["orderTitle"]."' src='";
		if ($config[$config["modulSelect"]]["OrderBy"] == $really_order) 
			{ 
		 	if (@$_SESSION[$config["configShare"]["whichSystemAndMode"].$config["modulSelect"] . "_OT"] == "ASC") 
				{
				$order_box .= $config["configShare"]["imageButton"] . "asc.png";
				}
			else if (@$_SESSION[$config["configShare"]["whichSystemAndMode"].$config["modulSelect"] . "_OT"] == "DESC") 
				{
				$order_box .= $config["configShare"]["imageButton"] . "desc.png";
				}
			else
				{
				$order_box .= $config["configShare"]["imageButton"] . "nosort.png";
				}
			}
		else
			{
			$order_box .= $config["configShare"]["imageButton"] . "nosort.png";
			}
		$order_box .= "' title='".$config["configShare"]["orderTitle"]."' border='0'>";

		$order_box .= "</button>";
		}
	else
		{
		$order_box = NULL;
		}
	return $order_box;
	}

function tplUp($name,$config,$p_tplPATH)
	{
	$addDir=$p_tplPATH;
	$ext='html';
	if (file_exists($addDir."{$name}.{$ext}"))
		{ 
		$tpl='';
		$cont=file($addDir.$name.'.'.$ext);
		while(list($line_num,$line)=each($cont)) $tpl.=$line;
		return $tpl;
		}
	else die ("TPL NEM TALÁLTAM: $name");
	}

function header1($config)
	{
/**** CSS load ****/
	$cssCFG = iniCFGParser($config["configShare"]["iniCFG"],"##cssCFG##","##/cssCFG##");
	$cssItemCFG = explode('<#>',$cssCFG);
	$cssHTML="";
	for ($cssItemCFGCount=0;$cssItemCFGCount<count($cssItemCFG);$cssItemCFGCount++)
		{
		if (!empty($cssItemCFG[$cssItemCFGCount]))
			{
			$config["pageStartHTML"] .= '<LINK REL="stylesheet" HREF="'.$cssItemCFG[$cssItemCFGCount].'" TYPE="text/css">';
			}
		}
/**** Javascript load ****/
	$javascriptCFG = iniCFGParser($config["configShare"]["iniCFG"],"##javascriptCFG##","##/javascriptCFG##");
	$javascriptCFG .= iniCFGParser($config[$config["modulSelect"]]["iniCFG"],"##javascriptCFG##","##/javascriptCFG##");
	$javascriptItemCFG = explode('<#>',$javascriptCFG);
	$javascriptHTML="";
	for ($javascriptItemCFGCount=0;$javascriptItemCFGCount<count($javascriptItemCFG);$javascriptItemCFGCount++)
		{
		if (!empty($javascriptItemCFG[$javascriptItemCFGCount]))
			{
			$config["pageStartHTML"] .= "<script language=\"JavaScript\" type=\"text/javascript\" src=\"" . $config["systemROOT"].$config["configShare"]["sharePath"] . "js/".$javascriptItemCFG[$javascriptItemCFGCount].".js\"></script>";
			}
		}

//	$config["topDevelopHTML"] = topDevelop($config);
	$config["topLogoHTML"] = topLogo($config);
	$config["topMenuHTML"] = topMenu($config);
	$config = loginService($config);
	if (@$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserLevel"] == 2)
		{
		$config["core_themes"]["themesSelect"] = filterSelect($config,"core_themes",$p_itemValues,0);
		$themesSelectFormHTML = iniCFGParser($config["sharedTPL"]["iniCFG"],"##themesSelectForm##","##/themesSelectForm##");
		$config["themesHTML"] = parseContent($themesSelectFormHTML,$config,"");
		}
	if ($config["configShare"]["topMessageTitle"]<>"")
		{
		if (substr($config["configShare"]["topMessageTitle"],0,2)!="//")
			{
			$config["topMessageHTML"] = '<div id="mainMessageBox">'.$config["configShare"]["topMessageTitle"].'</div>';
			}
		}
	if ($_GET["import"]=="ok")
		{
		$config["statusMessageHTML"] = '<div id="greenMessageBox">'.$config[$config["modulSelect"]]["importOKTitle"].'</div>';
		}
	if ($_GET["import"]=="bad")
		{
		$config["statusMessageHTML"] = '<div id="redMessageBox">'.$config[$config["modulSelect"]]["importBADTitle"].'</div>';
		}
	$config["topAdminHTML"] = topAdmin($config);
	$config["topStatusHTML"] = topStatus($config);
	$config["footerHTML"] = footer($config);
	$config["systemTitle"] = $config["configShare"]["systemTitle"];
	return $config;
	}

function topLogo($config)
	{
	$topLogoHTML=$config["configShare"]["topLogoTitle"];
	return $topLogoHTML;	
	}

function topDevelop($config)
	{
	$topDevelopHTML .= "<img src='" . setConfigValue($config,"configShare","imagePath").$config["configShare"]["developLogo"]."' border=0 name='config_".$config["modulSelect"]."' title='".setConfigValue($config,"config","developerTitle")."'>";
	return $topDevelopHTML;	
	}

function display($config)
	{
	if (isset($config[$config["modulSelect"]]["templateName"]) && !empty($config[$config["modulSelect"]]["templateName"]))
		{
		$viewPageHTML = tplUp($config[$config["modulSelect"]]["templateName"],$config,$config["configShare"]["tplPath"]);
		$viewPageHTML = parseContent($viewPageHTML,$config,"");
		if ($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_User"] == $config["configShare"]["guestUser"])
			{
			$viewItem["configShare_x_topMenu"]=0;
			$viewItem["configShare_x_content"]=0;
			}
		else
			{
			$viewItem["configShare_x_topMenu"]=1;
			$viewItem["configShare_x_content"]=1;
			}
		$viewPageHTML = clearForm($config, $viewPageHTML, $viewItem);
		$viewPageHTML = parseContent($viewPageHTML,$config,"");
		echo $viewPageHTML;
		}
	else
		{
		if (!empty($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"]) && $_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 1) $config["configShare"]["onlyView"] = 0;
		else $config["configShare"]["onlyView"] = 0;
		if (!empty($config["layoutMainHTML"]))
			{
			$config["fullHTML"] = tplUp($config["layoutMainHTML"],$config,$config["configShare"]["tplPath"]);
			}
		else if (isset($_SESSION[$config["configShare"]["whichSystemAndMode"]."layout"]) && !empty($_SESSION[$config["configShare"]["whichSystemAndMode"]."layout"]))
			{
			$config["fullHTML"] = tplUp($_SESSION[$config["configShare"]["whichSystemAndMode"]."layout"],$config,$config["configShare"]["tplPath"]);
			}
		else
			{
			$config["fullHTML"] = tplUp('layout',$config,$config["configShare"]["tplPath"]);
			}
		$config["fullHTML"] = parseContent($config["fullHTML"],$config,"");
		echo $config["fullHTML"];	
		}
	}

function optionView($config,$p_itemTable,$p_itemField,$p_itemID,$p_itemName,$p_itemValues)
	{
	if ($p_itemTable == "nocore_patient")
		{
		$sqlwrk = "SELECT ".$p_itemID.", CONCAT(TRIM(name),' -  ',TRIM(birthDate)) AS ".$p_itemName." FROM ".$p_itemTable." WHERE active=1 AND ".$p_itemID." = '" . $p_itemValues[$p_itemField]."'";
		}
	else
		{
		$sqlwrk = "SELECT ".$p_itemID.",".$p_itemName." FROM ".$p_itemTable." WHERE ".$p_itemID." = '" . $p_itemValues[$p_itemField]."'";
		}
	
	$optionRec=$config["dbConnect"]->prepare($sqlwrk);
	$optionRec->execute();
	$optionCount = $optionRec->rowCount();
	$x_result_name = "";
	if ($optionCount > 0)
		{
		$optionRS=$optionRec->fetch(PDO::FETCH_ASSOC);
		$x_result_name = $optionRS[$p_itemName];
		}
	else
		{
		$x_result_name = "&nbsp;";
		}
	$optionRec->closeCursor();
	return $x_result_name;
	}

function filterSelect($config,$p_itemTable,$p_itemValues,$p_pleaseSelect)
	{
	if (empty($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_".$p_itemTable."FilterID"]))
		{
//		$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_".$p_itemTable."FilterID"] = 1;
		} // set default value
	
	if (ISSET($config[$p_itemTable]["selectWidth"]) && !EMPTY($config[$p_itemTable]["selectWidth"]))
		{
		$selectWidth="style='width:".$config[$p_itemTable]["selectWidth"].";'";
		}
	else
		{
		$selectWidth="";
		}
	if (ISSET($config[$p_itemTable]["selectFields"]) && !EMPTY($config[$p_itemTable]["selectField"]))
		{
		$selectFields=$config[$p_itemTable]["selectFields"];
		}
	else
		{
//		$selectFields="id, name";
		$selectFields="*";
		}
	$resultHTML = "";
	if ($p_pleaseSelect==1)
		{
		$resultHTML .= "<option value=\"-1\">".$config["configShare"]["itemSelectTitle"]."</option>";
		}
	$sqlwrk = "SELECT ".$selectFields." FROM ".$p_itemTable." WHERE active=1 ORDER BY name";
	foreach ($config["dbConnect"]->query($sqlwrk) as $datawrk) 
		{
		$rowcntwrk = 0;
		$resultHTML .= "<option value=\"" . htmlspecialchars($datawrk["id"]) . "\"";
		if ($datawrk["id"] == $_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_".$p_itemTable."FilterID"])
			{
			$resultHTML .= " selected";
			}
		if ($p_itemTable != "core_themes")
			{
			$resultHTML .= ">" . $datawrk["name"] . "</option>";
			}
		else
			{
			$resultHTML .= " style='background-color:".$datawrk["bgcolor"].";color:".$datawrk["fgcolor"].";'>" . $datawrk["name"] . "</option>";
			}
		$rowcntwrk++;
		}
	return $resultHTML;
	}

function optionSelect($config,$p_itemTable,$p_itemField,$p_itemID,$p_itemName,$p_itemValues,$p_selectField, $p_topicFilter)
	{
	if (empty($p_itemValues[$p_itemField]))
		{
		$p_itemValues[$p_itemField] = 0;
		} // set default value
	$config["whose_id"] = str_replace("_rights","",$config["modulSelect"])."ID";
	$resultHTML = "<option value=\"\">".$config["configShare"]["itemSelectTitle"]."</option>";
	$optionFilter="";
	if ($p_itemTable == "nocore_doctor_order_day")
		{
		$sqlwrk = "SELECT ".$p_itemID.",".$p_itemName." FROM ".$p_itemTable." WHERE active=1";
		}
	else if ($p_itemTable == "nocore_patient")
		{
		$sqlwrk = "SELECT ".$p_itemID.", CONCAT(TRIM(name),' -  ',TRIM(birthDate)) AS ".$p_itemName." FROM ".$p_itemTable." WHERE active=1";
		}
	else if ($p_itemTable != "core_advert_size")
		{
		$sqlwrk = "SELECT ".$p_itemID.",".$p_itemName." FROM ".$p_itemTable." WHERE active=1 ORDER BY ".$p_itemName;
		}
	else
		{
		$sqlwrk = "SELECT ".$p_itemID.",".$p_itemName.",sizeWidth,sizeHeight FROM ".$p_itemTable." ORDER BY ".$p_itemName;
		}
	foreach ($config["dbConnect"]->query($sqlwrk) as $datawrk) 
		{
		$rowcntwrk = 0;
		$resultHTML .= "<option ";
		if ($p_itemTable == "size")
			{
			$resultHTML .= "rel='".$datawrk["sizeWidth"]."<=>".$datawrk["sizeHeight"]."' ";
			}
		$resultHTML .= "value=\"" . htmlspecialchars($datawrk[$p_itemID]) . "\"";
		if ($datawrk[$p_itemID] == @$p_itemValues[$p_itemField])
			{
			$resultHTML .= " selected";
			}
		$resultHTML .= ">" . $datawrk[$p_itemName];
		if ($p_itemTable == "size")
			{
			$resultHTML .= " [".$datawrk["sizeWidth"]."x".$datawrk["sizeHeight"]."]";
			}
		$resultHTML .= "</option>";
		$rowcntwrk++;
		}
	return $resultHTML;
	}

function optionSelect2($config,$selectField,$selectID,$selectValue,$inputValue)
	{
	$resultSelect = '<option value="">'.$config["startSelectTitle"].'</option>';
	foreach ($config["dbConnect"]->query($config[$selectField."SQL"]) as $selectROW) 
		{
		$resultSelect .= "<option value=\"" . htmlspecialchars($selectROW[$selectID]) . "\"";
		if ($selectROW[$selectID] == $inputValue)
			{
			$resultSelect .= " selected";
			}
		$resultSelect .= ">" . $selectROW[$selectValue];
		$resultSelect .= "</option>";
		}
	$config[$selectField]=$resultSelect;
	return $config;	
	}

function debugPrintValue($config, $p_printHead, $p_printValue, $p_printNeed)
	{
	if (($_SESSION[$config["configShare"]["whichSystemAndMode"]."status_UserLevel"] == 2) && ($p_printNeed == 1))
		{
		print ($p_printHead . " => " . $p_printValue."<br>");
		}
	}

function pictureView($config, $whichpicture, $picturetitle, $sWidth, $sHeight)
	{
	if (!empty($whichpicture)) 
		{ 
		if (is_file($whichpicture))
			{
			if (!(strpos($whichpicture,".swf") > 0))
				{
				if (empty($picturetitle))
					{
					$whichpictureview = "<img alt='".$picturetitle."' src='" . $whichpicture . "' border='0' width='500px'>";
					}
				else
					{
					$whichpictureview = "<img  alt='".$picturetitle."' src='" . $whichpicture . "' border='0' width='500px' title='".$picturetitle."'>";
					}
				}
			else
				{
				$whichpictureview = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://active.macromedia.com/flash4/cabs/swflash.cab#version=4,0,0,0"
					id="name" width="'.$sWidth.'" height="'.$sHeight.'">
					<param name="movie" value="'.$whichpicture.'">
					<param name="quality" value="high">
					<param name="wmode" value="transparent">
					<embed name="name" src="'.$whichpicture.'"
					quality="high" wmode="transparent" width="'.$sWidth.'" height="'.$sHeight.'"
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?
					P1_Prod_Version=ShockwaveFlash">
					</embed>
					</object>';
				}
			}
		else
			{
			$whichpictureview = "<img alt='".$picturetitle."' src='".$config["configShare"]["imageButton"]."nopict.png' border='0'>";
			}
		} 
	else
		{
		$whichpictureview = "<img alt='".$picturetitle."' src='".$config["configShare"]["imageButton"]."nopict.png' border='0'>";
		}
	return $whichpictureview;	
	}

function pictureService($config, $whichPicture, $key, $p_itemValues)
	{
	$whichpictureview = "<a title='' href='index.php?modulAction=pictureEdit&amp;key=" . urlencode($key) ."&amp;table=".$config["modulSelect"]."'>";
	if (!empty($whichPicture)) 
		{ 
		if (is_file($whichPicture))
			{
			$whichpictureview .= "<img alt='' src='" . $whichPicture. "' border='0' name='view' title='".$config["configShare"]["pictureEditTitle"]."'>";
			}
		else
			{
			$whichpictureview .= "<img alt='' src='" . $config["configShare"]["imageButton"] . "nopict.png' border='0' name='view' title='".$config["configShare"]["pictureAddTitle"]."' class='buttonBox'>";
			}
		} 
	else
		{
		$whichpictureview .= "<img alt='' src='" . $config["configShare"]["imageButton"] . "nopict.png' border='0' name='view' title='".$config["configShare"]["pictureAddTitle"]."' class='buttonBox'>";
		}
	$whichpictureview .= "</a>";
	return $whichpictureview;	
	}

function viewField($config, $viewItem)
	{
	if (file_exists($config["configShare"]["incPath"].$config["modulSelect"].".inc.php"))
		{
		include $config["configShare"]["incPath"].$config["modulSelect"].".inc.php";
		}

	return $viewItem;
	}
?>
