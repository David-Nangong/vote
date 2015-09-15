<?php

function getDay(){
	return 25;
}



function gettableName(){
	$tableName = array();
	$tableName['胡生全'] = "HSQ";
	$tableName['吕丰斌'] = "LFB";
	$tableName['裴天伟'] = "PTW";
	$tableName['张永红'] = "ZYH";
	$tableName['张世银'] = "ZSY";
	$tableName['王海明'] = "WHM";
	$tableName['崔海堂'] = "CHT";
	$tableName['魏兴存'] = "WXC";
	$tableName['王金玲'] = "WJL";
	$tableName['张永忠'] = "ZYZ";
	$tableName['李建德'] = "LJD";
	$tableName['魏国帅'] = "WGS";
	$tableName['李燕'] = "LY";
	$tableName['张建玲'] = "ZJL";
	$tableName['蔺世琦'] = "LSQ";
	$tableName['蔺正河'] = "LZH";
	$tableName['徐永生'] = "XYS";
	$tableName['白冬梅'] = "BDM";
	$tableName['李富春'] = "LFC";
	$tableName['李素玲'] = "LSL";
	$tableName['罗艳芬'] = "LUOYF";
	$tableName['李玉锋'] = "LYF";
	return $tableName;
}

function getName(){
	$name = array('胡生全','吕丰斌','裴天伟','张永红','张世银','王海明','崔海堂','魏兴存','王金玲','张永忠',
		'李建德','魏国帅','李燕','张建玲','蔺世琦','蔺正河','徐永生','白冬梅','李富春','李素玲','罗艳芬','李玉锋');
	return $name;
}

function getlastNUM(){
	$lastNUM = array();

	$name = getName();
	$tableName = gettableName();
	$day = getDay()-1;

	$con = new mysqli('localhost','root','1234','vote');
	if (!$con) {
		echo "打开数据库失败！";
		exit();
	}

	foreach ($name as $value) {
		$result = $con->query("select * from ".$tableName[$value]." where day=".$day);
		while ($row = $result->fetch_row()) {
			$lastNUM[$value] = $row[2];
		}
	}


	// $lastNUM['胡生全'] = "11118";
	// $lastNUM['吕丰斌'] = "7552";
	// $lastNUM['裴天伟'] = "6384";
	// $lastNUM['张永红'] = "6402";
	// $lastNUM['张世银'] = "5488";
	// $lastNUM['王海明'] = "5585";
	// $lastNUM['崔海堂'] = "5562";
	// $lastNUM['魏兴存'] = "5405";
	// $lastNUM['王金玲'] = "5485";
	// $lastNUM['张永忠'] = "5284";
	// $lastNUM['李建德'] = "5306";
	// $lastNUM['魏国帅'] = "5401";
	// $lastNUM['李燕'] = "5220";
	// $lastNUM['张建玲'] = "5254";
	// $lastNUM['蔺世琦'] = "5284";
	// $lastNUM['蔺正河'] = "5287";
	// $lastNUM['徐永生'] = "5320";
	// $lastNUM['白冬梅'] = "5235";
	// $lastNUM['李富春'] = "5189";
	// $lastNUM['李素玲'] = "5288";
	// $lastNUM['罗艳芬'] = "5287";
	// $lastNUM['李玉锋'] = "5243";

	/*$lastNUM['胡生全'] = "9665";
	$lastNUM['吕丰斌'] = "6578";
	$lastNUM['裴天伟'] = "5831";
	$lastNUM['张永红'] = "5817";
	$lastNUM['张世银'] = "5193";
	$lastNUM['王海明'] = "5073";
	$lastNUM['崔海堂'] = "5051";
	$lastNUM['魏兴存'] = "4856";
	$lastNUM['王金玲'] = "4853";
	$lastNUM['张永忠'] = "4802";
	$lastNUM['李建德'] = "4790";
	$lastNUM['魏国帅'] = "4764";
	$lastNUM['李燕'] = "4736";
	$lastNUM['张建玲'] = "4728";
	$lastNUM['蔺世琦'] = "4718";
	$lastNUM['蔺正河'] = "4716";
	$lastNUM['徐永生'] = "4716";
	$lastNUM['白冬梅'] = "4704";
	$lastNUM['李富春'] = "4691";
	$lastNUM['李素玲'] = "4676";
	$lastNUM['罗艳芬'] = "4662";
	$lastNUM['李玉锋'] = "4623";*/
	return $lastNUM;
}


?>