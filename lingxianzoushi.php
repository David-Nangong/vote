<html>
<head>
	<meta http-equiv="refresh" content="900">
	<script type="text/javascript" src="http://cdn.hcharts.cn/jquery/jquery-1.8.3.min.js"></script>
  	<script type="text/javascript" src="http://cdn.hcharts.cn/highcharts/highcharts.js"></script>
  	<script type="text/javascript" src="http://cdn.hcharts.cn/highcharts/exporting.js"></script>
	<title>领先票数走势图</title>
</head>
<body>
	<div id="container" style="min-width:700px;height:700px"></div>
	<?php
		$con = new mysqli('localhost','root','1234','vote');

		if (!$con) {
			echo "打开数据库失败！";
			exit();
		}

		$result = $con->query("select * from hsq where day=16");
		$i = 0;
		while ($row = $result->fetch_row()) {
			$numhsq[0][$i] = $row[5];
			$numhsq[1][$i] = $row[3];
			$i++;
		}

		$result = $con->query("select * from lfb where day=16");
		$i = 0;
		while ($row = $result->fetch_row()) {
			$numlfb[0][$i] = $row[5];
			$numlfb[1][$i] = $row[3];
			$i++;
		}
		// print_r($num);
	?>
	<script>
    	$(function () {
    		var xdatahsq = new Array();
    		var thedatahsq = new Array();
    		var thedatalfb = new Array();


    		<?php
    			$i=0;
				foreach($numhsq[0] as $k=>$v){ //将PHP数组转化为javascript数组
					echo "xdatahsq[$i] = '$v';"; //可以直接在这里执行 就不需要下面的遍历了
					echo "thedatahsq[$i] = ".$numhsq[1][$k].";"; //可以直接在这里执行 就不需要下面的遍历了
					echo "thedatalfb[$i] = ".$numlfb[1][$k].";"; //可以直接在这里执行 就不需要下面的遍历了
					$i++;
				}

				// echo "thedata[1] = ".$num[1][1].";"; //可以直接在这里执行 就不需要下面的遍历了
    		?>

    		// alert(thedata.length);
		    $('#container').highcharts({
		        title: {
		            text: '领先票数走势图',
		            x: -20 //center
		        },
		        subtitle: {
		            text: '',
		            x: -20
		        },
		        xAxis: {
		            // categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
		            categories: xdatahsq
		        },
		        yAxis: {
		            title: {
		                text: '领先票数'
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
		        series: [{
		            name: '胡生全',
		            data: thedatahsq
		        // }, 
		        // {
		        //     name: '吕丰斌',
		        //     data: thedatalfb
		        // }, {
		        //     name: 'Berlin',
		        //     data: [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
		        // }, {
		        //     name: 'London',
		        //     data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
		        }
		        ]
		    });
		});
  	</script>
</body>
</html>