<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: green;
}

.wrap {
	width: 980px;
}

header {
	background-color: #DF0101;
}

#main_img {
	text-align: center;
}

#time {
	float: right;
	color: white;
}

.main_left {
	width: 300px;
	height: 500px;
	float: left;
	border: 1px solid black;
}

.main_right {
	width: 670px;
	height: 500px;
	float: right;
	border: 1px solid black;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	window.onload = function() {
		var timer = document.getElementById("time");
		var itvID = window.setInterval(function() {
			var now = new Date(); //날짜는 반드시 new해서 생성하여 사용해야 한다.
			var year = now.getFullYear();
			var month = now.getMonth();
			var date = now.getDate();
			var day = now.getDay();
			var hour = now.getHours();
			var minute = now.getMinutes();
			var second = now.getSeconds();
			var how = '오전';

			//요일설정
			switch (day) {
			case 0:
				day = "일요일";
				break;
			case 1:
				day = "월요일";
				break;
			case 2:
				day = "화요일";
				break;
			case 3:
				day = "수요일";
				break;
			case 4:
				day = "목요일";
				break;
			case 5:
				day = "금요일";
				break;
			case 6:
				day = "토요일";
				break;
			}

			//12시 넘으면 오후
			if (hour > 12) {
				hour -= 12;
				how = '오후';
			}

			//00~09분설정
			if (minute < 10)
				minute = "0" + minute;
			//00초~09초설정
			if (second < 10)
				second = "0" + second;

			timer.innerHTML = year + '년 ' + (month + 1) + '월 ' + date + '일 '
					+ day + ' ' + how + hour + ':' + minute + ':' + second; //월은 +1해주기
		}, 1000);

		//정지버튼
		var btn = document.getElementsByTagName("input")[0];
		btn.onclick = stop;

		function stop() {
			clearInterval(itvID);
		}
	};
</script>
</head>
<body>
	<div class=wrap>
		<header>
			<div id="main_img">
				<img src="images/merrychristmas.jpg" height="200" width="700" />
			</div>
		</header>
		<div id="time"></div>

		<section class="main_left">
			<nav>
				<jsp:include page="menu.jsp" />
			</nav>
		</section>

		<section class="main_right">
			<div style="background-color: #DF0101; height: 490px">first red
				page</div>
		</section>
	</div>
</body>
</html>