/**
 * Div , b , input tag Making
 */

function makingDiv(){
	
	var res01 = document.getElementsByClassName('res01');
	var res03 = document.getElementsByClassName('res03');
	var res04 = document.getElementsByClassName('res04');
	var res05 = document.getElementsByClassName('res05');
	var res06 = document.getElementsByClassName('res06');
	
	/* 인터넷 */
	var arr =  [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23]; 
	for (var i = 0; i <arr.length ; i++) {
		var inter = document.createElement('div');
		inter.setAttribute('class', 'inter');
		inter.setAttribute('name', arr[i]);
		res01[0].append(inter);
	}

	var mak = document.createElement('div'); 
	mak.setAttribute('class', 'bof')
	mak.setAttribute('name', '24');
	res03[0].append(mak);
	
	var mak = document.createElement('div'); 
	mak.setAttribute('class', 'scanner')
	mak.setAttribute('name', '25');
	res04[0].append(mak);
	
	var arr = [26,27,28,29,30]
	for (var i = 0; i <arr.length; i++) {
		var mak = document.createElement('div');
		mak.setAttribute('class', 'dvd')
		mak.setAttribute('name', arr[i]);
		res05[0].append(mak);
	}
	
	var arr = [31,32,33,34,35];
	for (var i = 0; i < arr.length; i++) {
		var mak = document.createElement('div');
		mak.setAttribute('class', 'note')
		mak.setAttribute('name', arr[i]);
		res06[0].append(mak);
	}
	
}
	
function makingBtag(){
	var inter = document.getElementsByClassName('inter');
	var bof   = document.getElementsByClassName('bof');
	var scanner = document.getElementsByClassName('scanner');
	var dvd = document.getElementsByClassName('dvd');
	var mak = document.getElementsByClassName('mak');
	
	/* 인터넷 bTag 23 */
	function makbProcess(){
	
		var arr =  [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23]; 
		var text;
		for (var i = 0; i < arr.length; i++) {
			var bmak = document.createElement('b');
			bmak.setAttribute('class', 'SEAT');
		 	if (i >= 0 && i < 9) {
				text = document.createTextNode(arr[i])
				bmak.append(text);
			} else {
				if (i >= 9) {
					text = document.createTextNode(arr[i]);
					bmak.append(text);
				}
			} 
			console.log(i);
			inter[i].appendChild(bmak);
			var inputs = document.createElement('input');
			inputs.setAttribute('type', 'hidden');
			inputs.setAttribute('name', 'AREA_CODE');
			inputs.setAttribute('value', 'CAT0025');
			
			inter[i].append(inputs);
		
		}
	} 
	 	
	function prefixTag(){
		var bmak = document.createElement('b');
		bmak.setAttribute('class', 'SEAT' );
		var text = document.createTextNode('24')
		bmak.append(text);
		bof[0].append(bmak);
		
		var inputs = document.createElement('input');
		inputs.setAttribute('type', 'hidden');
		inputs.setAttribute('name', 'AREA_CODE');
		inputs.setAttribute('value', 'CAT0026');
		bof[0].append(inputs);

		
		
		var bmaks = document.createElement('b');
		bmaks.setAttribute('class', 'SEAT' );
		var text = document.createTextNode('25')
		bmaks.append(text);
		scanner[0].append(bmaks);
		var inputs = document.createElement('input');
		inputs.setAttribute('type', 'hidden');
		inputs.setAttribute('name', 'AREA_CODE');
		inputs.setAttribute('value', 'CAT0027');
		scanner[0].append(inputs);

		
	}
	
 function DvdNote(){
	 var dvd = document.getElementsByClassName('dvd');
	var arr = [26,27,28,29,30];
	for (var i = 0; i < arr.length; i++) {
 		var bmak = document.createElement('b');
		bmak.setAttribute('class', 'SEAT');
		var text = document.createTextNode(arr[i])
		bmak.append(text);
		dvd[i].append(bmak);
		var inputs = document.createElement('input');
		inputs.setAttribute('type', 'hidden');
		inputs.setAttribute('name', 'AREA_CODE');
		inputs.setAttribute('value', 'CAT0028');
		dvd[i].append(inputs);
		
	} 
}
 
 function NotebTag(){

		 var note = document.getElementsByClassName('note');
		 var arr = [31,32,33,34,35];
		for (var i = 0; i < arr.length; i++) {
	 		var bmak = document.createElement('b');
			bmak.setAttribute('class', 'SEAT');
			var text = document.createTextNode(arr[i])
			bmak.append(text);
			note[i].append(bmak);
			var inputs = document.createElement('input');
			inputs.setAttribute('type', 'hidden');
			inputs.setAttribute('name', 'AREA_CODE');
			inputs.setAttribute('value', 'CAT0029');
			note[i].append(inputs);
			
		} 
	}
 


	makbProcess();
	DvdNote();
	NotebTag();
	prefixTag();
	
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



