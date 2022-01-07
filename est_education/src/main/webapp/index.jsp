<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/comn/component/include-header.jspf" %>

<script>

	$(document).ready(function(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='/erp/sample/openSamplePage.do' />");
		comSubmit.submit();
	});
	
</script>
</head>
<body>
	
	<%@ include file="/WEB-INF/jsp/comn/component/include-body.jspf" %>
</body>
</html>