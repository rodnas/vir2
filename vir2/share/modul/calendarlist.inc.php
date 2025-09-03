<?php
//function calendarFrameList($config, $viewItem)
//	{
	$config["orderFull"]=0;
	if ($config["layoutMainHTML"]=="layoutsetup")
		{
//		$contentListtHTML = "";
		}
	else if ($config["layoutMainHTML"]=="layoutfull")
		{
		$contentListtHTML = $listHeadHTML;
		}
	if ($config[$config["modulSelect"]]["totalRecs"]==0)
		{
		$viewItem["listBottomNavigation"]=0;
		}
	if (isset($_SESSION["calendarSelectedDate"]) && isset($_SESSION["calendarWeek"]))
		{
		$_SESSION["calendarSelectedDate"]=date("Y-m-d",time());
		}
	if (isset($_SESSION["calendarSelectedDate"]) && !empty($_SESSION["calendarSelectedDate"]))
		{
		$calendarSelectedDate = mktime(0,0,0, substr($_SESSION["calendarSelectedDate"],5,2),substr($_SESSION["calendarSelectedDate"],8,2),substr($_SESSION["calendarSelectedDate"],0,4));
		}
	else if (isset($_SESSION["calendarWeek"]) && !empty($_SESSION["calendarWeek"]))
		{
		$monday    = date('Y.m.d', strtotime($_SESSION["calendarYear"]."-W".sprintf("%02s",$_SESSION["calendarWeek"])."-1"));
		$sunday    = date('Y.m.d', strtotime($_SESSION["calendarYear"]."-W".sprintf("%02s",$_SESSION["calendarWeek"])."-7"));
		}
	$contentListtHTML .= '<div style="overflow:auto;max-height:'.$config[$config["modulSelect"]]["listBoxHeight"].';background-color:#ffffff;">';
	$core_localserverSQL = "";
	if (isset($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_core_localserverID"]) && !empty($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_core_localserverID"]))
		{
		$core_localserverSQL = " AND core_localserverID='".$_SESSION[$config["configShare"]["whichSystemAndMode"]."status_core_localserverID"]."'";
		}
	else if (isset($_SESSION["nocore_reservation_s_core_localserverID"]) && !empty($_SESSION["nocore_reservation_s_core_localserverID"]))
		{
		$core_localserverSQL =  " AND core_localserverID='".$_SESSION["nocore_reservation_s_core_localserverID"]."'";
		}
	$nocore_doctorSQL = "";			
	if (isset($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_nocore_doctorID"]) && !empty($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_nocore_doctorID"]))
		{
		$nocore_doctorSQL0 = " AND nocore_doctor.id='".$_SESSION[$config["configShare"]["whichSystemAndMode"]."status_nocore_doctorID"]."'";
		$nocore_doctorSQL = " AND nocore_doctorID='".$_SESSION[$config["configShare"]["whichSystemAndMode"]."status_nocore_doctorID"]."'";
		}
	else if (isset($_SESSION["nocore_reservation_s_nocore_doctorID"]) && !empty($_SESSION["nocore_reservation_s_nocore_doctorID"]))
		{
		$nocore_doctorSQL0 = " AND nocore_doctor.id='".$_SESSION["nocore_reservation_s_nocore_doctorID"]."'";
		$nocore_doctorSQL = " AND nocore_doctorID='".$_SESSION["nocore_reservation_s_nocore_doctorID"]."'";
		}
	$patientTimeSQL = "(SELECT patientTime FROM nocore_doctor WHERE active=1".$core_localserverSQL.$nocore_doctorSQL0.") AS patientTime,";
	$patientTimeSQL .= "(SELECT reserveDayMin FROM nocore_doctor WHERE active=1".$core_localserverSQL.$nocore_doctorSQL0.") AS reserveDayMin,";
	$patientTimeSQL .= "(SELECT reserveDayMax FROM nocore_doctor WHERE active=1".$core_localserverSQL.$nocore_doctorSQL0.") AS reserveDayMax";
	switch ($_SESSION[$config["configShare"]["whichSystemAndMode"].$config["modulSelect"]."Type"])
		{
		case "daily":
			{
			$actualDate = $_SESSION["calendarSelectedDate"];
			$actualTimestamp = mktime(0, 0, 0, substr($actualDate,5,2),   substr($actualDate,8,2), substr($actualDate,0,4)); 
			$orderTimeSQL = "SELECT nocore_doctor_order_dayID,startTime,stopTime,startTimeReserve,stopTimeReserve,".$patientTimeSQL." FROM nocore_doctor_order WHERE active=1 ".$core_localserverSQL.$nocore_doctorSQL." AND nocore_doctor_order_dayID='".dayIdentifier($actualTimestamp)."'";
			$orderTime=$config["dbConnect"]->prepare($orderTimeSQL);
			$orderTime->execute();
			$orderTimeCount = $orderTime->rowCount();
			if ($orderTimeCount > 0)
				{
				$orderTimeData = $orderTime->fetch();
				$config[$config["modulSelect"]]["patientTime"] = $orderTimeData["patientTime"];
				$config[$config["modulSelect"]]["reserveDayMin"] = $orderTimeData["reserveDayMin"];
				$config[$config["modulSelect"]]["reserveDayMax"] = $orderTimeData["reserveDayMax"];
				if ($config["orderFull"]==1)
					{		
					$config[$config["modulSelect"]]["startHour"] = substr($orderTimeData["startTime"],0,2);
	//				$config[$config["modulSelect"]]["startMin"] = substr($orderTimeData["startTime"],3,2);
					$config[$config["modulSelect"]]["startMin"] = 0;
					$config[$config["modulSelect"]]["stopHour"] = substr($orderTimeData["stopTime"],0,2);
					$config[$config["modulSelect"]]["stopMin"] = substr($orderTimeData["stopTime"],3,2);
					}
				else
					{
					$config[$config["modulSelect"]]["startHour"] = substr($orderTimeData["startTimeReserve"],0,2);
	//				$config[$config["modulSelect"]]["startMin"] = substr($orderTimeData["startTimeReserve"],3,2);
					$config[$config["modulSelect"]]["startMin"] = 0;
					$config[$config["modulSelect"]]["stopHour"] = substr($orderTimeData["stopTimeReserve"],0,2);
					$config[$config["modulSelect"]]["stopMin"] = substr($orderTimeData["stopTimeReserve"],3,2);
					}
				$config[$config["modulSelect"]]["startHourReserve"] = substr($orderTimeData["startTimeReserve"],0,2);
				$config[$config["modulSelect"]]["startMinReserve"] = substr($orderTimeData["startTimeReserve"],3,2);
				$config[$config["modulSelect"]]["stopHourReserve"] = substr($orderTimeData["stopTimeReserve"],0,2);
				$config[$config["modulSelect"]]["stopMinReserve"] = substr($orderTimeData["stopTimeReserve"],3,2);
				}
			else
				{
				$config[$config["modulSelect"]]["patientTime"] = 60;
				$config[$config["modulSelect"]]["reserveDayMin"] = 1;
				$config[$config["modulSelect"]]["reserveDayMax"] = 60;
				$config[$config["modulSelect"]]["startHour"] = 8;
				$config[$config["modulSelect"]]["startMin"] = 0;
				$config[$config["modulSelect"]]["stopHour"] = 16;
				$config[$config["modulSelect"]]["stopMin"] = 00;
				$config[$config["modulSelect"]]["startHourReserve"] = "";
				$config[$config["modulSelect"]]["startMinReserve"] = "";
				$config[$config["modulSelect"]]["stopHourReserve"] = "";
				$config[$config["modulSelect"]]["stopMinReserve"] = "";
				}
			$fullMinStart = ($config[$config["modulSelect"]]["startHour"]*60+$config[$config["modulSelect"]]["startMin"]);
			$fullMinStop = ($config[$config["modulSelect"]]["stopHour"]*60+$config[$config["modulSelect"]]["stopMin"]);
			$fullMinActual = $fullMinStart;
			$fullMinStartReserve = ($config[$config["modulSelect"]]["startHourReserve"]*60+$config[$config["modulSelect"]]["startMinReserve"]);
			$fullMinStopReserve = ($config[$config["modulSelect"]]["stopHourReserve"]*60+$config[$config["modulSelect"]]["stopMinReserve"]);
			$fullOrderMin = $fullMinStop-$fullMinStart;
			$startOrderMin = $fullMinStart;
			$startOrderHour = $config[$config["modulSelect"]]["startHour"];
			$minCalc = 0;
			$config["calendarDayNow"]=mktime(0,0,0, substr($_SESSION["calendarSelectedDate"],5,2), substr($_SESSION["calendarSelectedDate"],8,2), substr($_SESSION["calendarSelectedDate"],0,4));
			$config["calendarDayMin"]=mktime(0,0,0, date("m"),date("d")+$config[$config["modulSelect"]]["reserveDayMin"], date("Y"));
			$config["calendarDayMax"]=mktime(0,0,0, date("m"),date("d")+$config[$config["modulSelect"]]["reserveDayMax"], date("Y"));
			while ($startOrderMin < $fullMinStop)
				{
				$config[$config["modulSelect"]]["bgcolor"] = 'listLineColor1'; // row color
				$config[$config["modulSelect"]."_"."bgcolor"] = 'listLineColor1'; // row color
				if (($config[$config["modulSelect"]]["recCount"] % 2) <> 0)
					{ // display alternate color for rows
					$config[$config["modulSelect"]]["bgcolor"] = 'listLineColor2'; // row color
					$config[$config["modulSelect"]."_"."bgcolor"] = 'listLineColor2'; // row color
					}
				if ($minCalc==0)
					{
					$minCalc="00";
					}
				else if (strlen($minCalc) == 1)
					{
					$minCalc .= "0";
					}
				if (strlen($startOrderHour) == 1)
					{
					$startOrderHour = "0".$startOrderHour;
					}
				$whenTime = $startOrderHour.":".$minCalc;
				$contentListtHTML .='<div id="calendarListItem" class="'.$config[$config["modulSelect"]]["bgcolor"].'"><div id="'.$whenTime.'" class="calendarWhenTime">'.$whenTime.'</div>';
				if ($config["calendarDayNow"] >= $config["calendarDayMin"] && $config["calendarDayNow"] < $config["calendarDayMax"])
					{
					$reserveDisable = '';
					}
				else
					{
					$reserveDisable = ' disabled ';
					}					
				if ($fullMinActual >= $fullMinStartReserve && $fullMinActual < $fullMinStopReserve)
					{
					$nocore_reservationSQL = "SELECT *, (SELECT CONCAT(TRIM(name),' - ',TRIM(birthDate)) AS name FROM nocore_patient WHERE nocore_reservation.nocore_patientID=nocore_patient.id) AS patientName FROM nocore_reservation WHERE startDateTime='".$_SESSION["calendarSelectedDate"]." ".$whenTime."'";
					$nocore_reservation=$config["dbConnect"]->prepare($nocore_reservationSQL);
					$nocore_reservation->execute();
					$nocore_reservationCount = $nocore_reservation->rowCount();
					if ($nocore_reservationCount > 0)
						{
						$nocore_reservationData = $nocore_reservation->fetch();
						$contentListtHTML .='<div id="calendarReserveWhenTime">';
						$contentListtHTML .='<button id="buttonReserveHeight24" class="calendarFreeButton" title="'.$_SESSION["calendarSelectedDate"].' '.$whenTime.' '.$nocore_reservationData["patientName"].'" name="modulOperation" type="submit" value="calendar::view::nocore_reservation::'.$nocore_reservationData["id"].'::'.$nocore_reservationData["startDateTime"].'">'.$nocore_reservationData["patientName"].'</button>';
						$contentListtHTML .='</div>';
						}
					else
						{
						$contentListtHTML .='<div id="calendarReserveWhenTime">';
						if ($_SESSION["nocore_reservationAction"]=="edit")
							{
							$contentListtHTML .='<button id="buttonGreenHeight24" class="calendarFreeButton" title="'.$_SESSION["calendarSelectedDate"].' '.$whenTime.'" name="modulOperation" type="submit" value="calendar::edit::nocore_reservation::'.$_SESSION["nocore_reservationItem"].'::'.$_SESSION["calendarSelectedDate"].' '.$whenTime.'"'.$reserveDisable.'>&nbsp;</button>';
							}
						else
							{
							if ($_SESSION["calendarSelectedDate"]==date("Y.m.d",time()))
								{
								$reserveDisable = ' disabled ';
								}
							$contentListtHTML .='<button id="buttonGreenHeight24" class="calendarFreeButton" title="'.$_SESSION["calendarSelectedDate"].' '.$whenTime.'" name="modulOperation" type="submit" value="calendar::add::nocore_reservation::dateTime::'.$_SESSION["calendarSelectedDate"].' '.$whenTime.'"'.$reserveDisable.'>&nbsp;</button>';
							}
						$contentListtHTML .='</div>';
						}
					}
				$contentListtHTML .='</div>';
				$startOrderMin += $config[$config["modulSelect"]]["patientTime"];
				$minCalc += $config[$config["modulSelect"]]["patientTime"];
				$fullMinActual += $config[$config["modulSelect"]]["patientTime"];
				$config[$config["modulSelect"]]["recCount"]++;	
				if ($startOrderMin > $fullMinStop)
					{
					break;
					}
				if ($minCalc >= 60)
					{
					$startOrderHour++;
					$minCalc -= 60;
					}
				}
			}
			break;
		case "monthly":
			if(!isset($offset) || $offset == '') $offset = 2;
			$offset = 2;
 			$myCal = new CALENDAR();
				$myCal->year = $_SESSION["calendarYear"];
				$myCal->month = $_SESSION["calendarMonth"];
			$contentListtHTML .= $myCal->create();
			break;
		case "weekly":
			{
			if ($_SESSION["calendarWeek"]%2) {$dayID="1";} else {$dayID="2";}
			$actualDate = $_SESSION["calendarSelectedDate"];
			$actualTimestamp = mktime(0, 0, 0, substr($actualDate,5,2),   substr($actualDate,8,2), substr($actualDate,0,4)); 
			$orderTimeMaxSQL = "SELECT nocore_doctor_order_dayID,MIN(startTime) as startTime,MAX(stopTime) AS stopTime,MIN(startTimeReserve) AS startTimeReserve,MAX(stopTimeReserve) AS stopTimeReserve,".$patientTimeSQL." FROM nocore_doctor_order WHERE active=1 ".$core_localserverSQL.$nocore_doctorSQL." AND nocore_doctor_order_dayID LIKE '".$dayID."%'";
			$orderTimeMax=$config["dbConnect"]->prepare($orderTimeMaxSQL);
			$orderTimeMax->execute();
			$orderTimeMaxCount = $orderTimeMax->rowCount();
			$weekDays = array("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun");
			if ($orderTimeMax > 0)
				{
				$orderTimeMaxData = $orderTimeMax->fetch();
				$config[$config["modulSelect"]]["patientTime"] = $orderTimeMaxData["patientTime"];
				$config[$config["modulSelect"]]["reserveDayMin"] = $orderTimeMaxData["reserveDayMin"];
				$config[$config["modulSelect"]]["reserveDayMax"] = $orderTimeMaxData["reserveDayMax"];
				if ($config["orderFull"]==1)
					{		
					$config[$config["modulSelect"]]["startHour"] = substr($orderTimeMaxData["startTime"],0,2);
//					$config[$config["modulSelect"]]["startMin"] = substr($orderTimeMaxData["startTime"],3,2);
					$config[$config["modulSelect"]]["startMin"] = 0;
					$config[$config["modulSelect"]]["stopHour"] = substr($orderTimeMaxData["stopTime"],0,2);
					$config[$config["modulSelect"]]["stopMin"] = substr($orderTimeMaxData["stopTime"],3,2);
					}
				else
					{
					$config[$config["modulSelect"]]["startHour"] = substr($orderTimeMaxData["startTimeReserve"],0,2);
//					$config[$config["modulSelect"]]["startMin"] = substr($orderTimeMaxData["startTimeReserve"],3,2);
					$config[$config["modulSelect"]]["startMin"] = 0;
					$config[$config["modulSelect"]]["stopHour"] = substr($orderTimeMaxData["stopTimeReserve"],0,2);
					$config[$config["modulSelect"]]["stopMin"] = substr($orderTimeMaxData["stopTimeReserve"],3,2);
					}
				$config[$config["modulSelect"]]["startHourReserve"] = substr($orderTimeMaxData["startTimeReserve"],0,2);
				$config[$config["modulSelect"]]["startMinReserve"] = substr($orderTimeMaxData["startTimeReserve"],3,2);
				$config[$config["modulSelect"]]["stopHourReserve"] = substr($orderTimeMaxData["stopTimeReserve"],0,2);
				$config[$config["modulSelect"]]["stopMinReserve"] = substr($orderTimeMaxData["stopTimeReserve"],3,2);
				$config["calendarDayMin"]=mktime(0,0,0, date("m"),date("d")+$config[$config["modulSelect"]]["reserveDayMin"], date("Y"));
				$config["calendarDayMax"]=mktime(0,0,0, date("m"),date("d")+$config[$config["modulSelect"]]["reserveDayMax"], date("Y"));
				}
			$reserveDayStop = $orderTimeMaxData["reserveDayMax"];
			for ($i=0;$i<=7;$i++)
				{
				$fullMinStart = ($config[$config["modulSelect"]]["startHour"]*60+$config[$config["modulSelect"]]["startMin"]);
				$fullMinStop = ($config[$config["modulSelect"]]["stopHour"]*60+$config[$config["modulSelect"]]["stopMin"]);
				$fullMinActual = $fullMinStart;
				if ($i>0)
					{
					if ($i==1)
						{
						$contentListtHTML .='<div id="calendarReserveWeek"  style="margin-left:55px;min-width:220px;">';
						}
					$contentListtHTML .='<div id="calendarListItemWeek" style="float:left;min-width:20px;max-width:260px;width:13.6%">';
					$dayPos=$i-1;
					$orderTimeSQL = "SELECT nocore_doctor_order_dayID,startTime,stopTime,startTimeReserve,stopTimeReserve,".$patientTimeSQL." FROM nocore_doctor_order WHERE active=1 ".$core_localserverSQL.$nocore_doctorSQL." AND nocore_doctor_order_dayID='".$dayID.$weekDays[$dayPos]."'";
					$calendarDay = date('Y-m-d', strtotime($_SESSION["calendarYear"]."-W".sprintf("%02s",$_SESSION["calendarWeek"])."-".$i));
					$orderTime=$config["dbConnect"]->prepare($orderTimeSQL);
					$orderTime->execute();
					$orderTimeCount = $orderTime->rowCount();
					if ($orderTime > 0)
						{
						$orderTimeData = $orderTime->fetch();
						$config[$config["modulSelect"]]["startHourReserve"] = substr($orderTimeData["startTimeReserve"],0,2);
						$config[$config["modulSelect"]]["startMinReserve"] = substr($orderTimeData["startTimeReserve"],3,2);
						$config[$config["modulSelect"]]["stopHourReserve"] = substr($orderTimeData["stopTimeReserve"],0,2);
						$config[$config["modulSelect"]]["stopMinReserve"] = substr($orderTimeData["stopTimeReserve"],3,2);
						$fullMinStartReserve = ($config[$config["modulSelect"]]["startHourReserve"]*60+$config[$config["modulSelect"]]["startMinReserve"]);
						$fullMinStopReserve = ($config[$config["modulSelect"]]["stopHourReserve"]*60+$config[$config["modulSelect"]]["stopMinReserve"]);
						}
					}
				else
					{
					$contentListtHTML .='<div id="calendarListItemWeek" style="float:left;width:50px;">';
					}
				$fullOrderMin = $fullMinStop-$fullMinStart;
				$startOrderMin = $fullMinStart;
				$startOrderHour = $config[$config["modulSelect"]]["startHour"];
				$minCalc = 0;
				while ($startOrderMin < $fullMinStop)
					{
					$config[$config["modulSelect"]]["bgcolor"] = 'listLineColor1'; // row color
					$config[$config["modulSelect"]."_"."bgcolor"] = 'listLineColor1'; // row color
					if (($config[$config["modulSelect"]]["recCount"] % 2) <> 0)
						{ // display alternate color for rows
						$config[$config["modulSelect"]]["bgcolor"] = 'listLineColor2'; // row color
						$config[$config["modulSelect"]."_"."bgcolor"] = 'listLineColor2'; // row color
						}
					if ($minCalc==0)
						{
						$minCalc="00";
						}
					else if (strlen($minCalc) == 1)
						{
						$minCalc .= "0";
						}
					if (strlen($startOrderHour) == 1)
						{
						$startOrderHour = "0".$startOrderHour;
						}
					$whenTime = $startOrderHour.":".$minCalc;
					$contentListtHTML .='<div id="calendarListItem" class="'.$config[$config["modulSelect"]]["bgcolor"].'">';
					if ($i<1)
						{
						$contentListtHTML .='<div id="'.$whenTime.'" class="calendarWhenTime">'.$whenTime.'</div>';
						}
					else
						{
						$contentListtHTML .='<div id="calendarWeekWhenTime" style="min-width:10px;">';
						$config["calendarDayNow"]=mktime(0,0,0, substr($calendarDay,5,2), substr($calendarDay,8,2), substr($calendarDay,0,4));
						if ($config["calendarDayNow"] >= $config["calendarDayMin"] && $config["calendarDayNow"] < $config["calendarDayMax"])
							{
							$reserveDisable = '';
							}
						else
							{
							$reserveDisable = ' disabled ';
							}					
						if ($fullMinActual >= $fullMinStartReserve && $fullMinActual < $fullMinStopReserve)
							{
							$nocore_reservationSQL = "SELECT *, (SELECT CONCAT(TRIM(name),' - ',TRIM(birthDate)) AS name FROM nocore_patient WHERE nocore_reservation.nocore_patientID=nocore_patient.id) AS patientName FROM nocore_reservation WHERE startDateTime='".$calendarDay." ".$whenTime."'";
							$nocore_reservation=$config["dbConnect"]->prepare($nocore_reservationSQL);
							$nocore_reservation->execute();
							$nocore_reservationCount = $nocore_reservation->rowCount();
							if ($nocore_reservationCount > 0)
								{
								$nocore_reservationData = $nocore_reservation->fetch();
								$contentListtHTML .='<button id="buttonReserveHeight24" class="calendarFreeButton" title="'.$calendarDay.' '.$whenTime.' '.$nocore_reservationData["patientName"].'" name="modulOperation" type="submit" value="calendar::view::nocore_reservation::'.$nocore_reservationData["id"].'::'.$whenTime.'">&nbsp;</button>';
								}
							else
								{
								if ($_SESSION["nocore_reservationAction"]=="edit")
									{
									$contentListtHTML .='<button id="buttonGreenHeight24" class="calendarFreeButton" title="'.$calendarDay.' '.$whenTime.'" name="modulOperation" type="submit" value="calendar::edit::nocore_reservation::'.$_SESSION["nocore_reservationItem"].'::'.$calendarDay.' '.$whenTime.'"'.$reserveDisable.'>&nbsp;</button>';
									}
								else
									{
									if ($calendarDay==date("Y-m-d",time()))
										{
										$reserveDisable = ' disabled ';
										}
									$contentListtHTML .='<button id="buttonGreenHeight24" class="calendarFreeButton" title="'.$calendarDay.' '.$whenTime.'" name="modulOperation" type="submit" value="calendar::add::nocore_reservation::dateTime::'.$calendarDay.' '.$whenTime.'"'.$reserveDisable.'>&nbsp;</button>';
									}
								}
							}
						$contentListtHTML .='</div>';
						}
					$contentListtHTML .='</div>';
					$startOrderMin += $config[$config["modulSelect"]]["patientTime"];
					$minCalc += $config[$config["modulSelect"]]["patientTime"];
					$fullMinActual += $config[$config["modulSelect"]]["patientTime"];
					$config[$config["modulSelect"]]["recCount"]++;	
					if ($startOrderMin > $fullMinStop)
						{
						break;
						}
					if ($minCalc >= 60)
						{
						$startOrderHour++;
						$minCalc -= 60;
						}
					}
				$contentListtHTML .='</div>';
				}
			}
		$contentListtHTML .='</div>';
		break;
		}
	$config["nocore_reservation"]["calendarHTML"]=$contentListtHTML;
?>