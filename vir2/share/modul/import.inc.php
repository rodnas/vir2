<?php
if (!DEFINED('runOK')) exit;
switch ($config["modulSelect"])
	{
	case "nocore_patient":
echo "itt<br>";
die();
		{
		$core_localserverID = 1;
		if (@$_FILES["x_fileName"]["name"]!="") 
			{
			$fileNameElement = explode(".",@$_FILES["x_fileName"]["name"]);
			$extension = ".".$fileNameElement[count($fileNameElement)-1];
			$actualImgPath = $config["configShare"]["docrootPath"].$config["configShare"]["imageDirectory"].$config[$config["modulSelect"]]["imgPath"]."import/";
			$dirMake = rmkdir($actualImgPath, 0755);
			$fileNameSAVE = $fileNameElement[0]. $extension."_".date('YmdHis');
			$fileNameOrig = realPath($actualImgPath)."/".$fileNameSAVE;
			move_uploaded_file(@$_FILES["x_fileName"]['tmp_name'],$fileNameOrig);
			chmod($fileNameOrig,0644);
			$insertUserID = $_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserID"];
			$import=$config["dbConnect"]->exec("INSERT INTO `core_import` (core_configsID, name,fileName,description,core_localserverID,insertUserID,insertWhen) VALUES ('".$config["configShare"]["modulID"]."','".$itemValues["x_name"]."','".$fileNameSAVE."','".$itemValues["x_description"]."','".$core_localserverID."','".$insertUserID."','".date("Y-m-d H:m:s")."')");
			$fileNewlist = realPath($actualImgPath)."/".$fileNameSAVE;
			$handle = @fopen($fileNewlist, "r");
			if ($handle)
				{
				$config["dbConnect"]->exec("UPDATE nocore_patient SET active='0' WHERE nocore_doctorID='".$itemValues["x_nocore_doctorID"]."' AND core_localserverID='".$core_localserverID."'");
				$counterFull=0;
				$counterReal=0;
				$config[$config["modulSelect"]]["whichBack"].="&".$config["modulSelect"]."cmd=resetall&import=ok";
				while (($buffer = fgets($handle)) !== false)
					{
					$buffer = str_replace("\r\n","",$buffer);
					$counterFull++;
					if ($counterFull > 1)
						{
						if (strlen($buffer) != $config[$config["modulSelect"]]["importLineLen"])
							{
							$config[$config["modulSelect"]]["whichBack"].="&".$config["modulSelect"]."cmd=resetall&import=bad";
							break;
							}
						$realData = substr($buffer,8);
						$tajNumber=substr($realData,0,9);
						$masterCartonNumber=substr($realData,9,5);
						$birthDate=substr($realData,14,8);
						$name=iconv("iso-8859-1","utf-8",substr($realData,22,30));
						$loginDate=substr($realData,52,8);
						$gender=substr($realData,strlen($realData)-1);
						if (!empty($tajNumber))
							{
							$patient=$config["dbConnect"]->prepare("SELECT id FROM `nocore_patient` WHERE core_localserverID='".$core_localserverID."' AND nocore_doctorID='".$itemValues["x_nocore_doctorID"]."' AND tajNumber='".$tajNumber."' AND masterCartonNumber='".$masterCartonNumber."'");
							$patient->execute();
							$resultPatientID=$patient->fetchColumn();
							if (!empty($resultPatientID))
								{
								$config["dbConnect"]->exec("UPDATE nocore_patient SET active='1',name='".$name."',modifyUserID='".$insertUserID."',modifyWhen='".date("Y-m-d H:i:s")."' WHERE id='".$resultPatientID."'");
								$counterReal++;
								}
							else
								{
								$patientInsert=$config["dbConnect"]->exec("INSERT INTO `nocore_patient` (tajNumber,name,masterCartonNumber,birthDate,loginDate,core_genderID,nocore_doctorID,core_localserverID,insertUserID,insertWhen) VALUES ('".$tajNumber."','".$name."','".$masterCartonNumber."','".$birthDate."','".$loginDate."','".$gender."','".$itemValues["x_nocore_doctorID"]."','".$core_localserverID."','".$insertUserID."','".date("Y-m-d H:m:s")."')");
								$counterReal++;
								}
							}
						}
					else
						{
						if (strlen($buffer) != $config[$config["modulSelect"]]["importFirstLineLen"])
							{
							$config[$config["modulSelect"]]["whichBack"].="&".$config["modulSelect"]."cmd=resetall&import=bad";
							break;
							}
						}
					}
				if (!feof($handle))
					{
					$config[$config["modulSelect"]]["whichBack"].="&".$config["modulSelect"]."cmd=resetall&import=bad";
					}
				fclose($handle);
				}
			}
		break;
		}
	}
?>