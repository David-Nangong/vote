<html>
<head>
	<meta http-equiv="refresh" content="600">
	<title>投票统计</title>
</head>
<body>
	<?php
		require_once('fns.php');
		$lastNUM = getlastNUM();	//取得前一天结束投票时的票数，用来计算几天的得票！
		$tableName = gettableName();
		$day = getDay();

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
		 	$sql = "insert into ".$tableName[$name]." (mingci,piaoshu,lingxianpiao,jinridepiao,time,day) values (".($key+1).",".$num[0][$key].",".$lingxianpiao.",".$jinridepiao.",'".$time."',".$day.")";	//最后一个数字代表当天日期
		 	// echo $sql;
		 	$result = $conn->query($sql);
		 	if(!$result) {
		 		$log = "数据库写入失败！姓名：".$name."，时间：".$time."\r\n";
		 		fwrite($file, $log);
		 	}
		 	// else $log = "成功！姓名：".$name."，时间：".$time."\r\n";
		 	
		 }
		 fwrite($file, "于".$time."执行完毕！\r\n");
		 echo "于".$time."执行完毕！\r\n";
		 fclose($file);
	?>
</body>
</html>

