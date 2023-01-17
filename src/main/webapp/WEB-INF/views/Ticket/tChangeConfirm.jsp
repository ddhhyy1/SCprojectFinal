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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/ticketPayTimeCheck.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/ticketPayTimeCheck2.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/seatTable.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/ticketView.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
<!-- bootstrap JS -->
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>   
<!-- bootstrap CSS -->
<link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
<title>예약변경 확인 후 결제</title>
<style>
span.changeInfo{
	font-family: malgun;
	font-size: 20px;
	font-weight: bold;
	color: #3300CC;	
}

span.changeInfo2{
	font-family: malgun;
	font-size: 20px;
	font-weight: bold;
	color: #ff0033;	
}

</style>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<%-- <%@ String[] selectedTimes=request.getParameterValues("selectedTime"); %> --%>
<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
		<table width="35%" border="0" cellspacing="0" cellpadding="20">
		<div class="card text-bg-dark">
  			<img src="${pageContext.request.contextPath} /resources/img/Cafe6.jpg" class="card-img" alt="...">
  		<div class="card-img-overlay">
   			 <h1 class="card-title">STUDY CAFE</h1>
    		<p class="card-text">This is made by Nangcho_Team</p>   
  		</div>
		</div>
			<td>
				<center>
				<form action="tChangeTimeComplete">
				<table class="table" width="200" text-align="center">
  											<thead>
    											<tr colspan="2">
      												<th scope="col" colspan="2"><div align="center" >
      												<h3>내 예약 정보</h3></div></th>
    											</tr>
  											</thead>
  											<tbody class="table-group-divider">
    											<tr>
      												<th scope="row"> <span class="content_text01">아이디 :</span></th>
      												<td> <span class="content_text01"><%= sessionId %></span></td>
  											    </tr>
    											<tr>
      												<th scope="row"> <span class="content_text01">이용날짜 : </span></th>
													<td> <span class="content_text01">${sDto.selectedDate}</span>
													<img src="${pageContext.request.contextPath} /resources/img/arrow4.png">
													 <span class="changeInfo">${selectedDate}</span></td>
    											<tr>																
														<th scope="row"><span class="content_text01">지정좌석 : </span></th>
														<td><span class="content_text01">${sDto.seatNo}번 좌석 </span>
														<img src="${pageContext.request.contextPath} /resources/img/arrow4.png">
														 <span class="changeInfo">${seatNo}번 좌석</span></td>
    											</tr>
    											<tr>
      												<th scope="row"><span class="content_text01">이용시간 : </span>
													<td><span class="content_text01">${sDto.ticketName}시간 </span>
													<img src="${pageContext.request.contextPath} /resources/img/arrow4.png">
													<span class="changeInfo">${ticketName}시간</span></td>
    											</tr>
    											<tr>
      												<th scope="row"><span class="content_text01">지정한 시간대 : </span>
													<td><span class="content_text01">${sDto.startTime}:00 ~ ${sDto.endTime}:00</span>
													<img src="${pageContext.request.contextPath} /resources/img/arrow4.png">
													 <span class="changeInfo">${startTime}:00 ~ ${endTime}:00</span></td>
    											</tr>
    											<c:choose>
													<c:when test="${result > 0}">
														<tr>
															<th scope="row"><span class="content_text01">환불될 포인트 : </span></th>
											 				<td><span class="changeInfo2">${returnPoint}p</span></td>
											 			</tr>
											 				<tr class="seatTblTrReserved">
															<th scope="row"><span class="content_text01">변경 후 보유포인트 : </span></th>
											 				<td><span class="content_text01">${finalPoint}p</span></td>
														</tr>
													 </c:when>
													 <c:when test="${result == 0}">
														<tr>
															<th scope="row"><span class="content_text01">포인트 변동 없음</span></th>
															
											 			</tr>
													 </c:when>
													 <c:otherwise>
											 			<tr class="seatTblTrReserved">
															<th scope="row"><span class="content_text01">추가 지불 포인트 :</span></th>
											 				<td><span class="changeInfo2">${returnPoint}p</span></td>
														</tr>
														<tr class="seatTblTrReserved">
															<th scope="row"><span class="content_text01">변경 후 보유포인트 :</span></th>
											 				<td><span class="content_text01">${finalPoint}p</span></td>
														</tr>
													
													</c:otherwise>
										</c:choose>	
  												</tbody>
												</table>				
				
									
										<input type="hidden" name = "selectedDate" value="${selectedDate}">
										<input type="hidden" name = "seatNo" value="${seatNo}">
										<input type="hidden" name = "ticketName" value="${ticketName}">
										<input type="hidden" name = "startTime" value="${startTime}">
										<input type="hidden" name = "endTime" value="${endTime}">
										<input type="hidden" name = "tempNo" value="${tempNo}">
										<input type="hidden" name = "finalPoint" value="${finalPoint}"> 
										<input type="hidden" name = "newPoint" value="${newPoint}">
										
									<tr>
										<td colspan="2" align="center">
											<input class="button_type01" type="submit" value="변경 완료" >&nbsp;&nbsp;
											<input class="button_type01" type="button" value="뒤로" onclick="window.history.back() ">
										</td>
									</tr>
												
							</table>
							</form>
							</center>							
						</td>						
					</tr>
					
				</table>
				</center>			
			</td>
		</tr>
	</table>
	</center>
<%@ include file="../include/footer.jsp" %>
</body>
</html>