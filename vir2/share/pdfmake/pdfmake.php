<?php
session_start();
ob_start();
if (!DEFINED('runOK')) exit;
switch ($_SESSION["modulSelectPDF"])
	{
	case "nocore_patient":
		{
		$config = localserverSet($config,"backend");
		/**** data fill ****/
		$dataFromDIM[whereDrItem]="ORVOSHOZ";
		$dataFromDIM[whereNurseItem]="NŐVÉRHEZ";
		$dataFromDIM[callText]="HÍVÓSZÁM:";
		$dataFromDIM[orderTitle]="Rendelés";
		$dataFromDIM[prerecordedTitle]="Előjegyzés";
		/** Dr Data **/
		$drID = "";
//var_dump($_SESSION);
//echo "[".$config["configShare"]["whichSystem"]."]<br>";
//echo "[".$config["configShare"]["whichSystemAndMode"]."]<br>";
//echo "[".$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_nocore_doctorID"]."]<br>";
		if (!empty($_SESSION["nocore_patient_s_nocore_doctorID"])) {$drID=$_SESSION["nocore_patient_s_nocore_doctorID"];}
		else if (!empty($_SESSION["nocore_patient_x_nocore_doctorID"])) {$drID=$_SESSION["nocore_patient_x_nocore_doctorID"];}
		else if (!empty($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_nocore_doctorID"])) {$drID=$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_nocore_doctorID"];}
//echo "SELECT * FROM `nocore_doctor` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."' AND id='".$drID."'<br>";
		$doctorName=$config["dbConnect"]->prepare("SELECT * FROM `nocore_doctor` WHERE active=1 AND core_localserverID='".$config["core_localserverID"]."' AND id='".$drID."'");
		$doctorName->execute();
		$drRow=$doctorName->fetch();
		if (!empty($drRow))
			{
			$dataFromDIM[drNameItem]=$drRow["name"];
			$dataFromDIM[zipcodeItem]=$drRow["zipcode"];
			$dataFromDIM[settlementItem]=$drRow["settlement"];
			$dataFromDIM[addressItem]=$drRow["address"];
			$dataFromDIM[phoneItem]=$drRow["phone"];
			}

//echo "SELECT * FROM `nocore_doctor_order` WHERE active=1  AND core_localserverID='".$config["core_localserverID"]."' AND nocore_doctorID='".$drRow["id"]."' ORDER BY nocore_doctor_order_dayID<br>";
//die();
 		foreach ($config["dbConnect"]->query("SELECT * FROM `nocore_doctor_order` WHERE active=1  AND core_localserverID='".$config["core_localserverID"]."' AND nocore_doctorID='".$drRow["id"]."' ORDER BY nocore_doctor_order_dayID") as $drOpen) 
			{
			switch ($drOpen["nocore_doctor_order_dayID"])
				{
				case "1Mon":
					$dataFromDIM[dayTitle1]="Hétfő:";
					$dataFromDIM[dayOrder1]=substr($drOpen["startTime"],0,5)."-".substr($drOpen["stopTime"],0,5);
					$dataFromDIM[dayPrerecorded1]=substr($drOpen["startTimeReserve"],0,5)."-".substr($drOpen["stopTimeReserve"],0,5);
					break;
				case "1Tue":
					$dataFromDIM[dayTitle2]="Kedd:";
					$dataFromDIM[dayOrder2]=substr($drOpen["startTime"],0,5)."-".substr($drOpen["stopTime"],0,5);
					$dataFromDIM[dayPrerecorded2]=substr($drOpen["startTimeReserve"],0,5)."-".substr($drOpen["stopTimeReserve"],0,5);
					break;
				case "1Wed":
					$dataFromDIM[dayTitle3]="Szerda:";
					$dataFromDIM[dayOrder3]=substr($drOpen["startTime"],0,5)."-".substr($drOpen["stopTime"],0,5);
					$dataFromDIM[dayPrerecorded3]=substr($drOpen["startTimeReserve"],0,5)."-".substr($drOpen["stopTimeReserve"],0,5);
					break;
				case "1Thu":
					$dataFromDIM[dayTitle4]="Csüt.:";
					$dataFromDIM[dayOrder4]=substr($drOpen["startTime"],0,5)."-".substr($drOpen["stopTime"],0,5);
					$dataFromDIM[dayPrerecorded4]=substr($drOpen["startTimeReserve"],0,5)."-".substr($drOpen["stopTimeReserve"],0,5);
					break;
				case "1Fri":
					$dataFromDIM[dayTitle5]="Pént.prt:";
					$dataFromDIM[dayOrder5]=substr($drOpen["startTime"],0,5)."-".substr($drOpen["stopTime"],0,5);
					$dataFromDIM[dayPrerecorded5]=substr($drOpen["startTimeReserve"],0,5)."-".substr($drOpen["stopTimeReserve"],0,5);
					break;
				case "2Fri":
					$dataFromDIM[dayTitle6]="Pént.prs:";
					$dataFromDIM[dayOrder6]=substr($drOpen["startTime"],0,5)."-".substr($drOpen["stopTime"],0,5);
					$dataFromDIM[dayPrerecorded6]=substr($drOpen["startTimeReserve"],0,5)."-".substr($drOpen["stopTimeReserve"],0,5);
					break;
				}				
			}
		$dataFromDIM[developPicture]='images/developby.jpg';
		$pdfMakerConfigSelectParam["configName"]="share/pdfmake/config.txt";
		$pdfMakerConfigSelectParam["type"]="File";
//		$pdfMakerConfigSelectParam["templateName"]="backend/pdf/core_patient_head.txt";
		$pdfMakerConfigSelectParam["conditionDescription"]="";
		$pdfMakerFromTemplateParam["close"]=0;

		/**** pdf genererate ****/
		include_once('pdffromtemplate.inc');
		$pdfMakerConfigSelectedItem = pdfMakerConfigSelect($pdfMakerConfigSelectParam);
		if (!empty($pdfMakerConfigSelectedItem))
			{
			$pdfDocument = pdfConfig($pdfMakerConfigSelectedItem);
			$pdfMakerFromTemplateParam["pageCounter"]=1;
			$pdfMakerFromTemplateParam["close"]=0;
			ob_clean();
			$pageCartonMax=11;
			$pageCartonNow=1;
			$pdfMakerConfigSelectParam["templateName"]="backend/pdf/core_patient_first.txt";
			$first=1;
			foreach ($config["dbConnect"]->query($_SESSION["listToPDF"]) as $patientCard) 
				{
				$dataFromDIM["callID".$pageCartonNow]=$patientCard["masterCartonNumber"];
				$dataFromDIM["barcodeDrItem".$pageCartonNow]='0'.$drRow["sealNumber"].'1'.$patientCard["masterCartonNumber"];
				$dataFromDIM["barcodeNurseItem".$pageCartonNow]='0'.$drRow["sealNumber"].'2'.$patientCard["masterCartonNumber"];;
				$pageCartonNow++;
				if ($pageCartonNow == $pageCartonMax)
					{
					if ($first==1)
						{
						$pdfDocument = pdfMakerFromTemplate($pdfMakerFromTemplateParam, $dataFromDIM, $pdfMakerConfigSelectedItem, $pdfDocument);
						$first=0;
						$pdfMakerConfigSelectParam["templateName"]="backend/pdf/core_patient_first.txt";
						}
					else
						{
						$pdfMakerConfigSelectParam["templateName"]="backend/pdf/core_patient.txt";
						}
					$pdfMakerConfigSelectedItem = pdfMakerConfigSelect($pdfMakerConfigSelectParam);
					$pdfDocument = pdfMakerFromTemplate($pdfMakerFromTemplateParam, $dataFromDIM, $pdfMakerConfigSelectedItem, $pdfDocument);
					for ($ii=1;$ii<11;$ii++)
						{
						$dataFromDIM["callID".$ii]="";
						$dataFromDIM["barcodeDrItem".$ii]="";
						$dataFromDIM["barcodeNurseItem".$ii]="";
						}
					$pageCartonNow=1;
					}
				}

			$pdfMakerConfigSelectedItem = pdfMakerConfigSelect($pdfMakerConfigSelectParam);
			$pdfDocument = pdfMakerFromTemplate($pdfMakerFromTemplateParam, $dataFromDIM, $pdfMakerConfigSelectedItem, $pdfDocument);
			$pdfMakerFromTemplateParam["close"]=1;
			$pdfDocument = pdfMakerFromTemplate($pdfMakerFromTemplateParam, $dataFromDIM, "", $pdfDocument);
			}
		break;
		}
	}
/*
unset($_SESSION["modulSelectPDF"]);
unset($_SESSION["listToPDF"]);
*/
?>