<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu06.jsp" %>   
			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>열린마당</li>
		<li>스터디모집</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">스터디모집</div>
	
	
	<!-- content 시작 -->

	<table class="board_read">
		<colgroup><col style="width:20%;"><col style="width:55%;"><col></colgroup>		
		<tbody>
			<tr>
				<th class="c">스터디명</th>
				<td>${detail.stu_title}</td>
				<td class="mob_none">작성일 : ${detail.stu_regdate}  /  조회수 : ${detail.stu_count}</td>
			</tr>
			<tr>
				<th class="c">작성자</th>
				<td colspan="2">
					${detail.mem_name}
					<input type="hidden" name="stu_writer" value="${detail.stu_writer}"/>
					<input type="hidden" name="stu_rimemnum" value="${detail.stu_rimemnum}"/>
				</td>
			</tr>
			<tr>
				<th class="c">모집인원</th>
				<td colspan="2">${detail.stu_person}</td>
			</tr>
			<tr>
				<th class="c">일자</th>
				<td colspan="2">${detail.stu_date}</td>
			</tr>
			<tr>
				<th class="c">장소</th>
				<td colspan="2">${detail.stu_location}</td>
			</tr>
			<tr>
				<th class="c">소개</th>
				<td colspan="2" class="contents">${detail.stu_content}</td>
			</tr>
			<tr>
				<th class="c">진행사항</th>
				<c:choose>
					<c:when test="${detail.stu_end eq 1}">
						<td colspan="2">
							모집중
						</td>
					</c:when>
					<c:otherwise>
						<td colspan="2">
							모집마감
						</td>
					</c:otherwise>
				</c:choose>
			</tr>
		</tbody>
	</table>
	<div class="r mg_t20 btns">
		<c:choose>
			<c:when test="${detail.stu_writer eq sessionScope.mem_id && detail.stu_rimemnum eq sessionScope.rimem_num}">
				<script>
					onload = function(){
						var cancel = document.getElementById("list");
						cancel.addEventListener("click", function(){
							location.href="/study?m1=${m1}&m2=${m2}&page_num=1&page_grp=1";
						});	
						
						var update = document.getElementById("update");
						update.addEventListener("click", function(){
							location.href = "/study/updateForm?m1=${m1}&m2=${m2}&stu_code=${detail.stu_code}&stu_idx=${detail.stu_idx}";
						});
						
						var del = document.getElementById("delete");
						del.addEventListener("click", function(){
							location.href = "/study/delete?m1=${m1}&m2=${m2}&stu_code=${detail.stu_code}&stu_idx=${detail.stu_idx}";
						});
						
						var appliCondition = document.getElementById("appliCondition");
						appliCondition.addEventListener("click", function(){
							location.href = "/study/prcondition?m1=${m1}&m2=${m2}&stu_code=${detail.stu_code}&page_num=1&page_grp=1";
						});
					}
				</script>
				<input type="button" class="btns_black" id="appliCondition" value="신청현황" style="border:0;"/>
				<input type="button" class="btns_black" id="update" value="수정" style="border:0;"/>
				<input type="button" class="btns_black" id="delete" value="삭제" style="border:0;"/>
				<input type="button" class="btns_black" id="list" value="목록" style="border:0;"/>			
			</c:when>
			<c:otherwise>
				<script>
					onload = function(){
						var cancel = document.getElementById("list");
						cancel.addEventListener("click", function(){
							location.href="/study?m1=${m1}&m2=${m2}&page_num=1&page_grp=1";
						});	
						
						var join = document.getElementById("join");
						join.addEventListener("click", function(){
							location.href = "/study/joinForm?m1=${m1}&m2=${m2}&stu_code=${detail.stu_code}&stu_idx=${detail.stu_idx}";
						});
					}
				</script>
				<c:if test="${detail.stu_end eq 1}">
					<input type="button" class="btns_black" id="join" value="신청" style="border:0;"/>
				</c:if>
				<input type="button" class="btns_black" id="list" value="목록" style="border:0;"/>			
			</c:otherwise>
		</c:choose>
	</div>	
<!-- //content 끝 -->
</div>








		</div>
		
		
	</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp" %>