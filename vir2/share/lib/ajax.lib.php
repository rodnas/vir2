<?php
function getMarqueeTop($config)
	{
	$result="";
	foreach ($config["dbConnect"]->query("SELECT * FROM `core_marquee` WHERE active=1 AND (core_localserverID IS NULL OR core_localserverID='".$config["core_localserverID"]."')") as $marqueeTopROW) 
		{
		$result .= $config["marqueeMessageSeparator"] .$marqueeTopROW["message"]." ";
		}
	return $result;
	}

function getMarqueeBottom($config)
	{
	$marqueeMaximum=0;
	$result="";
	foreach ($config["dbConnect"]->query("SELECT * FROM `nocore_doctor` WHERE active=1 AND (core_localserverID IS NULL OR core_localserverID='".$config["core_localserverID"]."')") as $doctorROW) 
		{
		if (!empty($doctorROW["marqueeMaximum"])) {$marqueeMaximum = $doctorROW["marqueeMaximum"];} else {$marqueeMaximum = $config["marqueeDrMaximum"];}
		if (!empty($marqueeMaximum)) {$limitSQL = " LIMIT ".$marqueeMaximum;} else {$limitSQL="";}
		$drOpen = Array();
		$drOpen=$config["dbConnect"]->prepare("SELECT startTime,stopTime,barcodeStart,barcodeStop FROM `nocore_doctor_order` WHERE active=1  AND core_localserverID='".$config["core_localserverID"]."' AND nocore_doctorID='".$doctorROW["id"]."' AND nocore_doctor_order_dayID='".$config["dayID"]."'");
		$drOpen->execute();
		$resultDrOpen=$drOpen->fetch(PDO::FETCH_ASSOC);
		$drOpen->closeCursor();
		if (count($resultDrOpen) > 1)
			{
			$openTime = mktime(date(substr($resultDrOpen["startTime"],0,2)), date(substr($resultDrOpen["startTime"],3,2)), date("00"), date("m"),   date("d")+1, date("Y"));
			$closeTime = mktime(date(substr($resultDrOpen["stopTime"],0,2)), date(substr($resultDrOpen["startTime"],3,2)), date("00"), date("m"),   date("d")+1, date("Y"));
			$barcodeOpenTime=$openTime-minuteCalc($resultDrOpen["barcodeStart"]);
			$barcodeCloseTime=$closeTime+minuteCalc($resultDrOpen["barcodeStop"]);
			$nowTime = mktime(date("H"), date("i"), date("00"), date("m"),   date("d")+1, date("Y"));
			if ($doctorROW["alwaysView"]!=1)
				{
				if ($nowTime > $barcodeOpenTime && $nowTime < $barcodeCloseTime) 
					{
					$result .= $config["marqueeDrSeparator"].$doctorROW["name"].": ";
					foreach ($config["dbConnect"]->query("SELECT * FROM `nocore_doctor_marquee` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."' AND nocore_doctorID='".$doctorROW["id"]."'".$limitSQL) as $marqueeBottomROW) 
						{
						$result .= $marqueeBottomROW["message"]." ".$config["marqueeMessageSeparator"];
						}
					}
				}
			else
				{
				$result .= $config["marqueeDrSeparator"].$doctorROW["name"].": ";
				foreach ($config["dbConnect"]->query("SELECT * FROM `nocore_doctor_marquee` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."' AND nocore_doctorID='".$doctorROW["id"]."'".$limitSQL) as $marqueeBottomROW) 
					{
					$result .= $marqueeBottomROW["message"]." ".$config["marqueeMessageSeparator"];
					}
				}
			}
		}
	return $result;
	}	

function getBanner($config,$firstOnly)
	{
	$result='';
	foreach ($config["dbConnect"]->query("SELECT * FROM `core_advert` WHERE active=1 AND (core_localserverID IS NULL OR core_localserverID='".$config["core_localserverID"]."')") as $bannerROW) 
		{
		if (!empty($bannerROW["advertFileName"]))
			{
			$result .= '<img src="'.strtolower($config["bannerROOT"].$bannerROW["advertFileName"]).'" id="bannerBoxView"/>';
			}
		else if (!empty($bannerROW["description"]))
			{
			$result .= '<div id="bannerBoxView">'.$bannerROW["description"].'</div>';
			}
		}
	
	$bannerMaximum=0;
	foreach ($config["dbConnect"]->query("SELECT * FROM `nocore_doctor` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."'") as $doctorROW) 
		{
		if (!empty($doctorROW["bannerMaximum"])) {$bannerMaximum = $doctorROW["bannerMaximum"];} else {$bannerMaximum = $config["bannerDrMaximum"];}
		if ($firstOnly==1) {$limitSQL = " LIMIT 1";}
		if (!empty($bannerMaximum)) {$limitSQL = " LIMIT ".$bannerMaximum;} else {$limitSQL="";}
		$drOpen = Array();
		$drOpen=$config["dbConnect"]->prepare("SELECT startTime,stopTime,barcodeStart,barcodeStop FROM `nocore_doctor_order` WHERE active=1  AND core_localserverID='".$config["core_localserverID"]."' AND nocore_doctorID='".$doctorROW["id"]."' AND nocore_doctor_order_dayID='".$config["dayID"]."'");
		$drOpen->execute();
		$resultDrOpen=$drOpen->fetch(PDO::FETCH_ASSOC);
		$drOpen->closeCursor();
		if (count($resultDrOpen) > 1)
			{
			$openTime = mktime(date(substr($resultDrOpen["startTime"],0,2)), date(substr($resultDrOpen["startTime"],3,2)), date("00"), date("m"),   date("d")+1, date("Y"));
			$closeTime = mktime(date(substr($resultDrOpen["stopTime"],0,2)), date(substr($resultDrOpen["startTime"],3,2)), date("00"), date("m"),   date("d")+1, date("Y"));
			$barcodeOpenTime=$openTime-minuteCalc($resultDrOpen["barcodeStart"]);
			$barcodeCloseTime=$closeTime+minuteCalc($resultDrOpen["barcodeStop"]);
			$nowTime = mktime(date("H"), date("i"), date("00"), date("m"),   date("d")+1, date("Y"));
			if ($doctorROW["alwaysView"]!=1)
				{
				if ($nowTime > $barcodeOpenTime && $nowTime < $barcodeCloseTime) 
					{
					foreach ($config["dbConnect"]->query("SELECT * FROM `nocore_doctor_advert` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."' AND nocore_doctorID='".$doctorROW["id"]."'  ORDER BY sequenceId,insertWhen ASC".$limitSQL) as $bannerDrROW) 
						{
						if (!empty($bannerDrROW["advertFileName"]))
							{
							$result .= '<img src="'.$config["bannerDrROOT"].$bannerDrROW["advertFileName"].'" id="bannerBoxView"/>';
							}
						else if (!empty($bannerDrROW["textValue"]))
							{
							$result .= '<div id="bannerBoxView"><div id="bannerBoxText">'.$bannerDrROW["textValue"].'</div></div>';
							}
						}
					}
				}
			else
				{
				foreach ($config["dbConnect"]->query("SELECT * FROM `nocore_doctor_advert` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."' AND nocore_doctorID='".$doctorROW["id"]."'  ORDER BY sequenceId,insertWhen ASC".$limitSQL) as $bannerDrROW) 
					{
					if (!empty($bannerDrROW["advertFileName"]))
						{
						$result .= '<img src="'.$config["bannerDrROOT"].$bannerDrROW["advertFileName"].'" id="bannerBoxView"/>';
						}
					else if (!empty($bannerDrROW["textValue"]))
						{
						$result .= '<div id="bannerBoxView"><div id="bannerBoxText">'.$bannerDrROW["textValue"].'</div></div>';
						}
					}
				}
			}
		}
	return $result;
	}

function getPatient($config)
	{
	$result="";
	if (isset($config["patientCallType"]) && $config["patientCallType"]=="madmax")
		{
		$patientSQL = "SELECT * FROM `nocore_barcode` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."' AND (nocore_statusID=2 OR nocore_statusID=3) LIMIT 1";
		}
	else
		{
		$patientSQL = "SELECT * FROM `nocore_barcode` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."' AND nocore_statusID=2 LIMIT 1";
		}
	foreach ($config["dbConnect"]->query($patientSQL) as $row)
		{
		$doctorName=$config["dbConnect"]->prepare("SELECT name FROM `nocore_doctor` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."' AND sealNumber='".$row["sealNumber"]."'");
		$doctorName->execute();
		$resultDoctorName=$doctorName->fetchColumn();
		if (!empty($resultDoctorName))
			{
			if ($config["playAudio"]==1)
				{
				$result.= $config["callUpAudio"];
				}
			if (!empty($row["medMaxID"]) || !empty($row["nocore_reservationID"]))
				{
				$result.= "<div id='patientView'>E".$row["patientID"]."</div>";
				}
			else
				{
				$result.= "<div id='patientView'>".$row["patientID"]."</div>";
				}
			if (!isset($config["doctorNameViewNo"]) || $config["doctorNameViewNo"]!="1")
				{
				$result .= "<div id='doctorNameView'>=> ".$resultDoctorName." <=</div>";
				}
			$result .= "<div id='messageView'>".$config["messageComeIn"]."</div>";
			$barcode=$row["barcode"];
			if (isset($config["patientCallType"]) && $config["patientCallType"]=="madmax")
				{
				if ($row["nocore_statusID"]==3)
					{
					$config["dbConnect"]->exec("UPDATE nocore_barcode SET nocore_statusID=4 WHERE id='".$row["id"]."'");
					break;
					}
				}
			$callUpWhen=date('Y-m-d H:i:s',time());
			$callUp=$row["callUp"]+1;
			if (!isset($config["callUpCounterMax"])) {$config["callUpCounterMax"]=1;}
			if ($callUp>=$config["callUpCounterMax"])
				{
				$config["dbConnect"]->exec("UPDATE nocore_barcode SET nocore_statusID=1,callUp='0', callUpWhen=NULL WHERE id='".$row["id"]."'");
				}
			else
				{
				$config["dbConnect"]->exec("UPDATE nocore_barcode SET callUp='".$callUp."', callUpWhen='".$callUpWhen."' WHERE id='".$row["id"]."'");
				}
	 		break;
			}
		}
	return $result;
	}

function getWaiting($config)
	{
	$nocore_reservationSQL = "SELECT id,startDateTime,";
	$nocore_reservationSQL .= "(SELECT sealNumber FROM nocore_doctor WHERE id=nocore_reservation.nocore_doctorID) AS sealNumber,";
	$nocore_reservationSQL .= "(SELECT masterCartonNumber FROM nocore_patient WHERE id=nocore_reservation.nocore_patientID) AS patientID";
	$nocore_reservationSQL .= " FROM `nocore_reservation` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."' AND startDateTime LIKE '".date('Y-m-d',time())."%'";
	foreach ($config["dbConnect"]->query($nocore_reservationSQL) as $nocore_reservationROW) 
		{
		$nocore_barcode_reservationSQL = "SELECT * FROM `nocore_barcode` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."' AND nocore_reservationID=".$nocore_reservationROW["id"];
		$nocore_barcode_reservation=$config["dbConnect"]->prepare($nocore_barcode_reservationSQL);
		$nocore_barcode_reservation->execute();
		$nocore_barcode_reservationRS=$nocore_barcode_reservation->fetch(PDO::FETCH_ASSOC);
		if (count($nocore_barcode_reservationRS) == 1)
			{
			$barcode = "0".$nocore_reservationROW["sealNumber"]."1".$nocore_reservationROW["patientID"];
			$barcodeType="0";
			$insertWhen=date('Y-m-d H:i:s',time());
			$insertSQL='INSERT INTO nocore_barcode (barcode,barcodeType,sealNumber,patientID,nocore_whereID,nocore_statusID,insertWhen,reservationWhen,nocore_reservationID,core_localServerID) VALUES ("'.$barcode.'","0","'.$nocore_reservationROW["sealNumber"].'","'.$nocore_reservationROW["patientID"].'","1","6","'.$insertWhen.'","'.$nocore_reservationROW["startDateTime"].'","'.$nocore_reservationROW["id"].'","'.$config["core_localserverID"].'")';
			$config["dbConnect"]->exec($insertSQL);
			}
		else
			{
			if ($nocore_barcode_reservationRS["nocore_statusID"]==6 && empty($nocore_barcode_reservationRS["loginWhen"]) &&
				$nocore_reservationROW["startDateTime"]!=$nocore_barcode_reservationRS["reservationWhen"])
				{
				$updateSQL="UPDATE nocore_barcode SET reservationWhen='".$nocore_reservationROW["startDateTime"]."' WHERE nocore_reservationID='".$nocore_barcode_reservationRS["nocore_reservationID"]."'";
				$config["dbConnect"]->exec($updateSQL);
				}
			}
		}
	$deleteSQL="DELETE FROM nocore_barcode WHERE nocore_statusID=6 AND nocore_reservationID NOT IN (SELECT nocore_reservation.id FROM nocore_reservation)";
	$config["dbConnect"]->exec($deleteSQL);
	$actualDr=0;
	$sealNumber=Array();
	$drName = Array();
	$drOpenTime = Array();
	$drClosed = Array();
	$drClinic = Array();
	$barcodeClosed = Array();
	$waitDr = Array();
	$waitNurse = Array();
	$drActive=0;
	foreach ($config["dbConnect"]->query("SELECT * FROM `nocore_doctor` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."'") as $doctorROW) 
		{
		$sealNumber[]=$doctorROW["sealNumber"];
		$nocore_doctorID[]=$doctorROW["id"];
		$drName[$doctorROW["id"]]=$doctorROW["name"];
		$clinicID=$config["dbConnect"]->prepare("SELECT nocore_clinicID FROM `nocore_clinic_order` WHERE active=1  AND core_localserverID='".$config["core_localserverID"]."' AND nocore_doctorID='".$doctorROW["id"]."'");
		$clinicID->execute();
		$resultClinicID=$clinicID->fetchColumn();
		$clinicID->closeCursor();
		$clinicName=$config["dbConnect"]->prepare("SELECT name FROM `nocore_clinic` WHERE active=1  AND core_localserverID='".$config["core_localserverID"]."' AND id='".$resultClinicID."'");
		$clinicName->execute();
		$resultClinicName=$clinicName->fetchColumn();
		$clinicName->closeCursor();
	
		$drOpen = Array();
		$drOpen=$config["dbConnect"]->prepare("SELECT startTime,stopTime,barcodeStop FROM `nocore_doctor_order` WHERE active=1  AND core_localserverID='".$config["core_localserverID"]."' AND nocore_doctorID='".$doctorROW["id"]."' AND nocore_doctor_order_dayID='".$config["dayID"]."'");
		$drOpen->execute();
		$resultDrOpen=$drOpen->fetch(PDO::FETCH_ASSOC);
		$drOpen->closeCursor();
		$drClosed[$doctorROW["id"]]=0;
		if (count($resultDrOpen) > 1)
			{
			$drOpenTime[$doctorROW["id"]]="".substr($resultDrOpen["startTime"],0,5)." - ".substr($resultDrOpen["stopTime"],0,5);
			$openTime = mktime(date(substr($resultDrOpen["startTime"],0,2)), date(substr($resultDrOpen["startTime"],3,2)), date("00"), date("m"),   date("d"), date("Y"));
			$closeTime = mktime(date(substr($resultDrOpen["stopTime"],0,2)), date(substr($resultDrOpen["stopTime"],3,2)), date("00"), date("m"),   date("d"), date("Y"));
			$barcodeCloseTime=$closeTime+minuteCalc($resultDrOpen["barcodeStop"]);
			$nowTime = mktime(date("H"), date("i"), date("s"), date("m"),   date("d"), date("Y"));
			if ($doctorROW["alwaysView"]!=1)
				{
				if ($openTime > $nowTime || $closeTime < $nowTime) {$drClosed[$doctorROW["id"]]=1;}
				if ($nowTime > $barcodeCloseTime) {$drClosed[$doctorROW["id"]]=1;}
				}
			else
				{
				$drClosed[$doctorROW["id"]]=0;
				}
			}
		else
			{
			if ($doctorROW["alwaysView"]!=1)
				{
				$drOpenTime[$doctorROW["id"]]="-";
				$barcodeCloseTime=0;
				$drClosed[$doctorROW["id"]]=1;
				}
			else
				{
				$drOpenTime[$doctorROW["id"]]=$config["defaultOrderTime"];
				$barcodeCloseTime=0;
				$drClosed[$doctorROW["id"]]=0;
				}
			}
		if (!empty($resultClinicName)) {$drClinic[$doctorROW["id"]] = $resultClinicName;}
		else {$drClinic[$doctorROW["id"]] = $resultClinicName;}

		$foundItems = $config["dbConnect"]->query("SELECT * FROM `nocore_barcode` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."' AND nocore_statusID=1 AND sealNumber='".$doctorROW["sealNumber"]."'");
		if (isset($foundItems) && !empty($foundItems))
			{
			foreach ($foundItems as $row)
				{
				switch ($row["nocore_whereID"])
					{
					case 1:
						if (!empty($row["medMaxID"]) || !empty($row["nocore_reservationID"]))
							{
							$waitDr[$doctorROW["id"]][]="E".$row["patientID"];
							}
						else
							{
							$waitDr[$doctorROW["id"]][]=$row["patientID"];
							}
						break;
					case 2:
						if (!empty($row["medMaxID"]) || !empty($row["nocore_reservationID"]))
							{
							$waitNurse[$doctorROW["id"]][]="E".$row["patientID"];
							}
						else
							{
							$waitNurse[$doctorROW["id"]][]=$row["patientID"];
							}
						break;
					}
				}
			}
		$drActive++;
		}
	$waitingListSetup = explode('<=>',$config["waitingListSetup".$_SESSION["screenResolution"]]);
/*
var_dump($waitingListSetup);
die();
*/
	if ($drActive == 1)
		{
		$config["waitingListHeight"]='style="height:'.($waitingListSetup[0]-160).'px;"';	// waitingBox height
		$config["maxPatientView"] = $waitingListSetup[2];
		}
	else if ($drActive > 1)
		{
		$config["waitingListHeight"]='style="height:'.($waitingListSetup[0]-($waitingListSetup[1]*($drActive-1)))/$drActive.'px;"';
		$config["maxPatientView"] = ($waitingListSetup[2]-($waitingListSetup[3]*($drActive-1)))/$drActive;
		}
	$result = "";
	if ($drActive > 0)
		{
		if (count($nocore_doctorID) > 2) {$drNowMax=2;} else {$drNowMax=count($nocore_doctorID);}
		$waitingBox = fileUp("waitingbox","html",$config,"tpl/","templateNotFound");
		for ($drNow = 0; $drNow <= $drNowMax-1; $drNow++)
			{
			$config["nowDr"]=0;
			if (isset($waitDr[$nocore_doctorID[$drNow]]))
				{
				$config["nowDr"]=count($waitDr[$nocore_doctorID[$drNow]]);
				}
			$config["nowNurse"] = 0;
			if (isset($waitNurse[$nocore_doctorID[$drNow]]))
				{
				$config["nowNurse"]=count($waitNurse[$nocore_doctorID[$drNow]]);
				}
			if ($config["nowDr"] > $config["maxPatientView"]) {$nowDrMax = $config["maxPatientView"];} else {$nowDrMax = $config["nowDr"];}
			if ($config["nowNurse"] > $config["maxPatientView"]) {$nowNurseMax = $config["maxPatientView"];} else {$nowNurseMax = $config["nowNurse"];}
		
			$config["resultDr"]="";
			for ($iDr = 0; $iDr <= $nowDrMax-1; $iDr++)
				{
				$config["resultDr"] .= $waitDr[$nocore_doctorID[$drNow]][$iDr].'<br>'; 
				}
			$config["resultNurse"]="";
			for ($iNurse = 0; $iNurse <= $nowNurseMax-1; $iNurse++)
				{
				$config["resultNurse"] .= $waitNurse[$nocore_doctorID[$drNow]][$iNurse].'<br>'; 
				}
			if ($drClosed[$nocore_doctorID[$drNow]]==0 || ($config["nowDr"]+$config["nowNurse"])>0)
				{
				$config["drName"]=$drName[$nocore_doctorID[$drNow]];
				$config["drClinic"]=$drClinic[$nocore_doctorID[$drNow]];
				$config["drOpenTime"]=$drOpenTime[$nocore_doctorID[$drNow]];
				$result .= parseContent($waitingBox["returnValue"],$config,"");
				}
			}
		}
	return $result;
	}

function getBarcode($config)
	{
	$result="";
	if (isset($_POST["ajax_barcode"]) && !empty($_POST["ajax_barcode"])) 
		{
		$barcode = $_POST["ajax_barcode"];
		if (strlen($barcode) == 12)
			{
			$barcodeType = substr($barcode,0,1);
			}
		else if (strlen($barcode) == 11)
			{
			$barcodeType = "0";
			}
		else if (strlen($barcode) == 10)
			{
			$barcodeType = "0";
			}
		else
			{
			$barcodeType = substr($barcode,0,3);
			}
		$barcodeTypeCRC = strval(intval($barcodeType)).strval(strlen($barcode));
		$barcodeError = 1;
		switch ($barcodeTypeCRC)
			{
			case '012':
				/*
				1 - 1 char 0 then old barcode
				2 - 5 char dr sealnumber
				3 - 1 char where 1-dr/2-nurse
				4 - 5 char patient id
				*/
				$sealNumber = substr($barcode,1,5);
				$nocore_whereID = substr($barcode,6,1);
				$patientID = substr($barcode,7,5);
				$barcodeDr = substr($barcode,0,6)."1".substr($barcode,7,5);
				$barcodeNurse = substr($barcode,0,6)."2".substr($barcode,7,5);
				$config["barcodeCheckOK"]=1;
				break;
			case '011':
				/*
				1 - 5 char dr sealnumber
				2 - 1 char where 1-dr/2-nurse
				3 - 5 char patient id
				*/
				$sealNumber = substr($barcode,0,5);
				$nocore_whereID = substr($barcode,5,1);
				$patientID = substr($barcode,6,5);
				$barcodeDr = substr($barcode,0,5)."1".substr($barcode,6,5);
				$barcodeNurse = substr($barcode,0,5)."2".substr($barcode,6,5);
				$config["barcodeCheckOK"]=1;
				break;
			case '010':
				/*
				1 - 5 char dr sealnumber
				2 - 1 char where 1-dr/2-nurse
				3 - 4 char patient id
				*/
				$sealNumber = substr($barcode,0,5);
				$nocore_whereID = substr($barcode,5,1);
				$patientID = substr($barcode,6,4);
				$barcodeDr = substr($barcode,0,5)."1".substr($barcode,6,4);
				$barcodeNurse = substr($barcode,0,5)."2".substr($barcode,6,4);
				$config["barcodeCheckOK"]=1;
				break;
			case '122':
				/*
				1 - 1 char 1 taj barcode
				2 - 9 char taj
				3 - 4 char zipcode
				4 - 1 char where 1-dr/2-nurse
				5 - 5 char dr sealnumber
				*/
				$patientID = substr($barcode,3,9);
				$zipCode =  substr($barcode,13,4);
				$nocore_whereID = substr($barcode,16,1);
				$sealNumber = substr($barcode,17,5);
				$barcodeDr = substr($barcode,0,15)."1".substr($barcode,17,5);
				$barcodeNurse = substr($barcode,0,15)."2".substr($barcode,17,5);
				$config["barcodeCheckOK"]=1;
				break;
			default:
				$result .= barcodeLog($config,"messageBadBarcode");
				$config["barcodeCheckOK"]=0;
				break;
			}
		if ($nocore_whereID!="1" && $nocore_whereID!="2" && $config["barcodeCheckOK"]==1)
			{
			$result .= barcodeLog($config,"messageBadWhere");
			$config["barcodeCheckOK"]=0;
			}
		if ($config["barcodeCheckOK"]==1)
			{
			$result .= "<div id='patientView'>".$patientID."</div>";
			$doctorID=$config["dbConnect"]->prepare("SELECT id FROM `nocore_doctor` WHERE active=1  AND core_localserverID='".$config["core_localserverID"]."' AND sealNumber='".$sealNumber."'");
			$doctorID->execute();
			$resultDoctorID=$doctorID->fetchColumn();
			if (!empty($resultDoctorID))
				{
				$drOpen = Array();
				$drOpen=$config["dbConnect"]->prepare("SELECT startTime,stopTime,barcodeStart,barcodeStop FROM `nocore_doctor_order` WHERE active=1  AND core_localserverID='".$config["core_localserverID"]."' AND nocore_doctorID='".$resultDoctorID."' AND nocore_doctor_order_dayID='".$config["dayID"]."'");
				$drOpen->execute();
				$resultDrOpen=$drOpen->fetch(PDO::FETCH_ASSOC);
				$countOpen = $drOpen->rowCount();
				$drOpen->closeCursor();
				if ($countOpen > 0)
					{
					$openTime = mktime(date(substr($resultDrOpen["startTime"],0,2)), date(substr($resultDrOpen["startTime"],3,2)), date("00"), date("m"),   date("d")+1, date("Y"));
					$closeTime = mktime(date(substr($resultDrOpen["stopTime"],0,2)), date(substr($resultDrOpen["stopTime"],3,2)), date("00"), date("m"),   date("d")+1, date("Y"));
					$barcodeOpenTime=$openTime-minuteCalc($resultDrOpen["barcodeStart"]);
					$barcodeCloseTime=$closeTime+minuteCalc($resultDrOpen["barcodeStop"]);
					$nowTime = mktime(date("H"), date("i"), date("00"), date("m"),   date("d")+1, date("Y"));
					$error = 0;
					if ($nowTime < $barcodeOpenTime) 
						{
						$result .= barcodeLog($config,"messageDrNotOpen");
						$error=1;
						}
					else if ($nowTime > $barcodeCloseTime) 
						{
						$result .= barcodeLog($config,"messageOpenExpired");
						$error=1;
						}
					if ($error == 0)
						{
						$sealNumberDeputy=$config["dbConnect"]->prepare("SELECT sealNumberDeputy FROM `nocore_doctor` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."'");
						$sealNumberDeputy->execute();
						$resultSealNumberDeputy=$sealNumberDeputy->fetchColumn();
						if (isset($resultSealNumberDeputy) && !empty($resultSealNumberDeputy))
							{
							$barcodeSQL="SELECT COUNT(*) FROM `nocore_barcode` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."' AND nocore_statusID<>4 AND (barcode='".$barcodeDr."' OR barcode='".$barcodeNurse."' OR sealNumberDeputy='".$resultSealNumberDeputy."')";
							}
						else
							{
							$barcodeSQL="SELECT COUNT(*) FROM `nocore_barcode` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."' AND nocore_statusID<>4 AND (barcode='".$barcodeDr."' OR barcode='".$barcodeNurse."')";
							}
						$itemCount=$config["dbConnect"]->prepare($barcodeSQL);
						$itemCount->execute();
						$resultCount = $itemCount->fetchColumn();
						if (!isset($resultCount) || $resultCount == 0)
							{
							$result .= barcodeLog($config,"messageCardAccept");
							$barcodeError = 0;
							if ($barcodeTypeCRC != "122")
								{
								$insertSQL='INSERT INTO nocore_barcode (barcode,barcodeType,sealNumber,sealNumberDeputy,patientID,nocore_whereID,nocore_statusID,loginWhen,insertWhen,core_localServerID) VALUES (:barcode,:barcodeType,:sealNumber,:sealNumberDeputy,:patientID,:nocore_whereID,:nocore_statusID,:loginWhen,:insertWhen,:core_localserverID)';
								$insertPrepare = $config["dbConnect"]->prepare($insertSQL,array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
								$loginWhen=date('Y-m-d H:i:s',time());
								$insertWhen=date('Y-m-d H:i:s',time());
								$nocore_statusID = 1;
								$insertPrepare->execute(array(':barcode'=>$barcode, ':barcodeType'=>$barcodeType,':sealNumber'=>$sealNumber,':sealNumberDeputy'=>$resultSealNumberDeputy,':patientID'=>$patientID,':nocore_whereID'=>$nocore_whereID,'nocore_statusID'=> 1, 'loginWhen'=>$loginWhen, ':insertWhen'=>$insertWhen, ':core_localserverID'=>$config["core_localserverID"]));
								}
							else
								{
								$insertSQL='INSERT INTO nocore_barcode (barcode,barcodeType,sealNumber,sealNumberDeputy,patientID,nocore_whereID,zipCode,nocore_statusID,loginWhen,insertWhen,core_localServerID) VALUES (:barcode,:barcodeType,:sealNumber,:sealNumberDeputy,:patientID,:nocore_whereID,:zipCode,:nocore_statusID,:loginWhen,:insertWhen,:core_localserverID)';
								$insertPrepare = $config["dbConnect"]->prepare($insertSQL);
								$loginWhen=date('Y-m-d H:i:s',time());
								$insertWhen=date('Y-m-d H:i:s',time());
								$insertPrepare->execute(array(':barcode'=>$barcode, ':barcodeType'=>$barcodeType,':sealNumber'=>$sealNumber,':sealNumberDeputy'=>$resultSealNumberDeputy,':patientID'=>$patientID,':nocore_whereID'=>$nocore_whereID,':zipCode'=>$zipCode, ':nocore_statusID'=> 1, ':loginWhen'=>$loginWhen, ':insertWhen'=>$insertWhen, ':core_localserverID'=>$config["core_localserverID"]));
								}
							}
						else
							{
							$result .= barcodeLog($config,"messageBarcodeLogged");
							}
						}
					}
				else
					{
					$result .= barcodeLog($config,"messageDrNotOpen");
					}
				}
			else			
				{
				$result .= barcodeLog($config,"messageDrNotExist");
				}
			}
		}
	if (!empty($result))
		{
		if ($config["playAudio"]==1)
			{
			if (empty($barcodeError))
				{
				$result .= $config["getBarcodeAudio"];
				}
			else
				{
				$result .= $config["getBarcodeErrorAudio"];
				}
			}
		}
	return $result;
	}
	
function barcodeLog($config,$message)
	{
	$result = "<div id='messageView'>".$config[$message]."</div>";
	if (isset($config["barcodeLogging"]) && $config["barcodeLogging"]==1)
		{
		$logInsertSQL='INSERT INTO nocore_barcode_log (barcode,message,loginWhen,core_localServerID) VALUES (:barcode,:message,:loginWhen,:core_localserverID)';
		$logInsertPrepare = $config["dbConnect"]->prepare($logInsertSQL,array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
		$barcode = $_POST["ajax_barcode"];
		$loginWhen=date('Y-m-d H:i:s',time());
		$logInsertPrepare->execute(array(':barcode'=>$barcode, ':message'=>$result,'loginWhen'=>$loginWhen,':core_localserverID'=>$config["core_localserverID"]));
		}
	return $result;
	}
?>