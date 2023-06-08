<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�ְ����� ����</title>
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
		
		//ȭ�鿡 �ð��� ǥ���Ѵ�.
		function ShowTime()
		{
			const date = new Date();
			curTime = date.toLocaleString("ko-kr");
			$("#curTime").html(curTime);
		}
		
		//���� ����� �ҷ��´�.
		function GetItemList()
		{
			$.ajax({
				type : "get",
				url: "item.jsp",
				dataType: "html",
				success : function(data) 
				{	
					// ����� ���������� �̷�������� �� �Լ��� Ÿ�Եȴ�.
					$("#itemList").html(data);
				},
				complete : function(data) 
				{	
					// ����� �����ϰų� �����߾ �� �Լ��� Ÿ�Եȴ�.
				},
				error : function(xhr, status, error) 
				{
					// ��� ���� �߻���	
				}
			});				
		}
		
		//��ȸ ��ư Ŭ��
		function GetItemDetail(code)
		{
			$.ajax({
				type : "get",
				url: "detail.jsp?code=" + code,
				dataType: "html",
				success : function(data) 
				{	
					// ����� ���������� �̷�������� �� �Լ��� Ÿ�Եȴ�.
					$("#itemDetail").html(data);
				},
				complete : function(data) 
				{	
					// ����� �����ϰų� �����߾ �� �Լ��� Ÿ�Եȴ�.
				},
				error : function(xhr, status, error) 
				{
					// ��� ���� �߻���	
				}
			});			
		}
	</script>
	<table border="0" style="width:1300px" align="center">
		<tr>
			<td colspan="2"  style="height:80px" align="center">
				<h2>�ְ����� ������ ���� ���� ������ ���ǴϾ��̴� ��</h2> 
			</td>
		</tr>
		<tr>
			<td width="500px" valign="top" id="itemList">
			���� ����� �غ����Դϴ�. ��ø� ��ٷ� �ּ���.
			</td>
			<td valign="top" id="itemDetail">
				<table border="0" class="tb" style="width:100%" align="center">
					<tr>
						<td colspan="2" class="right">����ð� : <strong><span id="curTime"></span></strong></td>
					</tr>
					<tr>
						<td colspan="2" style="height:400px">
							������ ��Ͽ��� ������ �����ϸ� �ش� ���� ���� �ְ����� ������ ���� ������ ǥ�õ˴ϴ�.
						</td>
					</tr>
				</table>		
			
			</td>
		</tr>
	</table>
	<br><br><br>
	</body>
</html>