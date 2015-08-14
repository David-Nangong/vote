<html>
<head>
	<meta http-equiv="refresh" content="600">
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

		$conn = new mysqli('localhost','root','1234','vote');
		$file = fopen("log.txt", "a") or die("Unable to open file!");
		if(!$conn){
			echo "数据库连接失败！";
			fwrite($file, "数据库连接失败！\r\n");
		    fwrite($file, "于".$time."执行完毕！\r\n");
		    fclose($file);
			exit();
		}

		date_default_timezone_set("Asia/Shanghai");
		$time = date("Y-m-d H:i:s");
		echo "当前时间是 " .$time. "<br>";
		$url = "http://www.jinta.ccoo.cn/tp/item_ph.asp?voteid=14476"; 
		$contents = file_get_contents($url); 
		//如果出现中文乱码使用下面代码 
		$getcontent = iconv("gb2312", "utf-8",$contents); 
		
		if (preg_match_all('/―(.*)<\/a>/',$getcontent,$matches)){
		 }
		 else {
		    print "姓名分离失败！";
		    fwrite($file, "姓名分离失败！\r\n");
		    fwrite($file, "于".$time."执行完毕！\r\n");
		    fclose($file);
		    exit();
		 }

		if (preg_match_all('/<li[^>]+>\d*<\/li>/',$getcontent,$numMatches)){
			
			foreach ($numMatches[0] as $value) {
				$str.=$value;
			}
			$str=preg_replace('/<.+?>/', ' ', $str);
			if(preg_match_all('/\d+/',$str,$num)){
			}
			else{
				print "票数分离失败(从<li>分离数据失败)！";
				fwrite($file, "票数分离失败(从<li>分离数据失败)！\r\n");
				fwrite($file, "于".$time."执行完毕！\r\n");
				fclose($file);
				exit();
			}
		 }
		 else {
		    print "票数分离失败(获取<li>标签失败)！";
		    fwrite($file, "票数分离失败(获取<li>标签失败)！\r\n");
		    fwrite($file, "于".$time."执行完毕！\r\n");
		    fclose($file);
		    exit();
		 }
		 foreach ($matches[1] as $key => $name) {
		 	echo ($key+1)."\t".$name."：".$num[0][$key];
		 	echo "\t领先票数：";
		 	$lingxianpiao = $key != 21 ? ($num[0][$key]-$num[0][$key+1]) : ($num[0][$key]-$num[0][$key]);
		 	echo $lingxianpiao;
		 	echo "\t今日得票：";
		 	$jinridepiao = $num[0][$key] - $lastNUM[$name];
		 	echo $jinridepiao;
		 	echo "<br>";
		 	$sql = "insert into ".$tableName[$name]." (mingci,piaoshu,lingxianpiao,jinridepiao,time,day) values (".($key+1).",".$num[0][$key].",".$lingxianpiao.",".$jinridepiao.",'".$time."',15)";
		 	//echo $sql;
		 	$result = $conn->query($sql);
		 	if(!$result) $log = "数据库写入失败！姓名：".$name."，时间：".$time."\r\n";
		 	else $log = "成功！姓名：".$name."，时间：".$time."\r\n";
		 	fwrite($file, $log);
		 }
		 fwrite($file, "于".$time."执行完毕！\r\n");
		 echo "于".$time."执行完毕！\r\n";
		 fclose($file);
	?>
</body>
</html>

