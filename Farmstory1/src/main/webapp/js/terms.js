/**
 *  약관 동의 체크
 */
$(function () {
	
	$('.terms > div >  a:eq(1)').click(function () {
		
		let ischecked1 = $('input[name=chk1]').is(':checked');
		let ischecked2 = $('input[name=chk2]').is(':checked');
		
		if(!ischecked1){
			alert('이용약관에 동의 체크를 하셔야합니다.');
			return false;
		}else if(!ischecked2){
			alert('개인정보 취급방침에 동의 체크를 하셔야합니다.');
			return false;
		}else{
			return true;
		}
		
	});
	
});