<html>
<head>
	<meta http-equiv="refresh" content="900"> 
	<title>投票统计</title>
</head>
<body>
	<?php
		require_once('fns.php');
		$lastNUM = getlastNUM();	//取得前一天结束投票时的票数，用来计算今天的得票！
		

		date_default_timezone_set("Asia/Shanghai");
		echo "当前时间是 " . date("Y-m-d H:i:s") . "<br>";
		$url = "http://hd.adccoo.cn/193/voteph-14476.html"; 
		$contents = file_get_contents($url); 
		echo $contents;
		$getcontent = iconv("gb2312", "utf-8",$contents); 	//如果出现中文乱码使用该行代码 

		echo $getcontent;
		exit();
		if (preg_match_all('/—(.{2,3})<\/div>/',$getcontent,$matches)){
			print_r($matches[1]);
		 }
		 else {
		    print "姓名分离失败！";
		    exit();
		 }

		if (preg_match_all('/<li[^>]+>\d*<\/li>/',$getcontent,$numMatches)){
			// print_r($numMatches[0]);
			foreach ($numMatches[0] as $value) {
				$str.=$value;
			}
			$str=preg_replace('/<.+?>/', ' ', $str);	//删除字符串内所有的html标签
			// echo $str;
			
			if(preg_match_all('/\d+/',$str,$num)){
				//print_r($num[0]);
			}
			else{
				print "票数分离失败(从<li>分离数据失败)！";
				exit();
			}
		 }
		 else {
		    print "票数分离失败(获取<li>标签失败)！";
		    exit();
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
