<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu06.jsp"%>

<script>
	onload = function() {
		var subTitle = document.getElementsByClassName("subTitle");
		var sub_tit  = document.getElementsByClassName("sub_tit");
		var stuap_code = "${stuap_code}";
		
		if (stuap_code != null && stuap_code != "") {
			subTitle[0].removeChild(subTitle[0].childNodes[0]);
			sub_tit[0].removeChild(sub_tit[0].childNodes[0]);
			var stu_coment = document.createTextNode("스터디 신청현황");
			var stu_li_coment = document.createTextNode("스터디 신청현황");
			subTitle[0].appendChild(stu_li_coment);
			sub_tit[0].appendChild(stu_coment);
		} else {			
			//alert("s");
			subTitle[0].removeChild(subTitle[0].childNodes[0]);
			sub_tit[0].removeChild(sub_tit[0].childNodes[0]);
			var my_coment = document.createTextNode("나의 스터디 신청현황");
			var my_li_coment = document.createTextNode("나의 스터디 신청현황");
			subTitle[0].appendChild(my_li_coment);
			sub_tit[0].appendChild(my_coment);	
		}
	}
</script>

<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>열린마당</li>
		<li>스터디</li>
		<li class="subTitle">나의 스터디 신청현황</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	<c:set var="endnum" value="${paging.end_page}"></c:set>
	<c:set var="startnum" value="${paging.start_page}"></c:set>
	<c:set var="page_grp" value="${paging.page_group}"></c:set>
	<c:set var="tot_btcnt" value="${paging.tot_btcnt}"></c:set>

	<!-- title -->
	<div class="sub_tit">나의 스터디 신청현황</div>

	<!-- content 시작 -->
	<div class="boardSearch">
		<div class="board_page">
			<span class="p02">Total</span>
			<span class="p01"> : ${tot_cnt}</span>
			(<span class="p01">${page_num}</span>/${tot_btcnt}페이지)
		</div> 
		<c:choose>
			<c:when test="${stuap_code != null}">
				<form action="/study/stusearch?m1=${m1}&m2=${m2}&page_num=1&page_grp=1&stuap_code=${stuap_code}" name="search" method="post" id="searchForm">
					<div class="board_sch">
						<select name="keyfield" id="keyfield" title="검색어">
							<option value="">승인여부</option>
							<option value="2">승인</option>
							<option value="1">미승인</option>
						</select> 
						<a href="#" class="searchBtn" onclick="document.search.submit(); return false;">검색</a>
					</div>
				</form>
			</c:when>
			<c:otherwise>
				<form action="/study/myapplysearch?m1=${m1}&m2=${m2}&page_num=1&page_grp=1&mem=${sessionScope.rimem_num}" name="search" method="post" id="searchForm">
					<div class="board_sch">
						<select name="keyfield" id="keyfield" title="검색어">
							<option value="">검색대상</option>
							<option value="title">스터디명</option>
							<option value="location">진행장소</option>
							<option value="content">소개내용</option>
						</select> 
						<input type="text" name="keyword" id="keyword" title="검색어 입력" value="" placeholder="검색어를 입력하세요" /> 
						<a href="#" class="searchBtn" onclick="document.search.submit(); return false;">검색</a>
					</div>
				</form>
			</c:otherwise>
		</c:choose>
	</div>

	<!-- table -->
	<div class="scroll_info">
		<span class="arr_l"></span> <span class="scroll_icon"></span>
		<p class="pinfo">좌우로 스크롤 하시면 전체 내용을 확인하실 수 있습니다.</p>
		<span class="arr_r"></span>
	</div>


	<table class="tb_board">
		<c:choose>
			<c:when test="${stuap_code != null}">
				<thead>
					<tr>
						<th width="150">번호</th>
						<th width="300px">신청자명</th>
						<th width="229px">연락처</th>
						<th width="199px" class="bnon">신청일자</th>
						<th width="150">승인</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${keyfield != null}">
							<c:forEach var="aList" items="${AppList}">
								<tr>
									<td style="text-align: center;">${aList.stuap_idx}</td>
									<td>${aList.stuap_name}</td>
									<td>${aList.stuap_phone}</td>
									<td class="bnon">${aList.stuap_regdate}</td>
									<c:choose>
										<c:when test="${aList.stuap_fix eq 2}">
											<td>승인완료</td>
										</c:when>
										<c:otherwise>
											<td><a href="/study/accept?m1=${m1}&m2=${m2}&stuap_code=${stuap_code}&stuap_idx=${aList.stuap_idx}">승인</a></td>										
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>		
						</c:when>
						<c:otherwise>
							<c:forEach var="aList" items="${AppList}">
								<tr>
									<td style="text-align: center;">${aList.stuap_idx}</td>
									<td>${aList.stuap_name}</td>
									<td>${aList.stuap_phone}</td>
									<td class="bnon">${aList.stuap_regdate}</td>
									<c:choose>
										<c:when test="${aList.stuap_fix eq 2}">
											<td>승인완료</td>
										</c:when>
										<c:otherwise>
											<td><a href="/study/accept?m1=${m1}&m2=${m2}&stuap_code=${stuap_code}&stuap_idx=${aList.stuap_idx}">승인</a></td>										
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>		
						</c:otherwise>
					</c:choose>
				</tbody>	
			</c:when>
			<c:otherwise>
				<thead>
					<tr>
						<th width="300px">스터디명</th>
						<th width="229px">진행장소</th>
						<th width="229px">진행일자</th>
						<th width="150px" class="bnon">신청일자</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${keyword != null && keyfield != null}">
							<c:forEach var="aList" items="${AppList}">
								<tr>
									<td style="text-align: center;">${aList.stu_title}</td>
									<td>${aList.stu_location}</td>
									<td>${aList.stu_date}</td>
									<td class="bnon">${aList.stuap_regdate}</td>
								</tr>
							</c:forEach>		
						</c:when>
						<c:otherwise>
							<c:forEach var="aList" items="${AppList}">
								<tr>
									<td style="text-align: center;">${aList.stu_title}</td>
									<td>${aList.stu_location}</td>
									<td>${aList.stu_date}</td>
									<td class="bnon">${aList.stuap_regdate}</td>
								</tr>
							</c:forEach>		
						</c:otherwise>
					</c:choose>
				</tbody>
			</c:otherwise>
		</c:choose>
	</table>
	

	<!-- //table -->

	<!-- //게시판테이블(리스트) -->


	<!-- 페이징 -->
	<div class="board-list-paging">
		<div class="pagelist">
			<c:choose>
				<c:when test="${stuap_code != null}">
					<!-- 이전 10개 -->
					<c:choose>
						<c:when test="${keyfield != null}">
							<c:if test="${startnum > 10}">
								<a class="prevblock" href="/study/stusearch?keyfield=${keyfield}&m1=${m1}&m2=${m2}&page_num=${page_num-10}&page_grp=${page_grp-1}&stuap_code=${stuap_code}"><span>이전</span></a>
							</c:if>
						</c:when>
						<c:otherwise>
							<c:if test="${startnum > 10}">
								<a class="prevblock" href="/study/prcondition?m1=${m1}&m2=${m2}&page_num=${page_num-10}&page_grp=${page_grp-1}&stu_code=${stuap_code}"><span>이전</span></a>
							</c:if>
						</c:otherwise>
					</c:choose>		
					
					<!-- 페이징 -->	
					<c:choose>
						<c:when test="${keyfield != null}">
							<c:forEach var="Paging" begin="${startnum}" end="${endnum}" step="1">
								<a class="default"
									href="/study/stusearch?keyfield=${keyfield}&m1=${m1}&m2=${m2}&page_num=${Paging}&page_grp=${page_grp}&stuap_code=${stuap_code}"><span>${Paging}</span></a>
							</c:forEach>		
						</c:when>
						<c:otherwise>
							<c:forEach var="Paging" begin="${startnum}" end="${endnum}" step="1">
								<a class="default"
									href="/study/prcondition?m1=${m1}&m2=${m2}&page_num=${Paging}&page_grp=${page_grp}&stu_code=${stuap_code}"><span>${Paging}</span></a>
							</c:forEach>		
						</c:otherwise>
					</c:choose>
					
					<!-- 다음 10개 -->
					<c:choose>
						<c:when test="${keyfield != null}">
							<c:if test="${startnum <= (tot_btcnt-10) && startnum > 0}">
								<a class="nextblock" href="/study/stusearch?keyfield=${keyfield}&m1=${m1}&m2=${m2}&page_num=${page_num+10}&page_grp=${page_grp+1}&stuap_code=${stuap_code}"><span>다음</span></a>
							</c:if>
						</c:when>
						<c:otherwise>
							<c:if test="${startnum <= (tot_btcnt-10) && startnum > 0}">
								<a class="nextblock" href="/study/prcondition?m1=${m1}&m2=${m2}&page_num=${page_num+10}&page_grp=${page_grp+1}&stu_code=${stuap_code}"><span>다음</span></a>
							</c:if>
						</c:otherwise>
					</c:choose>
				</c:when>
				<c:otherwise>
					<!-- 이전 10개 -->
					<c:choose>
						<c:when test="${keyword != null && keyfield != null}">
							<c:if test="${startnum > 10}">
								<a class="prevblock" href="/study/appSearch?keyword=${keyword}&keyfield=${keyfield}&m1=${m1}&m2=${m2}&page_num=${page_num-10}&page_grp=${page_grp-1}&mem=${sessionScope.rimem_num}"><span>이전</span></a>
							</c:if>
						</c:when>
						<c:otherwise>
							<c:if test="${startnum > 10}">
								<a class="prevblock" href="/study/appList?m1=${m1}&m2=${m2}&page_num=${page_num-10}&page_grp=${page_grp-1}&mem=${sessionScope.rimem_num}"><span>이전</span></a>
							</c:if>
						</c:otherwise>
					</c:choose>		
					
					<!-- 페이징 -->	
					<c:choose>
						<c:when test="${keyword != null && keyfield != null}">
							<c:forEach var="Paging" begin="${startnum}" end="${endnum}" step="1">
								<a class="default"
									href="/study/appSearch?keyword=${keyword}&keyfield=${keyfield}&m1=${m1}&m2=${m2}&page_num=${Paging}&page_grp=${page_grp}&mem=${sessionScope.rimem_num}"><span>${Paging}</span></a>
							</c:forEach>		
						</c:when>
						<c:otherwise>
							<c:forEach var="Paging" begin="${startnum}" end="${endnum}" step="1">
								<a class="default"
									href="/study/appList?m1=${m1}&m2=${m2}&page_num=${Paging}&page_grp=${page_grp}&mem=${sessionScope.rimem_num}"><span>${Paging}</span></a>
							</c:forEach>		
						</c:otherwise>
					</c:choose>
					
					<!-- 다음 10개 -->
					<c:choose>
						<c:when test="${keyword != null && keyfield != null}">
							<c:if test="${startnum <= (tot_btcnt-10) && startnum > 0}">
								<a class="nextblock" href="/study/appSearch?keyword=${keyword}&keyfield=${keyfield}&m1=${m1}&m2=${m2}&page_num=${page_num+10}&page_grp=${page_grp+1}&mem=${sessionScope.rimem_num}"><span>다음</span></a>
							</c:if>
						</c:when>
						<c:otherwise>
							<c:if test="${startnum <= (tot_btcnt-10) && startnum > 0}">
								<a class="nextblock" href="/study/appList?m1=${m1}&m2=${m2}&page_num=${page_num+10}&page_grp=${page_grp+1}&mem=${sessionScope.rimem_num}"><span>다음</span></a>
							</c:if>
						</c:otherwise>
					</c:choose>
				</c:otherwise>	
			</c:choose>
		</div>
	</div>
	<!-- //페이징 -->

	<!-- //content 끝 -->
</div>








</div>


</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp"%>