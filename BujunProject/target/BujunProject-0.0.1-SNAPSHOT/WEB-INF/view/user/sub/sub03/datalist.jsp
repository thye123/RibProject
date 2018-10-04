<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu03.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>자료찾기</li>
		<li>연속간행물목록</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">연속간행물목록</div>
	
	
	<!-- content 시작 -->	
	<h2 class="tbul1">정기구독잡지</h2>		
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board"> 
			<colgroup><col style="width:15%;"/><col style="width:15%;"/><col /><col style="width:15%;"/></colgroup>
			<thead>
			  <tr>
				<th scope="col">번호</th>
				<th scope="col">구분</th>
				<th scope="col">잡지명</th>
				<th scope="col" class="bnon">간기</th>
			  </tr>
			</thead>
			<tbody>
			<tr>
				<td>1</td>
				<td>잡지</td>
				<td>PC사랑</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>2</td>
				<td>잡지</td>
				<td>TV유치원콩다콩 만5세</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>3</td>
				<td>잡지</td>
				<td>개똥이네놀이터</td>
				<td class="bnon">주간</td>
			</tr>
			<tr>
				<td>4</td>
				<td>잡지</td>
				<td>객석</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>5</td>
				<td>잡지</td>
				<td>게이머즈</td>
				<td class="bnon">계간</td>
			</tr>
			<tr>
				<td>6</td>
				<td>잡지</td>
				<td>경제풍월</td>
				<td class="bnon">주간</td>
			</tr>
			<tr>
				<td>7</td>
				<td>잡지</td>
				<td>고래가 그랬어</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>8</td>
				<td>잡지</td>
				<td>고시계</td>
				<td class="bnon">주간</td>
			</tr>
			<tr>
				<td>9</td>
				<td>잡지</td>
				<td>과학동아</td>
				<td class="bnon">주간</td>
			</tr>
			<tr>
				<td>10</td>
				<td>잡지</td>
				<td>굿모닝팝스</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>11</td>
				<td>잡지</td>
				<td>내셔널지오그래픽</td>
				<td class="bnon">주간</td>
			</tr>
			<tr>
				<td>12</td>
				<td>잡지</td>
				<td>넥스트이코노미</td>
				<td class="bnon">월2회</td>
			</tr>
			<tr>
				<td>13</td>
				<td>잡지</td>
				<td>뉴스위크</td>
				<td class="bnon">월2회</td>
			</tr>
			<tr>
				<td>14</td>
				<td>잡지</td>
				<td>뉴턴</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>15</td>
				<td>잡지</td>
				<td>독서평설(고교)</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>16</td>
				<td>잡지</td>
				<td>독서평설(중학)</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>17</td>
				<td>잡지</td>
				<td>독서평설(초등)</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>18</td>
				<td>잡지</td>
				<td>동아비지니스 리뷰</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>19</td>
				<td>잡지</td>
				<td>뚜르드몽드</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>20</td>
				<td>잡지</td>
				<td>리더스다이제스트 영문</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>21</td>
				<td>잡지</td>
				<td>리크루트</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>22</td>
				<td>잡지</td>
				<td>매경이코노미</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>23</td>
				<td>잡지</td>
				<td>머니</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>24</td>
				<td>잡지</td>
				<td>문학사상</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>25</td>
				<td>잡지</td>
				<td>바둑</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>26</td>
				<td>잡지</td>
				<td>베스트일레븐</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>27</td>
				<td>잡지</td>
				<td>브라보 마이 라이프</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>28</td>
				<td>잡지</td>
				<td>산</td>
				<td class="bnon">월간</td>
			</tr>
			<tr>
				<td>29</td>
				<td>잡지</td>
				<td>샘터</td>
				<td class="bnon">월간</td>
			</tr>
			  <tr>
				<td>30</td>
				<td>잡지</td>
				<td>수학동아</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>31</td>
				<td>잡지</td>
				<td>시사in</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>32</td>
				<td>잡지</td>
				<td>신동아</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>33</td>
				<td>잡지</td>
				<td>씨네21</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>34</td>
				<td>잡지</td>
				<td>어린이과학동아</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>35</td>
				<td>잡지</td>
				<td>역사비평</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>36</td>
				<td>잡지</td>
				<td>우먼센스</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>37</td>
				<td>잡지</td>
				<td>월간 디자인</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>38</td>
				<td>잡지</td>
				<td>월간미술</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>39</td>
				<td>잡지</td>
				<td>월간조선</td>
				<td class="bnon">주간</td>
			  </tr>
			  <tr>
				<td>40</td>
				<td>잡지</td>
				<td>이밥차</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>41</td>
				<td>잡지</td>
				<td>이코노미스트</td>
				<td class="bnon">주간</td>
			  </tr>
			  <tr>
				<td>42</td>
				<td>잡지</td>
				<td>이코노미인사이트</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>43</td>
				<td>잡지</td>
				<td>이코노미조선</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>44</td>
				<td>잡지</td>
				<td>이코노믹리뷰</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>45</td>
				<td>잡지</td>
				<td>인물과사상</td>
				<td class="bnon">주간</td>
			  </tr>
			  <tr>
				<td>46</td>
				<td>잡지</td>
				<td>일본어 저널</td>
				<td class="bnon">주간</td>
			  </tr>
			  <tr>
				<td>47</td>
				<td>잡지</td>
				<td>입이 트이는 영어</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>48</td>
				<td>잡지</td>
				<td>자동차생활</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>49</td>
				<td>잡지</td>
				<td>전원속의 내집</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>50</td>
				<td>잡지</td>
				<td>종합물가정보</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>51</td>
				<td>잡지</td>
				<td>창업&amp;프랜차이즈</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>52</td>
				<td>잡지</td>
				<td>초급중국어</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>53</td>
				<td>잡지</td>
				<td>최신 이슈&amp;상식</td>
				<td class="bnon">계간</td>
			  </tr>
			  <tr>
				<td>54</td>
				<td>잡지</td>
				<td>출판저널</td>
				<td class="bnon">주간</td>
			  </tr>
			  <tr>
				<td>55</td>
				<td>잡지</td>
				<td>큰글씨 좋은생각</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>56</td>
				<td>잡지</td>
				<td>타임</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>57</td>
				<td>잡지</td>
				<td>포춘코리아</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>58</td>
				<td>잡지</td>
				<td>한겨레21</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>59</td>
				<td>잡지</td>
				<td>한경비즈니스</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>60</td>
				<td>잡지</td>
				<td>행복이가득한집</td>
				<td class="bnon">월간</td>
			  </tr>
			  <tr>
				<td>61</td>
				<td>잡지</td>
				<td>헬스조선</td>
				<td class="bnon">월간</td>
			  </tr>
			 
			</tbody>
			</table>
			
	</div>



	<h2 class="tbul1">정기구독신문</h2>		
	<div class="scroll_info">
		<span class="arr_l"></span>
		<span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>
	
	<div class="auto_box mg_b40">			
		<table class="tb_board"> 
			<colgroup><col style="width:15%;"/><col style="width:15%;"/><col /><col style="width:15%;"/></colgroup>
			<thead>
			  <tr>
				<th scope="col">번호</th>
				<th scope="col">신문명</th>
				<th scope="col">홈페이지 주소</th>
				<th scope="col" class="bnon">간기</th>
			  </tr>
			</thead>
			<tbody>
		  <tr>
		    <td>1</td>
		    <td>경향신문</td>
		    <td><a href="http://www.khan.co.kr/" target="_blank">http://www.khan.co.kr/</a></td>
		    <td class="bnon">일간</td>
		  </tr>
		  <tr>
		    <td>2</td>
		    <td>국민일보</td>
		    <td><a href="http://www.kmib.co.kr/news/index.asp" target="_blank">http://www.kmib.co.kr/news/index.asp</a></td>
		    <td class="bnon">″</td>
		  </tr>
		  <tr>
		    <td>3</td>
		    <td>동아일보</td>
		    <td><a href="http://www.donga.com/" target="_blank">http://www.donga.com/</a></td>
		    <td class="bnon">″</td>
		  </tr>
		  <tr>
		    <td>4</td>
		    <td>매일경제신문</td>
		    <td><a href="http://www.mk.co.kr/" target="_blank">http://www.mk.co.kr/</a></td>
		    <td class="bnon">″</td>
		  </tr>
		  <tr>
		    <td>5</td>
		    <td>문화일보</td>
		    <td><a href="http://www.munhwa.com/" target="_blank">www.munhwa.com</a></td>
		    <td class="bnon">"</td>
		  </tr>
		  <tr>
		    <td>6</td>
		    <td>서울경제신문</td>
		    <td><a href="http://www.sedaily.com/" target="_blank">http://www.sedaily.com/</a></td>
		    <td class="bnon">"</td>
		  </tr>
		  <tr>
		    <td>7</td>
		    <td>서울신문</td>
		    <td><a href="http://www.seoul.co.kr/" target="_blank">http://www.seoul.co.kr/</a></td>
		    <td class="bnon">″</td>
		  </tr>
		  <tr>
		    <td>8</td>
		    <td>세계일보</td>
		    <td><a href="http://www.segye.com/" target="_blank">http://www.segye.com/</a></td>
		    <td class="bnon">″</td>
		  </tr>
		  <tr>
		    <td>9</td>
		    <td>스포츠서울</td>
		    <td><a href="http://www.sportsseoul.com/" target="_blank">http://www.sportsseoul.com/</a></td>
		    <td class="bnon">″</td>
		  </tr>
		  <tr>
		    <td>10</td>
		    <td>일간스포츠</td>
		    <td><a href="http://isplus.joins.com/" target="_blank">http://isplus.joins.com/</a></td>
		    <td class="bnon">″</td>
		  </tr>
		  <tr>
		    <td>11</td>
		    <td>전자신문</td>
		    <td><a href="http://www.etnews.com/" target="_blank">http://www.etnews.com/</a></td>
		    <td class="bnon">″</td>
		  </tr>
		  <tr>
		    <td>12</td>
		    <td>조선일보</td>
		    <td><a href="http://www.chosun.com/" target="_blank">http://www.chosun.com/</a></td>
		    <td class="bnon">″</td>
		  </tr>
		  <tr>
		    <td>13</td>
		    <td>중앙일보</td>
		    <td><a href="http://joongang.joins.com/" target="_blank">http://joongang.joins.com/</a></td>
		    <td class="bnon">″</td>
		  </tr>
		  <tr>
		    <td>14</td>
		    <td>코리아헤럴드</td>
		    <td><a href="http://www.koreaherald.com/index_kr.php" target="_blank">http://www.koreaherald.com/index_kr.php</a></td>
		    <td class="bnon">″</td>
		  </tr>
		  <tr>
		    <td>15</td>
		    <td>한겨레</td>
		    <td><a href="http://www.hani.co.kr/" target="_blank">http://www.hani.co.kr/</a></td>
		    <td class="bnon">″</td>
		  </tr>
		  <tr>
		    <td>16</td>
		    <td>한국경제신문</td>
		    <td><a href="http://www.hankyung.com/" target="_blank">http://www.hankyung.com/</a></td>
		    <td class="bnon">″</td>
		  </tr>
		  <tr>
		    <td>17</td>
		    <td>한국일보</td>
		    <td><a href="http://www.hankooki.com/" target="_blank">http://www.hankooki.com/</a></td>
		    <td class="bnon">″</td>
		  </tr>
		  <tr>
		    <td>18</td>
		    <td>헤럴드경제</td>
		    <td><a href="http://nbiz.heraldcorp.com/" target="_blank">http://nbiz.heraldcorp.com/</a></td>
		    <td class="bnon">″</td>
		  </tr>
		  <tr>
		    <td>19</td>
		    <td>소년한국일보</td>
		    <td><a href="http://kids.hankooki.com/" target="_blank">http://kids.hankooki.com/</a></td>
		    <td class="bnon">일간</td>
		  </tr>
		  <tr>
		    <td>20</td>
		    <td>키즈타임즈</td>
		    <td><a href="http://www.kidstimes.net/" target="_blank">www.kidstimes.net</a></td>
		    <td class="bnon">주간</td>
		  </tr>
		  <tr>
		    <td>21</td>
		    <td>국제신문</td>
		    <td><a href="http://www.kookje.co.kr/" target="_blank">www.kookje.co.kr</a></td>
		    <td class="bnon">일간/지방</td>
		  </tr>
		  <tr>
		    <td>22</td>
		    <td>부산일보</td>
		    <td><a href="http://www.busan.com/" target="_blank">http://www.busan.com/</a></td>
		    <td class="bnon">일간/지방</td>
		  </tr>
		  <tr>
		    <td>　</td>
		    <td>총22종</td>
		    <td>　</td>
		    <td class="bnon">　</td>
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