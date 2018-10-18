/**
 * Div , b , input tag Making
 */

function makingDiv(){

	var res02 = document.getElementsByClassName('res02');

	var arr = [36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55
		,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75
		];
 	for (var i = 0; i < arr.length; i++) {
		var mak = document.createElement('div');
		mak.setAttribute('class', 'mak')
		mak.setAttribute('name', arr[i]);
		res02[0].append(mak);
	} 
	
}
	
function makingBtag(){

	var mak = document.getElementsByClassName('mak');

	function studyRoom(){
		var mak = document.getElementsByClassName('mak');

		var arr = [36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55
			,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75
			];

		for (var i = 0; i < arr.length; i++) {
			var bmak = document.createElement('b');
			bmak.setAttribute('class', 'SEAT' );
			/*SEAT0*/
			var text = document.createTextNode(arr[i]);
			bmak.append(text);
			mak[i].append(bmak);
			var inputs = document.createElement('input');
			inputs.setAttribute('type', 'hidden');
			inputs.setAttribute('name', 'AREA_CODE');
			inputs.setAttribute('value', 'CAT0020');
			mak[i].append(inputs);
		}
	}
	

	studyRoom();
	
}

/* popup 열리는 함수 */
function popOpen(bof){

			var d = new Date();
		
			bof.setAttribute('style', 'background-color: green;');
			var input_arcode = bof.childNodes[1].value; 
			
			var firstdate = d.getFullYear() + '/' + (d.getMonth() + 1)
					+ '/' + d.getDate();

			var sedate = d.getHours();
			var btag = document.getElementsByClassName('SEAT');
			var dataVal = bof.childNodes[0].textContent;
			
			var popupX = ((window.screen.width / 2) - (200 / 2));
			var popupY= ((window.screen.height /2) - (300 / 2));
			
			selectedObj = bof;

			window.open('/reserve/detail?seat_code='+dataVal+'&firstdate='+firstdate+'&sedate='+sedate +'&area_code='+input_arcode, 'joinClub', 'status=no, height=450, width=400, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY); 

}



