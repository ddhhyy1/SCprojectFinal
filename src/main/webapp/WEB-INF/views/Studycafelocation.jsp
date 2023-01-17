<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/board.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
<!-- bootstrap JS -->
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>   
<!-- bootstrap CSS -->
<link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
<title>매장 위치</title>
</head>
<body>
<%@ include file="include/header.jsp" %>
	<center>
	<table width="35%" border="0" cellspacing="0" cellpadding="20">
	<div class="card text-bg-dark">
	<img src="${pageContext.request.contextPath} /resources/img/08.PNG" class="card-img" alt="...">
        <div class="card-img-overlay">
             <h1 class="card-title">STUDY CAFE</h1>
          <p class="card-text">This is made by Nangcho_Team</p>   
        </div>
      </div>
      <br><br><br><br>
      <div class = "l">
      경복궁역에서 6분거리에 위치하고 있으며,<br>
      98평대 넓은 공간을 짜임새 있게 구성하여 최적의 학습환경을 구축하였습니다.<br><br>
	  2400석의 넉넉한 좌석과, 스터디모임용 테이블룸,<br>
	  1인용 개인실, 그리고 쾌적한 휴게실까지 모두 무료로 제공합니다.
      </div>
      <br>
      
      </table>
      <div>
      <img src="${pageContext.request.contextPath} /resources/img/010.PNG" class="img01" alt="...">&nbsp;&nbsp;&nbsp;
      <img src="${pageContext.request.contextPath} /resources/img/011.PNG" class="img01" alt="...">&nbsp;&nbsp;&nbsp;
      <img src="${pageContext.request.contextPath} /resources/img/012.PNG" class="img01" alt="...">
      </div>
      <br><br>
      <div>
      <img src="${pageContext.request.contextPath} /resources/img/09.PNG" class="img02" alt="..." >
      </div>
      </table>
      </center>
<%@ include file="include/footer.jsp" %>
</body>
</html>