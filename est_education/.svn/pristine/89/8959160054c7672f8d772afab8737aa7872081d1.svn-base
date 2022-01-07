<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%  
    request.setCharacterEncoding("UTF-8"); 
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<script>
	
	
	
	
	/* 세션 정보 사용(JavaScript) - 시작 */
	var sessnUsrSq = '${sessionScope.UsrSessnInfo.usrSq}'; //사용자 순번
	var sessnUsrNm = '${sessionScope.UsrSessnInfo.usrNm}'; //사용자 명
	var sessnIsLogin = '${sessionScope.isLogin}'; //사용자 로그인 여부
	/* 세션 정보 사용(JavaScript) - 끝 */

	/* 최초 페이지 로딩 이벤트 - 시작 */
	$(document).ready(function(){
	});
	/* 최초 페이지 로딩 이벤트 - 끝 */
	
	/* 화면 이동 - 시작 */
	function fn_openPageSample() {
		
		var param1 = "sample";
		
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("/comn/openPage.do");
		comSubmit.addParam("param1", param1);
		comSubmit.submit();
	}
	/* 화면 이동 - 끝 */
	


	
	/* ajax 통신(단건 처리) - 시작 */
	function fn_selectSampleOne() {
		
		var param1 = "sample";
		var comAjax = new ComAjax();
		comAjax.setUrl("<c:url value='/sld/sample/selectSampleOne.do' />");//프로그램 URI
		comAjax.addParam("param1", param1);//파라미터 바인딩
		comAjax.addParam("param1", param1);//파라미터 바인딩
		comAjax.addParam("param1", param1);//파라미터 바인딩
		comAjax.setCallback("fn_selectSampleOneCallback");//콜백 선언
		comAjax.ajax();
		
	}	function fn_selectSampleOneCallback(data) { //콜백
		
		var result = data.Output.Average;
		alert(result);
		
	}
	/* ajax 통신(단건 처리) - 끝 */
	
	
	
	
	/* ajax 통신(리스트 형태 처리) - 시작 */
	function fn_selectSampleList() {
		
		comAjax.setUrl("<c:url value='*.do' />");//프로그램 URI
		comAjax.addParam("param1", param1);//파라미터 바인딩
		comAjax.setCallback("fn_selectSampleListCallback");//콜백 선언
		comAjax.ajax();
		
	}	function fn_selectSampleListCallback(data) { //콜백
			var resultList = data.list;
			
			var body = $("#sampleUl");//리스트 형태 처리 Target Div
			body.empty();//Div 초기화
			var bodtStr = "";//동적으로 작성될 태그를 담을 객체
			
			if (resultList.length == 0) {//조회 결과가 없을 경우
				bodtStr = '<li><a href="javascript:void(0);">조회결과가 없습니다.</a></li>';//소스에 맞는 태그로 변경(결과 없음 표시)
				
				body.html(bodtStr).trigger('create');//bodtStr에 태그를 'sampleDiv' 태그 안에 삽입
			} else {
	
				$.each(resultList, function(index, value) {
					bodtStr = '<li><a href="javascript:void(0);">'+ value.usrNm +'</a></li>';//소스에 맞는 태그로 변경(실제 데이터 목록)
				});
			
				console.log(bodtStr);//로그
				body.html(bodtStr).trigger('create');//bodtStr에 태그를 'sampleDiv' 태그 안에 삽입
			}
		}
	/* ajax 통신(리스트 형태 처리) - 끝 */
</script>

</head>
<body>
	<section>
		<div>
			<ul id="sampleUl">
				<li><a href="#">${sessionScope.UsrSessnInfo.usrNm}</a></li> <!-- 세션 정보 사용(Html 태그) -->
				<li><a href="#">나동혁</a></li>
				<li><a href="#">노민희</a></li>
			</ul>
		</div>
	</section>
</body>
</html>