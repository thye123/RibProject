<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../../include/header.jsp" %>

<!-- sub_visual -->
<%@ include file="../../include/sub_visual.jsp" %>   

<!-- 레프트메뉴 -->
<%@ include file="../../include/left_menu05.jsp" %>   


			
<!-- location -->
<div class="loca">
	<ul>
		<li><img src="${pageContext.request.contextPath}/resources/user/images/sub/loca_home.jpg" alt="" /></li>
		<li>원북원부산</li>
		<li>올해의BOOK</li>
	</ul>
</div>
<!-- //location -->


<div class="con_mob_pad">
	

	<!-- title -->
	<div class="sub_tit">올해의BOOK</div>
	
	
	<!-- content 시작 -->
	<div class="basic_box type1">
		<div class="inner">
			<span class="icon icon13"></span>
			<b>원북원부산 One Book One Busan</b>
			<p>1998년 미국 시애틀 공공도서관에서 처음 시작하여 미국 전역으로 확산된 독서운동으로,영국,캐나다,호주 등 여러나라에서 도입하여 전개하고 있으며,우리나라에서도 부산을 비롯한 여러 도시에서 다양한 형태로 진행되고 있습니다.</p>		
		</div>
	</div>

	
	
	<div id="onbook">
	<ul>
		 <li>
		<dl>
			<dt id="book_title">2018년 원북원부산 선정도서- 아몬드</dt>
			<dd class="book"><img alt="2018년 원북원부산 선정도서- 아몬드" src="${pageContext.request.contextPath}/resources/user/images/sub/img_onebook_2018.jpg" /></dd>
			<dd class="con">
				<ul>															
					<li><span class="name">저자 :</span> 손원평</li>
					<li><span class="name">출판사 :</span>창비 </li>	
				</ul>
				아몬드라 불리는 뇌의 편도체 이상으로 감정을 느끼지 못하는 한 소년의 성장소설로 타인의 감정에 무감각해진 공감 불능의 이 시대에 진심으로 타인의 감정을 이해하고 공감한다는 것이 얼마나 어려운 일이며, 소중한 일인지를 생각하게 한다.  
	
			</dd>
			
		</dl>
		</li>
		 <li>
		<dl>
			<dt id="book_title">2017년 원북원부산 선정도서- 여행하는 인간</dt>
			<dd class="book"><img alt="2017년 원북원부산 선정도서- 여행하는 인간" src="${pageContext.request.contextPath}/resources/user/images/sub/img_onebook_2017.jpg" /></dd>
			<dd class="con">
				<ul>															
					<li><span class="name">저자 :</span> 문요한</li>
					<li><span class="name">출판사 :</span>해냄  2016</li>	
				</ul>
				『여행하는 인간』은 정신과의사 문요한이 전하는 여행 심리학책으로 총 12개의 챕터로 구성하여 새로움, 휴식, 자유, 취향, 치유, 도전, 연결, 행복, 유연함, 각성, 노스탤지어, 전환이라는 관점에서 여행 이야기를 풀어내며, 생생한 삶의 에너지로 현재를 충만하게 살아가기 위해 일상을 여행처럼 여행을 일상처럼 살아야 하는 이유를 설득력 있게 들려준다.
			</dd>
			
		</dl>
		</li>
	
		 <li>
		<dl>
			<dt id="book_title">2016년 원북원부산 선정도서- 비숲</dt>
			<dd class="book"><img alt="2016년 원북원부산 선정도서- 비숲" src="${pageContext.request.contextPath}/resources/user/images/sub/img_onebook_2016.jpg" /></dd>
			<dd class="con">
				<ul>															
					<li><span class="name">저자 :</span> 김산하</li>
					<li><span class="name">출판사 :</span>사이언스북스  2015</li>	
				</ul>
				『비숲』은 러디어드 키플링의 소설『정글북』을 읽으며 어린 시절부터 야생에서의 삶을 꿈꾸었던 저자가 본격적으로 인도네시아 열대 우림 안에서 숨 쉬고 생활한 2년여의 기록을 담은 내용으로 지구상에서 가장 치열한 생명 활동이 벌어지고 있는 현장인‘비숲’과,‘비숲’과 더불어 탄생하고 때로는‘비숲’과 더불어 스러지는 다종다양한 생명체들을 저자의 생동감 넘치는 글로 더욱 공감하며 읽을 수 있는 내용이다.
			</dd>
			
		</dl>
		</li>
	
	  <li>
		<dl>
			<dt id="book_title">2015년 원북원부산 선정도서- 금정산을 보냈다</dt>
			<dd class="book"><img alt="2015년 원북원부산 선정도서- 금정산을 보냈다" src="${pageContext.request.contextPath}/resources/user/images/sub/img_onebook_2015.jpg" /></dd>
			<dd class="con">
				<ul>															
					<li><span class="name">저자 :</span> 최영철</li>
					<li><span class="name">출판사 :</span>산지니</li>	
				</ul>
				『금정산을 보냈다』는 부산 지역의 중견 시인 최영철의 열 번째 시집이다. 세상살이가 힘들 때 버티는 힘을 주는 것은 고향이나 핏줄일 것이다. 시인은 먼 길을 떠나는 아들에게 부산의 모태와도 같은 금정산을 시로 선물하였다. 바로 시이기에 가능했던 일이다. 이 시집은 아들을 중동으로 일하러 보내는 아버지의 심정과 함께 부산을 살고 있는 우리들에게 지역의 의미를 다시 한번 되새겨준다. 
			</dd>
			
		</dl>
		</li>
	
		<li>
		<dl>
			<dt id="book_title">2014년 원북원부산 선정도서- 돌아온 외규장각 의궤와 외교관 이야기</dt>
			<dd class="book"><img alt="2014년 원북원부산 선정도서 - 돌아온 외규장각 의궤와 외교관 이야기" src="${pageContext.request.contextPath}/resources/user/images/sub/img_onebook_2014.jpg" /></dd>
			<dd class="con">
				<ul>															
					<li><span class="name">저자 :</span> 유복렬</li>
					<li><span class="name">출판사 :</span>놀아</li>	
				</ul>
				
				『돌아온 외규장각 의궤와 외교관 이야기』는 외세에 약탈되어 145년의 유랑을 마치고 우리 곁에 돌아온 외규장각 의궤, 그 반환협상의 최전선에서 실무를 담당했던 외교관이 십 수 년간 협상에 참여하면서 겪었던 일들을 담은 에세이. 국외소재 문화재를 돌려받기 위해 힘쓰시는 분들의 노고를 돌아보며 부산시민들의 문화재에 대한 인식을 한 번 더 제고 할 수 있는 계기가 되기를 기대한다. 
	
			</dd>
			
		</dl>
		</li>
	
		<li>
		<dl>
			<dt id="book_title">2013년 원북원부산 선정도서- 가족의 두얼굴</dt>
			<dd class="book"><img alt="2013년 원북원부산 선정도서- 가족의 두얼굴" src="${pageContext.request.contextPath}/resources/user/images/sub/img_onebook_2013.jpg" /></dd>
			<dd class="con">
				<ul>															
					<li><span class="name">저자 :</span> 최광현</li>
					<li><span class="name">출판사 :</span>부키</li>	
				</ul>
				
				『가족의 두 얼굴』은 가족 사이의 갈등과 아픔의 원인을 분석하고 치유방법을 안내하여 가족관계를 회복하는데 도움을 주는 심리 안내서이다. 나와 가족의 문제의 근원을 파악하여 해결할 수 있도록 도와주는 전문가의 처방을 통하여 올해 부산의 아픈 가족들이 많이 사랑하고 더 많이 행복해지는 계기가 되기를 기대해 본다.
	
			</dd>
			
		</dl>
		</li>
	
		
		<li>
		<dl>
			<dt id="book_title">2012년 원북원부산 선정도서- 할머니 의사 청진기를 놓다</dt>
			<dd class="book"><img alt="2012년 원북원부산 선정도서-할머니 의사 청진기를 놓다" src="${pageContext.request.contextPath}/resources/user/images/sub/img_onebook_2012.gif" /></dd>
			<dd class="con">
				<ul>															
					<li><span class="name">저자 :</span> 조병국</li>
					<li><span class="name">출판사 :</span>삼성출판사</li>	
				</ul>
				
				홀트아동병원에서 버려진 아이들, 입양아들과 함께한 조병국원장의 50년 의료일기 『할머니 의사 청진기를 놓다』. 지난 50년간 조병국원장이 만난 사람들과의 에피소드들 담고 있는 이 책은 가난하고 슬펐던 시절 부모에게 버림받았던 아이들과 그들을 따뜻하게 보듬어 키운 아름다운 사람들의 이야기를 담고 있다.
	
			</dd>
			
		</dl>
		</li>
	
		<li>
		<dl>
			<dt id="book_title">2011년 원북원부산 선정도서- 책만 보는 바보</dt>
			<dd class="book"><img alt="2011년 원북원부산 선정도서- 책만 보는 바보" src="${pageContext.request.contextPath}/resources/user/images/sub/img_onebook_2011.gif" /></dd>
			<dd class="con">
				<ul>															
					<li><span class="name">저자 :</span> 안소영</li>
					<li><span class="name">출판사 :</span>보림</li>	
				</ul>
				생 책 속에 파묻혀 살며 스스로를 '책만 보는 바보' 라 불렀던 이덕무에게 매료되어 그의 책을 꼼꼼히 읽어 온 작가가 이덕무의 마음과 눈이 되어 그와 벗과 스승인 실학자 박제가, 유득공, 이서구, 백동수, 박지원, 홍대용과 개혁 군주 정조를 그려 냅니다. <br>
				사실을 바탕으로 빚어 낸 작가의 풍부한 상상력이 이덕무의 책 사랑, 벗들과의 우정, 그리고 18세기 조선 사회로 우리를 생생하게 인도합니다.
	
			</dd>
			
		</dl>
		</li>
	
		<li>
		<dl>
			<dt id="book_title">2010년 원북원부산 선정도서- 산동네 공부방, 그 사소하고 조용한 기적</dt>
			<dd class="book"><img alt="2010년 원북원부산 선정도서- 산동네 공부방, 그 사소하고 조용한 기적" src="${pageContext.request.contextPath}/resources/user/images/sub/img_onebook_2010.gif" /></dd>
			<dd class="con">
				<ul>															
					<li><span class="name">저자 :</span> 최수연</li>
					<li><span class="name">출판사 :</span>책으로여 여는 세상</li>	
				</ul>
				20년 전 젊은 나이에 부산에서 가난한 사람들이 가장 많이 모여 산다는 감천동 산동네에 들어가 공부방을 열고 그곳에서 산동네 사람들과 함께 살아온 최수연 씨의 이야기다. 산동네 사람들과 이웃이 되어가는 과정.  <br>
				공부방에서 아이들이 변해가고 자라는 모습, 가슴이 아프고 재미난 산동네의 일상, 대학생 자원교사들의 에피소드가 진솔하게 그려져 있다.
	
			</dd>
			
		</dl>
		</li>
	
		<li>
		<dl>
			<dt id="book_title">2009년 원북원부산 선정도서- 엄마를 부탁해</dt>
			<dd class="book"><img alt="2009년 원북원부산 선정도서- 엄마를 부탁해" src="${pageContext.request.contextPath}/resources/user/images/sub/img_onebook_2009.gif" /></dd>
			<dd class="con">
				<ul>															
					<li><span class="name">저자 :</span> 신경숙</li>
					<li><span class="name">출판사 :</span>창작과비평사</li>	
				</ul>
				이야기는 시골에서 올라온 엄마가 서울의 지하철 역에서 실종되면서 시작된다. 가족들이 사라진 엄마의 흔적을 추적하며 기억을 복원해나가는 과정은 추리소설 같은 팽팽한 긴장감을 유지하면서 전개된다. 늘 곁에서 무한한 사랑을 줄 것 같은 존재였던 엄마는 실종됨으로써 가족들에게 새롭게 다가오고 더욱 소중한 존재가 된다. <br>
				각 장은 엄마를 찾아 헤매는 자식들과 남편, 그리고 엄마의 시선으로 펼쳐진다. 딸, 아들, 남편으로 관점이 바뀌면서 이야기가 펼쳐질 때마다 가족들을 위해 평생을 헌신해온 엄마의 모습이 생생하게 되살아난다. 각자가 간직한, 그러나 서로가 잘 모르거나 무심코 무시했던 엄마의 인생과 가족들의 내면을 섬세하게 그려내고 있다.<br>
				가족들의 내면에 자리 잡은 엄마의 모습은 '어머니는 과연 우리에게 어떤 존재일까'라는 질문을 던지게 한다. 곳곳에서 만날 수 있는 엄마에 대한 슬프고도 아름다운 에피소드들은 우리 모두의 엄마를 떠올리게 한다. 이 소설은 '어머니'라는 보편적인 소재를 다루고 있지만, 작가 특유의 섬세한 문체와 묘사로 자연스럽게 이야기의 흐름을 이끌어간다. 늘 배경으로 묻혔던 엄마의 삶을, 누군가의 아내나 어머니이기 전에 한 여자로서의 삶을 내세우고 있다.
	
			</dd>
			
		</dl>
		</li>
	
		<li>
		<dl>
			<dt id="book_title">2008년 원북원부산 선정도서- 시골의사의 아름다운 동행</dt>
			<dd class="book"><img alt="2008년 원북원부산 선정도서- 시골의사의 아름다운 동행" src="${pageContext.request.contextPath}/resources/user/images/sub/img_onebook_2008.gif" /></dd>
			<dd class="con">
				<ul>															
					<li><span class="name">저자 :</span> 박경철</li>
					<li><span class="name">출판사 :</span>리더스북</li>	
				</ul>
				이 책은 그동안 지은이의 블로그에 (인생)이라는 코너에 연재되었던 글들을 모은 것이다. 시골 외과의사가 병원이라는 풍경 속에서 깊고 따뜻한 시선으로 건져 올린 35개의 에피소드는 우리가 찾는 삶의 진정성은 삶 그 자체에 있다는 평범하지만 위대한 진리를 새삼 깨닫게 해준다.<br>
				지은이는 의사로서, 아니 의사이기 때문에 목도해야 했던 가슴 아픈 이야기들을 생생한 날것 그대로 보여줌으로써 "인생은 이런 것이다."라고 담담하게 말한다.
			</dd>
			
		</dl>
		</li>
	
		<li>
		<dl>
			<dt id="book_title">2007년 원북원부산 선정도서- 가난하다고 꿈조차 가난할 수는 없다</dt>
			<dd class="book"><img alt="2007년 원북원부산 선정도서- 가난하다고 꿈조차 가난할 수는 없다" src="${pageContext.request.contextPath}/resources/user/images/sub/img_onebook_2007.gif" /></dd>
			<dd class="con">
				<ul>															
					<li><span class="name">저자 :</span> 김현근</li>
					<li><span class="name">출판사 :</span>사회평론</li>	
				</ul>
				이 책은 IMF 여파로 인해 아버지가 실직하고 어머니가 생계를 책임지게 되면서, 하루하루 먹고 사는 일을 걱정해야만 하는 상황에서도 미국 유학 이라는 꿈을 잃지 않은 저자가 초등학교 시절부터 한국과학영재학교 수석졸업, 프린스턴대학교의 합격통지서를 받는 순간까지를 담고 있다. <br>
				저자는 초등학교 4학년 때부터 스스로 공부하고 준비하는 습관을 들인 자신의 경험을 바탕으로, 시험의 성격에 따라 공부 전략을 짜고, 필요한 정보와 자료를 모으는 것이 중요하다고 강조하고 있다. 또한 부록으로 쉽고 확실하게 실력을 키우는 영어 공부법, 한국과학영재학교에 대한 가이드, 한국인들을 위한 유학 노하우를 담아 저자처럼 꿈을 이루기 위해 노력하는 학생들에게 많은 도움을 주고 부모들에게는 좋은 자녀 교육 지침서가 될 것이다.
			</dd>
			
		</dl>
		</li>
	
		<li>
		<dl>
			<dt id="book_title">2006년 원북원부산 선정도서- 우리들의 행복한 시간</dt>
			<dd class="book"><img alt="2006년 원북원부산 선정도서- 우리들의 행복한 시간" src="${pageContext.request.contextPath}/resources/user/images/sub/img_onebook_2006_1.gif" /></dd>
			<dd class="con">
				<ul>															
					<li><span class="name">저자 :</span> 공지영</li>
					<li><span class="name">출판사 :</span>푸른숲</li>	
				</ul>
				 [무소의 뿔처럼 혼자서 가라], [고등어], [봉순이 언니], [무소의 뿔처럼 혼자서 가라], [고등어], [봉순이 언니]로 많은 사랑을 받고 있는 소설가 공지영이 7년만에 펴낸 장편소설. 세 명의 여자를 살해한 남자, 세 번이나 자신을 살해하려 한 여자. 다른 듯 닮아있는 두 남녀의 만남을 통해 삶과 죽음이라는 인간본연의 문제를 묘사한 소설. <br>
				누구에게도 말하지 못한 '진짜 이야기'들을 나누며, 애써 외면해왔던 자기 안의 상처를 들추고 치유해나가는 모습들이 슬프고 아름답게 그려진다.
			</dd>
			
		</dl>
		</li>
	
		<li>
		<dl>
			<dt id="book_title">2005년 원북원부산 선정도서- 괭이부리말 아이들</dt>
			<dd class="book"><img alt="2005년 원북원부산 선정도서- 괭이부리말 아이들" src="${pageContext.request.contextPath}/resources/user/images/sub/img_onebook_2005.gif" /></dd>
			<dd class="con">
				<ul>															
					<li><span class="name">저자 :</span> 김중미</li>
					<li><span class="name">출판사 :</span>창작과비평사</li>	
				</ul>
				 이 책은 숙자, 숙희 쌍둥이 자매를 중심으로 가난한 달동네 식구들과 그들의 삶을 차근차근 그려내고 있다. 돈을 벌어오겠다고 집을 나간 가장, 암으로 병치레 한번 제대로 하지 못하고 죽은 아줌마, 재개발로 집을 잃고 갈 곳이 없는 사람들 등 경제 성장의 뒤안길로 밀려난 힘없는 사람들의 이야기를 가슴 저리게 담고 있다.
			</dd>
			
		</dl>
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
<%@ include file="../../include/footer.jsp" %>