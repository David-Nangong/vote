<html>
<head>
	<meta http-equiv="refresh" content="900">
	<script type="text/javascript" src="http://cdn.hcharts.cn/jquery/jquery-1.8.3.min.js"></script>
  	<script type="text/javascript" src="http://cdn.hcharts.cn/highcharts/highcharts.js"></script>
  	<script type="text/javascript" src="http://cdn.hcharts.cn/highcharts/exporting.js"></script>
	<title>图表汇总</title>
</head>
<body>
	<div id="mingci" style="min-width:700px;height:750px"></div>
	<div id="zongji" style="min-width:700px;height:750px"></div>
	<div id="jinridepiao" style="min-width:700px;height:750px"></div>
	<div id="toupiaozongshu" style="min-width:700px;height:750px"></div>

	<?php
		require_once('fns.php');
		$name = getName();
		$tableName = gettableName();

		$con = new mysqli('localhost','root','1234','vote');
		if (!$con) {
			echo "打开数据库失败！";
			exit();
		}
		$flag = true;

		/**
		 * $x X轴数据
		 * 1：名次
		 * 2：总票数
		 * 4：今日得票数
		 */
		foreach ($name as $key => $value) {
			$result = $con->query("select * from ".$tableName[$value]." where day=16");
			$i = 0;
			if($flag){	//第一次遍历的时候顺便取X轴的数据，存入$x中
				while ($row = $result->fetch_row()) {
					$x[$i] = $row[5];
					$num[$value][1][$i] = $row[1];	//取出名次存入数组中
					$num[$value][2][$i] = $row[2];	//取出总票数存入数组中
					$num[$value][4][$i] = $row[4];	//取出今日得票数存入数组中
					$todayTotal[$i] = 0 ;
					$todayTotal[$i] += $row[4];
					$i++;
				}
				$flag = false;
			}
			else{
				while ($row = $result->fetch_row()) {
					// $num[$value][0][$i] = $row[5];
					$num[$value][1][$i] = $row[1];	//取出名次存入数组中
					$num[$value][2][$i] = $row[2];	//取出总票数存入数组中
					$num[$value][4][$i] = $row[4];	//取出今日得票数存入数组中
					$todayTotal[$i] += $row[4];
					$i++;
				}
			}
			
		}

		// print_r($todayTotal);
	?>
	<script>
    	$(function () {
    		var xdata = new Array();
    		var mingci = new Array();
    		var zongji = new Array();
    		var jinridepiao = new Array();
    		var toupiaozongshu = new Array();

			<?php
				$flag = true;
				foreach ($name as $key => $value) {
					echo "mingci['".$value."']= new Array();";
					echo "zongji['".$value."']= new Array();";
					echo "jinridepiao['".$value."']= new Array();";

					foreach ($num[$value][1] as $k => $v) {
							echo "mingci['".$value."'][".$k."]=".$v.";";
							echo "zongji['".$value."'][".$k."]=".$num[$value][2][$k].";";
							echo "jinridepiao['".$value."'][".$k."]=".$num[$value][4][$k].";";
					}
				}
    		
				foreach($x as $k=>$v){ //将PHP数组转化为javascript数组
					echo "xdata[$k] = '$v';"; //将X轴的数据放入数组！
					echo "toupiaozongshu[".$k."]=".$todayTotal[$k].";";
				}
    		?>

    		// alert(mingci['魏国帅'].length);
    		// alert(toupiaozongshu.length);
    		// alert(toupiaozongshu[1]);
		    $('#mingci').highcharts({
		        title: {
		            text: '名次走势图',
		            x: -20 //center
		        },
		        subtitle: {
		            text: '',
		            x: -20
		        },
		        xAxis: {
		            categories: xdata
		        },
		        yAxis: {
		            title: {
		                text: '名次'
		            },
		            plotLines: [{
		                value: 0,
		                width: 1,
		                color: '#808080'
		            }]
		        },
		        tooltip: {
		            valueSuffix: '名'
		        },
		        legend: {
		            layout: 'vertical',
		            align: 'right',
		            verticalAlign: 'middle',
		            borderWidth: 0
		        },
		        series: [
			        // { name: '胡生全',data: thedatahsq}

		        <?php
		        	$flag = true;
		        	foreach ($name as $key => $value) {
		        		if($flag){
		        			echo "{name:'".$value."',data:mingci['".$value."']}";
		        			$flag = false;
		        		}
		        		else{
		        			echo ",{name:'".$value."',data:mingci['".$value."']}";
		        		}
		        	}
		        ?>

		        ]
		    });

			$('#zongji').highcharts({
		        title: {
		            text: '总票数走势图',
		            x: -20 //center
		        },
		        subtitle: {
		            text: '',
		            x: -20
		        },
		        xAxis: {
		            categories: xdata
		        },
		        yAxis: {
		            title: {
		                text: '总票数'
		            },
		            plotLines: [{
		                value: 0,
		                width: 1,
		                color: '#808080'
		            }]
		        },
		        tooltip: {
		            valueSuffix: '票'
		        },
		        legend: {
		            layout: 'vertical',
		            align: 'right',
		            verticalAlign: 'middle',
		            borderWidth: 0
		        },
		        series: [
			        // { name: '胡生全',data: thedatahsq}

		        <?php
		        	$flag = true;
		        	foreach ($name as $key => $value) {
		        		if($flag){
		        			echo "{name:'".$value."',data:zongji['".$value."']}";
		        			$flag = false;
		        		}
		        		else{
		        			echo ",{name:'".$value."',data:zongji['".$value."']}";
		        		}
		        	}
		        ?>

		        ]
		    });


			$('#jinridepiao').highcharts({
		        title: {
		            text: '今日得票数走势图',
		            x: -20 //center
		        },
		        subtitle: {
		            text: '',
		            x: -20
		        },
		        xAxis: {
		            categories: xdata
		        },
		        yAxis: {
		            title: {
		                text: '今日得票数'
		            },
		            plotLines: [{
		                value: 0,
		                width: 1,
		                color: '#808080'
		            }]
		        },
		        tooltip: {
		            valueSuffix: '票'
		        },
		        legend: {
		            layout: 'vertical',
		            align: 'right',
		            verticalAlign: 'middle',
		            borderWidth: 0
		        },
		        series: [
			        // { name: '胡生全',data: thedatahsq}

		        <?php
		        	$flag = true;
		        	foreach ($name as $key => $value) {
		        		if($flag){
		        			echo "{name:'".$value."',data:jinridepiao['".$value."']}";
		        			$flag = false;
		        		}
		        		else{
		        			echo ",{name:'".$value."',data:jinridepiao['".$value."']}";
		        		}
		        	}
		        ?>

		        ]
		    });


			$('#toupiaozongshu').highcharts({
		        title: {
		            text: '今日投票总数走势图',
		            x: -20 //center
		        },
		        subtitle: {
		            text: '',
		            x: -20
		        },
		        xAxis: {
		            categories: xdata
		        },
		        yAxis: {
		            title: {
		                text: '投票总数'
		            },
		            plotLines: [{
		                value: 0,
		                width: 1,
		                color: '#808080'
		            }]
		        },
		        tooltip: {
		            valueSuffix: '票'
		        },
		        legend: {
		            layout: 'vertical',
		            align: 'right',
		            verticalAlign: 'middle',
		            borderWidth: 0
		        },
		        series: [
			        { name: '投票总数',data: toupiaozongshu}
		        ]
		    });
		});
  	</script>
</body>
</html>