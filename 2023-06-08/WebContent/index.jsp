<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>주가지수 예측</title>
		<link rel="stylesheet" href="./css/stock.css" charset="utf-8">
		<link rel="stylesheet" href="./css/jquery-ui.css">
		<script language="javascript" src="./js/jquery-3.6.0.js"></script>
		<script language="javascript" src="./js/jquery-ui.js"></script>	
	</head>
	<body>
	<script>
		window.onload = function()
		{
			GetItemList();
			
			ShowTime();
			setInterval(() => ShowTime(), 500);
		}
		
		//화면에 시간을 표시한다.
		function ShowTime()
		{
			const date = new Date();
			curTime = date.toLocaleString("ko-kr");
			$("#curTime").html(curTime);
		}
		
		//종목 목록을 불러온다.
		function GetItemList()
		{
			$.ajax({
				type : "get",
				url: "item.jsp",
				dataType: "html",
				success : function(data) 
				{	
					// 통신이 성공적으로 이루어졌을때 이 함수를 타게된다.
					$("#itemList").html(data);
				},
				complete : function(data) 
				{	
					// 통신이 성공하거나 실패했어도 이 함수를 타게된다.
				},
				error : function(xhr, status, error) 
				{
					// 통신 오류 발생시	
				}
			});				
		}
		
		//조회 버튼 클릭
		function GetItemDetail(code)
		{
			$.ajax({
				type : "get",
				url: "detail.jsp?code=" + code,
				dataType: "html",
				success : function(data) 
				{	
					// 통신이 성공적으로 이루어졌을때 이 함수를 타게된다.
					$("#itemDetail").html(data);
				},
				complete : function(data) 
				{	
					// 통신이 성공하거나 실패했어도 이 함수를 타게된다.
				},
				error : function(xhr, status, error) 
				{
					// 통신 오류 발생시	
				}
			});			
		}
	</script>
	<table border="0" style="width:1300px" align="center">
		<tr>
			<td colspan="2"  style="height:80px" align="center">
				<h2>주가지수 예측을 위한 뉴스 빅데이터 오피니언마이닝 모델</h2> 
			</td>
		</tr>
		<tr>
			<td width="500px" valign="top" id="itemList">
			종목 목록을 준비중입니다. 잠시만 기다려 주세요.
			</td>
			<td valign="top" id="itemDetail">
				<table border="0" class="tb" style="width:100%" align="center">
					<tr>
						<td colspan="2" class="right">현재시간 : <strong><span id="curTime"></span></strong></td>
					</tr>
					<tr>
						<td colspan="2" style="height:400px">
							왼쪽의 목록에서 종목을 선택하면 해당 종목에 대한 주가지수 예측을 위한 정보가 표시됩니다.
						</td>
					</tr>
				</table>		
			
			</td>
		</tr>
	</table>
	<br><br><br>
	</body>
</html>