<html>
<head>
	<meta http-equiv="refresh" content="60">
	<title>投票统计</title>
</head>
<body>
	<?php
		$lastNUM['胡生全'] = "9665";
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
		$lastNUM['李玉锋'] = "4623";
		date_default_timezone_set("Asia/Shanghai");
		echo "当前时间是 " . date("Y-m-d H:i:s") . "<br>";
		$url = "http://www.jinta.ccoo.cn/tp/item_ph.asp?voteid=14476"; 
		$contents = file_get_contents($url); 
		//如果出现中文乱码使用下面代码 
		$getcontent = iconv("gb2312", "utf-8",$contents); 
		
		/*$getcontent=preg_replace('/<.+?>/', '', $getcontent);*/

		// echo $getcontent;
		//if (preg_match('/原油价格\s+\d+\.\d+\b/',$contents,$matches)){
		if (preg_match_all('/―(.*)<\/a>/',$getcontent,$matches)){
			//print_r($matches[1]);
		 }
		 else {
		    print "姓名分离失败！";
		 }

		if (preg_match_all('/<li[^>]+>\d*<\/li>/',$getcontent,$numMatches)){
			// print_r($numMatches[0]);
			foreach ($numMatches[0] as $value) {
				$str.=$value;
			}
			$str=preg_replace('/<.+?>/', ' ', $str);
			// echo $str;
			
			if(preg_match_all('/\d+/',$str,$num)){
				//print_r($num[0]);
			}
			else{
				print "票数分离失败！";
			}
		 }
		 else {
		    print "票数分离失败！";
		 }

		 foreach ($matches[1] as $key => $name) {
		 	echo ($key+1)."\t".$name."：".$num[0][$key];
		 	echo "\t领先票数：";
		 	echo $key != 21 ? ($num[0][$key]-$num[0][$key+1]) : ($num[0][$key]-$num[0][$key]);
		 	echo "\t今日得票：";
		 	echo $num[0][$key] - $lastNUM[$name];
		 	echo "<br>";
		 }
	?> 
</body>
</html>
