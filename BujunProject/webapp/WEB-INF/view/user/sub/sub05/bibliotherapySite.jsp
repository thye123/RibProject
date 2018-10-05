<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header -->
<%@ include file="../../include/header.jsp"%>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp"%>

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu05.jsp"%>



<!-- location -->
<div class="loca">
	<ul>
		<li><img
			src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg"
			alt="" /></li>
		<li>독서치료</li>
		<li>독서치료관련사이트</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">


	<!-- title -->
	<div class="sub_tit">독서치료관련사이트</div>

	<div class="content">

		<h3>국내사이트</h3>
		<ul class="com_info">
			<li>
				<div>
					<a href="http://bibliotherapy.or.kr" target="_blank">
						<dl>
							<dt>한국독서치료학회</dt>
							<dd>
								<ul>
									<li><span class="ic3"></span>치료사례, 추천도서, 학회행사 일정 및 포토갤러리
										수록</li>

								</ul>
							</dd>
						</dl>
					</a> <img src="/img/sub/sub09/btn_homepage.png" alt="홈페이지 바로가기"
						class="home" />
				</div>
			</li>
			<li>
				<div>
					<a href="http://cafe.daum.net/poetrytherapist" target="_blank">
						<dl>
							<dt>시치료 카페</dt>
							<dd>
								<ul>
									<li><span class="ic3"></span>시와 책을 통해 자아성장 및 계발로 행복한 참 삶</li>

								</ul>
							</dd>
						</dl>
					</a> <img src="/img/sub/sub09/btn_homepage.png" alt="홈페이지 바로가기"
						class="home" />
				</div>
			</li>
			<li>
				<div>
					<a href="http://www.koreanpsychology.or.kr" target="_blank">
						<dl>
							<dt>한국심리학회</dt>
							<dd>
								<ul>
									<li><span class="ic3"></span>학회소개, 공격, 이타적 행동, 대인지각, 자기개념
										등 심리학일반지식, 학술대회 안내</li>

								</ul>
							</dd>
						</dl>
					</a> <img src="/img/sub/sub09/btn_homepage.png" alt="홈페이지 바로가기"
						class="home" />
				</div>
			</li>
			<!-- <li>
		<div>
			<a href="http://humanities.knu.ac.kr/gs/gs_01.html" target="_blank">
				<dl>
					<dt>경북대 문학치료학과</dt>
					<dd>
						<ul>
							<li><span class="ic3"></span>경북대 문학치료학과</li>
							
						</ul>
					</dd>
				</dl>
			</a>
			<img src="/img/sub/sub09/btn_homepage.png" alt="홈페이지 바로가기" class="home" />	 
		</div>
	</li> -->
			<li>
				<div>
					<a href="http://cafe.daum.net/knutherapy/" target="_blank">
						<dl>
							<dt>경북대 대학원 문화치료학과 카페</dt>
							<dd>
								<ul>
									<li><span class="ic3"></span>경북대 대학원 문학치료학과</li>

								</ul>
							</dd>
						</dl>
					</a> <img src="/img/sub/sub09/btn_homepage.png" alt="홈페이지 바로가기"
						class="home" />
				</div>
			</li>
			<li>
				<div>
					<a href="http://www.bibliotherapy.pe.kr/" target="_blank">
						<dl>
							<dt>이영식목사 독서치료</dt>
							<dd>
								<ul>
									<li><span class="ic3"></span>한국독서문화재단 감사로 활동하고 계시는 이영식
										목사님의 독서치료 개인홈페이지로 독서치료... 칼럼형식의 독서치료 관련 글도 직접 제공하고 있어 독서치료에 대한
										전반적인 흐름도 읽을 수 있다.</li>

								</ul>
							</dd>
						</dl>
					</a> <img src="/img/sub/sub09/btn_homepage.png" alt="홈페이지 바로가기"
						class="home" />
				</div>
			</li>
			<!-- <li>
		<div>
			<a href="http://www.sangdam21.org/sangdam.html" target="_blank">
				<dl>
					<dt>푸른 초장</dt>
					<dd>
						<ul>
							<li><span class="ic3"></span>고민을 상담하여 드립니다.</li>
							
						</ul>
					</dd>
				</dl>
			</a>
			<img src="/img/sub/sub09/btn_homepage.png" alt="홈페이지 바로가기" class="home" />	 
		</div>
	</li> -->
			<!-- <li>
		<div>
			<a href="http://www.gulnara.net/2/method_1.php" target="_blank">
				<dl>
					<dt>글나라 독서요법</dt>
					<dd>
						<ul>
							<li><span class="ic3"></span>독서, 논술 독후감상문, 독서치료안내, 글쓰기, 퀴즈 및 명언자료, 추천도서 제공</li>
							
						</ul>
					</dd>
				</dl>
			</a>
			<img src="/img/sub/sub09/btn_homepage.png" alt="홈페이지 바로가기" class="home" />	 
		</div>
	</li> -->
			<!-- <li>
		<div>
			<a href="http://www.sangdam.kr/p_sitemap.html" target="_blank">
				<dl>
					<dt>이보연 아동상담실</dt>
					<dd>
						<ul>
							<li><span class="ic3"></span>이보연 아동상담실</li>
							
						</ul>
					</dd>
				</dl>
			</a>
			<img src="/img/sub/sub09/btn_homepage.png" alt="홈페이지 바로가기" class="home" />	 
		</div>
	</li> -->
			<li>
				<div>
					<a href="http://www.sangdam.kr/p_sitemap.html" target="_blank">
						<dl>
							<dt>아름독서치료회 카페</dt>
							<dd>
								<ul>
									<li><span class="ic3"></span>아름독서치료회 카페</li>

								</ul>
							</dd>
						</dl>
					</a> <img src="/img/sub/sub09/btn_homepage.png" alt="홈페이지 바로가기"
						class="home" />
				</div>
			</li>
			<li>
				<div>
					<a href="http://hajebook.com" target="_blank">
						<dl>
							<dt>하제독서치료연구소</dt>
							<dd>
								<ul>
									<li><span class="ic3"></span>연구소 소개, 서평, 책을 통한 마음읽기, 좋은글,
										치료후기, 독서치료자료 수록.</li>

								</ul>
							</dd>
						</dl>
					</a> <img src="/img/sub/sub09/btn_homepage.png" alt="홈페이지 바로가기"
						class="home" />
				</div>
			</li>
			<li>
				<div>
					<a href="http://hajebook.com" target="_blank">
						<dl>
							<dt>한국시치료연구소</dt>
							<dd>
								<ul>
									<li><span class="ic3"></span>연구소 소개, 심리검사, 상담안내, 교육정보 등
										제공.</li>

								</ul>
							</dd>
						</dl>
					</a> <img src="/img/sub/sub09/btn_homepage.png" alt="홈페이지 바로가기"
						class="home" />
				</div>
			</li>

		</ul>
	</div>

	<!-- //content 끝 -->
</div>








</div>


</div>
</div>
</div>


<!-- footer -->
<%@ include file="../../include/footer.jsp"%>