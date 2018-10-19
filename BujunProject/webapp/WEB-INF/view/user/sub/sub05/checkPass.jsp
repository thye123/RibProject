<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	window.onload = function() {

		var count = 0;
		var aal = ${clb_pass};
		alert("m1: " +  "${m1}");
		var PassMsg = "";
		var pass = prompt('패스워드를 입력하세요', PassMsg);

		while (count <= 2) {
			if (pass == aal) {
				location.href = "/club01/CluBoard/Checking?clb_pass=" + PassMsg+"&clb_idx="+${clb_idx}+"&m1=${m1}&m2=${m2}&m3=${m3}";
				break;
			} else
				count += 1;

			var pass = prompt('패스워드가 틀렸습니다. 다시 입력해 주세요.', '');
		}

		if (count == 3) {
			location.href = "/club01/CluBoard/Checking?clb_pass=" + PassMsg+"&clb_idx="+${clb_idx}+"&m1=${m1}&m2=${m2}&m3=${m3}";
		}

	}
</script>
</head>
<body>
</body>
</html>