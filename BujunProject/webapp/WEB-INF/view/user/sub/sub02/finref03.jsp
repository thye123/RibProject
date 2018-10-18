<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu02.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>도서관이용</li>
		<li>자료실소개</li>
		<li>특성화(금융정보)자료실</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">금융관련사이트</div>
	
	
	<!-- content 시작 -->
	<div id="tab_depth01" class="w25">
		<ul>
			<li><a href="/finref01?m1=02&m2=02&m3=05">특성화(금융정보)자료실</a></li>
			<li><a href="/finref02?m1=02&m2=02&m3=05">부산시공공도서관특성화</a></li>
			<li class="active"><a href="/finref03?m1=02&m2=02&m3=05">금융관련사이트</a></li>
			<li><a href="/finref04?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">특성화행사</a></li>
			<li><a href="/finref05?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">서평목록</a></li>
			<li><a href="/finref06?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">신문기사색인</a></li>
			<li><a href="/finref07?m1=02&m2=02&m3=05&nowpage=1&pagecount=10&grpnum=1">알짜·경제금융상식</a></li>
		</ul>
	</div>
	

	<h2 class="tbul1">금융·경제교육</h2>		
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">
		<colgroup><col style="width:10%;" /><col style="width:50%;" /><col /></colgroup>
		<thead>
		  <tr>
		    <th scope="col">연번</th>
		    <th scope="col">사이트명</th>
		    <th scope="col" class="bnon">홈페이지주소</th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <td>1</td>
		    <td>금융감독원   금융교육</td>
		    <td class="bnon"><a href="http://edu.fss.or.kr/" target="_blank">http://edu.fss.or.kr</a></td>
		  </tr>
		  <tr>
		    <td>2</td>
		    <td>청소년금융교육협의회</td>
		    <td class="bnon"><a href="http://fq.or.kr/" target="_blank">http://fq.or.kr</a></td>
		    </tr>
		  <tr>
		    <td>3</td>
		    <td>기획재정부   어린이·청소년 경제교실</td>
		    <td class="bnon"><a href="http://kids.mosf.go.kr/" target="_blank">http://kids.mosf.go.kr</a></td>
		    </tr>
		  <tr>
		    <td>4</td>
		    <td>지식경제부   MKE어린이</td>
		    <td class="bnon"><a href="http://cyber.mke.go.kr/child" target="_blank">http://cyber.mke.go.kr/child</a></td>
		    </tr>
		  <tr>
		    <td>5</td>
		    <td>국세청   청소년세금교실</td>
		    <td class="bnon"><a href="http://www.nts.go.kr/youth" target="_blank">http://www.nts.go.kr/youth</a></td>
		    </tr>
		  <tr>
		    <td>6</td>
		    <td>하나은행   어린이경제교육(하나시티)</td>
		    <td class="bnon"><a href="http://www.hanacity.com/" target="_blank">http://www.hanacity.com</a></td>
		    </tr>
		  <tr>
		    <td>7</td>
		    <td>어린이공정거래교실</td>
		    <td class="bnon"><a href="http://kids.ftc.go.kr/" target="_blank">http://kids.ftc.go.kr</a></td>
		    </tr>
		  <tr>
		    <td>8</td>
		    <td>한국은행   경제교육</td>
		    <td class="bnon"><a href="http://www.bokeducation.or.kr/" target="_blank">http://www.bokeducation.or.kr</a></td>
		    </tr>
		  <tr>
		    <td>9</td>
		    <td>대한상공회의소   청소년경제교육</td>
		    <td class="bnon"><a href="http://www.hi.korcham.net/" target="_blank">http://www.hi.korcham.net</a></td>
		    </tr>
		  <tr>
		    <td>10</td>
		    <td>아이빛연구소</td>
		    <td><a href="http://www.ivitt.com/" target="_blank">http://www.ivitt.com</a></td>
		    </tr>
		  <tr>
		    <td>11</td>
		    <td>경제교육종합정보시스템</td>
		    <td class="bnon"><a href="http://econedu.or.kr/" target="_blank">http://econedu.or.kr</a></td>
		    </tr>
		</tbody>
		</table>		
	</div>



	<h2 class="tbul1">금융기관</h2>		
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">
		<colgroup><col style="width:10%;" /><col style="width:50%;" /><col /></colgroup>
		<thead>
		  <tr>
		    <th scope="col">연번</th>
		    <th scope="col">사이트명</th>
		    <th scope="col" class="bnon">홈페이지주소</th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <td>1</td>
		    <td>한국은행</td>
		    <td class="bnon"><a href="http://www.bok.or.kr/" target="_blank">http://www.bok.or.kr</a></td>
		  </tr>
		  <tr>
		    <td>2</td>
		    <td>전국은행연합회</td>
		    <td class="bnon"><a href="http://www.kfb.or.kr/" target="_blank">http://www.kfb.or.kr</a></td>
		    </tr>
		  <tr>
		    <td>3</td>
		    <td>저축은행중앙회</td>
		    <td class="bnon"><a href="http://www.fsb.or.kr/" target="_blank">http://www.fsb.or.kr</a></td>
		    </tr>
		  <tr>
		    <td>4</td>
		    <td>새마을금고</td>
		    <td class="bnon"><a href="http://www.kfcc.co.kr/" target="_blank">http://www.kfcc.co.kr</a></td>
		    </tr>
		  <tr>
		    <td>5</td>
		    <td>신용협동조합</td>
		    <td class="bnon"><a href="http://www.cu.co.kr/" target="_blank">http://www.cu.co.kr</a></td>
		    </tr>
		  <tr>
		    <td>6</td>
		    <td>여신금융협회</td>
		    <td class="bnon"><a href="http://www.crefia.or.kr/" target="_blank">http://www.crefia.or.kr</a></td>
		    </tr>
		  <tr>
		    <td>7</td>
		    <td>생명보험협회</td>
		    <td class="bnon"><a href="http://www.klia.or.kr/" target="_blank">http://www.klia.or.kr</a></td>
		    </tr>
		  <tr>
		    <td>8</td>
		    <td>손해보험협회</td>
		    <td class="bnon"><a href="http://www.knia.or.kr/" target="_blank">http://www.knia.or.kr</a></td>
		    </tr>
		</tbody>
		</table>
	</div>


	<h2 class="tbul1">공공기관</h2>		
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">
		<colgroup><col style="width:10%;" /><col style="width:50%;" /><col /></colgroup>
		<thead>
		  <tr>
		    <th scope="col">연번</th>
		    <th scope="col">사이트명</th>
		    <th scope="col" class="bnon">홈페이지주소</th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <td>1</td>
		    <td>기획재정부</td>
		    <td class="bnon"><a href="http://mosf.korea.kr" target="_blank">http://mosf.korea.kr</a></td>
		  </tr>
		  <tr>
		    <td>2</td>
		    <td>국세청</td>
		    <td class="bnon"><a href="http://www.nts.go.kr/" target="_blank">http://www.nts.go.kr</a></td>
		    </tr>
		  <tr>
		    <td>3</td>
		    <td>금융감독원</td>
		    <td class="bnon"><a href="http://www.fss.or.kr/" target="_blank">http://www.fss.or.kr</a></td>
		    </tr>
		  <tr>
		    <td>4</td>
		    <td>금융위원회</td>
		    <td class="bnon"><a href="http://www.fsc.go.kr/" target="_blank">http://www.fsc.go.kr</a></td>
		    </tr>
		  <tr>
		    <td>5</td>
		    <td>KRX한국거래소</td>
		    <td class="bnon"><a href="http://www.krx.co.kr/" target="_blank">http://www.krx.co.kr</a></td>
		    </tr>
		  <tr>
		    <td>6</td>
		    <td>예금보험공사</td>
		    <td class="bnon"><a href="http://www.kdic.or.kr/" target="_blank">http://www.kdic.or.kr</a></td>
		    </tr>
		  <tr>
		    <td>7</td>
		    <td>금융결제원</td>
		    <td class="bnon"><a href="http://www.kftc.or.kr/" target="_blank">http://www.kftc.or.kr</a></td>
		    </tr>
		  <tr>
		    <td>8</td>
		    <td>한국자산관리공사</td>
		    <td class="bnon"><a href="http://www.badbank.or.kr/" target="_blank">http://www.badbank.or.kr</a></td>
		    </tr>
		  <tr>
		    <td>9</td>
		    <td>금융투자협회</td>
		    <td class="bnon"><a href="http://www.kofia.or.kr" target="_blank">http://www.kofia.or.kr</a></td>
		  </tr>
		  <tr>
		    <td>10</td>
		    <td>전국투자자교육협의회</td>
		    <td class="bnon"><a href="http://www.kcie.or.kr/" target="_blank">http://www.kcie.or.kr</a></td>
		    </tr>
		  <tr>
		    <td>11</td>
		    <td>한국투자자보호재단</td>
		    <td class="bnon"><a href="http://www.invedu.or.kr/" target="_blank">http://www.invedu.or.kr</a></td>
		    </tr>
		</tbody>
		</table>
	</div>
	

	<h2 class="tbul1">경제 신문·웹진</h2>		
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">
		<colgroup><col style="width:10%;" /><col style="width:50%;" /><col /></colgroup>
		<thead>
		  <tr>
		    <th scope="col">연번</th>
		    <th scope="col">사이트명</th>
		    <th scope="col" class="bnon">홈페이지주소</th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <td>1</td>
		    <td>지식경제부   웹진</td>
		    <td class="bnon"><a href="http://cyber.mke.go.kr/webzine" target="_blank">http://cyber.mke.go.kr/webzine</a></td>
		  </tr>
		  <tr>
		    <td>2</td>
		    <td>머니트리</td>
		    <td class="bnon"><a href="http://www.emoneytree.co.kr/" target="_blank">http://www.emoneytree.co.kr</a></td>
		    </tr>
		  <tr>
		    <td>3</td>
		    <td>어린이경제신문</td>
		    <td class="bnon"><a href="http://www.econoi.co.kr/" target="_blank">http://www.econoi.co.kr</a></td>
		    </tr>
		  <tr>
		    <td>4</td>
		    <td>아하경제</td>
		    <td class="bnon"><a href="http://www.ahaeconomy.com/" target="_blank">http://www.ahaeconomy.com</a></td>
		    </tr>
		  <tr>
		    <td>5</td>
		    <td>한국경제신문</td>
		    <td class="bnon"><a href="http://www.hankyung.com/" target="_blank">http://www.hankyung.com</a></td>
		    </tr>
		  <tr>
		    <td>6</td>
		    <td>서울경제신문</td>
		    <td class="bnon"><a href="http://economy.hankooki.com/" target="_blank">http://economy.hankooki.com</a></td>
		    </tr>
		  <tr>
		    <td>7</td>
		    <td>이투데이</td>
		    <td class="bnon"><a href="http://www.etoday.co.kr/" target="_blank">http://www.etoday.co.kr</a></td>
		    </tr>
		  <tr>
		    <td>8</td>
		    <td>매일경제신문</td>
		    <td class="bnon"><a href="http://www.mk.co.kr/" target="_blank">http://www.mk.co.kr</a></td>
		    </tr>
		  <tr>
		    <td>9</td>
		    <td>헤럴드경제</td>
		    <td class="bnon"><a href="http://biz.heraldm.com/" target="_blank">http://biz.heraldm.com</a></td>
		    </tr>
		  <tr>
		    <td>10</td>
		    <td>머니투데이</td>
		    <td class="bnon"><a href="http://www.mt.co.kr/" target="_blank">http://www.mt.co.kr</a></td>
		    </tr>
		  <tr>
		    <td>11</td>
		    <td>아시아경제신문</td>
		    <td class="bnon"><a href="http://www.asiae.co.kr/" target="_blank">http://www.asiae.co.kr</a></td>
		    </tr>
		</tbody>
		</table>
	</div>	


	<h2 class="tbul1">재테크</h2>		
	
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board">
		<colgroup><col style="width:10%;" /><col style="width:50%;" /><col /></colgroup>
		<thead>
		  <tr>
		    <th scope="col">연번</th>
		    <th scope="col">사이트명</th>
		    <th scope="col">홈페이지주소</th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
		    <td>1</td>
		    <td>㈜머니오케이</td>
		    <td class="bnon"><a href="http://www.moneyok.co.kr" target="_blank">http://www.moneyok.co.kr</a></td>
		  </tr>
		  <tr>
		    <td>2</td>
		    <td>모네타</td>
		    <td class="bnon"><a href="http://www.moneta.co.kr/" target="_blank">http://www.moneta.co.kr</a></td>
		    </tr>
		  <tr>
		    <td>4</td>
		    <td>네오머니</td>
		    <td class="bnon"><a href="http://www.neomoney.co.kr/" target="_blank">http://www.neomoney.co.kr</a></td>
		    </tr>
		  <tr>
		    <td>5</td>
		    <td>웰시안닷컴</td>
		    <td class="bnon"><a href="http://www.wealthian.com/" target="_blank">http://www.wealthian.com</a></td>
		    </tr>
		  <tr>
		    <td>6</td>
		    <td>리치플랜에셋</td>
		    <td class="bnon"><a href="http://asset.theoz.co.kr" target="_blank">http://asset.theoz.co.kr</a></td>
		    </tr>
		  <tr>
		    <td>7</td>
		    <td>올크레딧</td>
		    <td class="bnon"><a href="http://www.allcredit.co.kr/" target="_blank">http://www.allcredit.co.kr</a></td>
		    </tr>
		  <tr>
		    <td>8</td>
		    <td>리더스리치   재무설계센터</td>
		    <td class="bnon"><a href="http://readersrich.com" target="_blank">http://readersrich.com/</a></td>
		    </tr>
		</tbody>
		</table>
	</div>		
	
	
	
	
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>