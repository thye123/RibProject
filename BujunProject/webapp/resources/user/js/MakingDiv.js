/**
 * Div , b , input tag Making
 */

function makingDiv() {

	var res02 = document.getElementById('res02');

	var arr = [ 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51,
			52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68,
			69, 70, 71, 72, 73, 74, 75 ];
	for (var i = 0; i < arr.length; i++) {
		var mak = document.createElement('a');
		mak.setAttribute('href', "javascript:wrapWindowByMask(" + arr[i] + ")");
		// mak.setAttribute('onclick',
		// "javascript:wrapWindowByMask("+arr[i]+")");
		mak.setAttribute('class', 'mak');
		mak.setAttribute('name', arr[i]);
		res02.appendChild(mak);
	}

}

function makingBtag() {

	var mak = document.getElementsByClassName('mak');

	function studyRoom() {
		var mak = document.getElementsByClassName('mak');

		var arr = [ 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
				51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66,
				67, 68, 69, 70, 71, 72, 73, 74, 75 ];

		for (var i = 0; i < arr.length; i++) {
			var bmak = document.createElement('b');
			bmak.setAttribute('class', 'SEAT');

			/* SEAT0 */
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
