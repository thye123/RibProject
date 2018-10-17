<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
	window.onload= function(){
		 var pvalue="";  
		 var PassMsg = prompt("비밀 번호를 입력해주세요!","");
		 alert(PassMsg);
		 var aal = ${clb_pass}
		 alert(aal);
		   if (PassMsg != null) {
		        location.href="/club01/CluBoard/Checking?clb_pass="+PassMsg+"&clb_idx="+${clb_idx};
		    }
		  
		   if(PassMsg == aal){
			  // location.href="/club01/CluBoard/OneView?clb_idx=${club.clb_idx}&clb_clucode=${clu_code}&page=1&pagecount=10&pagegrp=1";
		   		alert('일단 같아!');
		   }else{
			   return false;
		   }
	}
</script>
</head>
<body>

</body>
</html>