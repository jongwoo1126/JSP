$(function() {
	$('#user > div > a:nth-child(2)').click(function () {
		let isChecked1 = $('input[name=chk1]').is(':checked');
		let isChecked2 = $('input[name=chk2]').is(':checked');
		if(!isChecked1 && !isChecked2){
			alert("사이트 이용약관 및 개인정보 취급방침에 동의하여 주시기 바랍니다.");
			return false;
		}else if(!isChecked1){
			alert("사이트 이용약관에 동의하여 주시기 바랍니다.");
			return false;
		}else if(!isChecked2){
			alert("개인정보 취급방침에 동의하여 주시기 바랍니다.");
			return false;
		}
	});
});