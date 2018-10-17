/**
 * 
 */

window.onload = function() {
	var sel = document.getElementById('sel');
	var serForm = document.getElementById('serForm');
	var keyword = document.getElementById('keyword');
	//alert(keyword.value);
	serForm.onsubmit = function(e) {
		e.preventDefault();

		if (sel.value == '') {
			alert('검색 조건을 입력해주세요');
			sel.focus();
			return false;
		}
		if (keyword.value == '') {
			alert('검색 값을 입력해주세요')
			keyword.focus();
			return false;
		}
	}

	/*버튼 색상 변경 page 임의 1 지정 초기값 해놓음 나중에 변경해라 돼지민짐*/

	function changeBlock() {
		var pageBtn = document.getElementsByClassName('pageBtn');
		for (var i = 0; i < pageBtn.length; i++) {
			pageBtn[i].onclick = function(e) {
				e.preventDefault();
				var textObj = this.textContent;
				pageBtn[textObj - 1].setAttribute("style",
						"background-color: red;");
				//location.href="/club01/CluBoard?clb_clucode=${clu_code}&page=1&pagecount=${pageMaker.pagecount}&pagegrp=1";
			}
		}
	} /*체크 함수 변경*/

}

//페이징 만드는 함수 
function display_table() {
	alert('값이 없네요 ')
	var tag = "";
	tag += "<table><colgroup><col style='width:10%;'><col style='width:15%;'>";
	tag += "<col style='width:30%;'><col style='width:25%;'>";
	tag += "<col style='width:20%;'></colgroup>";
	tag += "<thead><tr>";
	tag += "<th scope='col'>번호</th><th scope='col'>글쓴이</th>";
	tag += "<th scope='col'>제목</th><th scope='col'>날짜</th>";
	tag += "<th scope='col' class='bnon'>조회수</th>";
	tag += "</tr></thead>";
	tag += "<tbody><tr>";
	tag += "<td colspan=5><b>조회한 결과가 없습니다.</b></td></tr>";
	tag += "</tbody>";
	tag += "</table>";
	$(".tb_board").html(tag);
	$("board-list-paging").empty();
}

function pagemaker(keyword, clb_clucode, keyfield, pagecount) {

	var page = 1
	var pagegrp = 1
	var clb_clucode = "CUS0001"
	alert(clb_clucode);
	$.ajax({
				url : '/CluBoard/paging/',
				data : {
					keyfield : keyfield,
					keyword : keyword,
					clb_clucode : clb_clucode,
					page : page,
					pagecount : "10",
					pagegrp : pagegrp
				},
				type : 'GET',
				dataType : 'json',

				success : function(data) {
					console.log("들어오는 데이터 값 " + data)
					var pagingTag = "";
					var count = data.count
					if (data.count == 0) {
						display_table();

					} else {
						alert('값이 있네요')

						var idx = '';
						var start = data.start;
						var page = data.page;
						var end = data.end;
						var clucode = data.clb_clucode;

						pagingTag += "<div class=pagelist>";
						for (var i = start; i <= end; i++) {
							pagingTag += "<a class=pageBtn href=''><span>" + i
									+ "</span></a>";
						}
						pagingTag += "</div>";
						$(".board-list-paging").html(pagingTag);
						$(".p01").html(count);

					}


//a tag 넘어주는 class 
$(".pageBtn").click(function(event) {
									//일단 이벤트 막아라 
	event.preventDefault();
	var godata = $(this).text();
	alert("a tag 넘어왔다 ")
	//$(".board-list-paging").empty();
		$.ajax({
		url : '/CluBoard/view/',
		data : {
			keyfield : keyfield,
			keyword : keyword,
			clb_clucode : clb_clucode,
			page : godata,
			pagecount : pagecount,
			pagegrp : pagegrp
		},
		type : 'GET',
		dataType : 'json',
		success : function(data) {
		$(".tb_board").empty();
			var tag = '';
			tag += "<table><col style='width:10%;'><col style='width:15%;'>";
			tag += "<col style='width:30%;'><col style='width:25%;'>";
			tag += "<col style='width:20%;'></colgroup>";
			tag += "<thead>";
			tag += "<tr>";
			tag += "<th scope='col'>번호</th>";
			tag += "<th scope='col'>글쓴이</th>";
			tag += "<th scope='col'>제목</th>";
			tag += "<th scope='col'>날짜</th>";
			tag += "<th scope='col' class='bnon'>조회수</th>";
			tag += "</tr>";
			tag += "</thead>";
			tag += "<tbody>";
			
		$.each(data,function(key,data) {
			tag += "<tr>";
			tag += "<td>"+ data.clb_idx+"</td>";
			tag += "<td>"+ data.clb_writer+ "</td>";
			tag += "<td><a href='#'>"+ data.clb_title+ "<a></td>";
			tag += "<td>"+ data.clb_regdate+"</td>";
			tag += "<td>"+ data.clb_count+ "</td>";
			tag += "</tr>";
		});
		
		tag += "</tbody>";
		tag += "</table>";
		$(".tb_board").html(tag);
		
		},
		error : function(xhr) {
			console.log('에러 발생(tag)'+ xhr);
		 }
	   });
	
	});

},
	error : function(xhr) {
		console.log('에러 발생(페이징)' + xhr);
	}
});//ajax 끝 	
}


	//검색후 호출하는 ajax 
	$(function() {
		$("#serForm").on('submit', function(e) {
			var keyword = $("#keyword").val();
			
			var clb_clucode = "CUS0001";
			var keyfield = $("select[name=keyfield]").val();
			var page = "1";
			var pagecount = "10";
			var pagegrp = "1";
			e.preventDefault();
			$.ajax({
				url : '/CluBoard/view/',
				data : {
					keyfield : keyfield,
					keyword : keyword,
					clb_clucode : clb_clucode,
					page : page,
					pagecount : pagecount,
					pagegrp : pagegrp
				},
				type : 'GET',
				dataType : 'json',
				success : function(data) {
					$(".tb_board").empty();
					$(".board-list-paging").empty();
					var tag = '';
					tag += "<table><colgroup><col style='width:10%;'><col style='width:15%;'>";
					tag += "<col style='width:30%;'><col style='width:25%;'>";
					tag += "<col style='width:20%;'></colgroup>";
					tag += "<thead>";
					tag += "<tr>";
					tag += "<th scope='col'>번호</th><th scope='col'>글쓴이</th>";
					tag += "<th scope='col'>제목</th><th scope='col'>날짜</th>";
					tag += "<th scope='col' class='bnon'>조회수</th></tr>";
					tag += "</thead><tbody>";
				$.each(data, function(key, search) {
					console.log("검색 idx"+ search.clb_idx);
					tag += "<tr><td>" + search.clb_idx + "</td>";
					tag += "<td>" + search.clb_writer+ "</td>";
					tag += "<td><a href='/club01/CluBoard/OneView?clb_idx="+search.clb_idx+"&clb_clucode=CUS0001&page=1&pagecount=10&pagegrp=1'>"+ search.clb_title+"<a></td>";
					tag += "<td>" + search.clb_regdate+ "</td>";
					tag += "<td>" + search.clb_count + "</td></tr>"
				});
				
				tag += "</tbody>";
				tag += "</table>";
				$(".tb_board").html(tag);
				pagemaker(keyword, clb_clucode,keyfield, pagecount, pagegrp);},
				error : function(xhr) {
				console.log("Error" + xhr);
				}
			});//ajax 끝 
		})
	})
