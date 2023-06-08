<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<table border="0" class="tb edit" style="width:100%" align="center">
	<tr>
		<td class="right" colspan="4">
			<a href="#" class="btn sfn">종목추가</a>
			<a href="javascript:GetItemList();" class="btn sfnp">새로고침</a>
		</td>
	</tr>
	<tr>
		<th style="width:80px">종목코드</th>
		<th>종목명</th>						
		<th style="width:80px">상태</th>
		<th style="width:140px">처리</th>
	</tr>
	<%
	for(int i=1; i < 5; i++)
	{
		%>
		<tr>
			<td>005930</td>
			<td class="left">삼성전자</td>
			<td><span class="status_able">분석대기</span></td>
			<td>
				<a class="btn tbin tfc" href="javascript:GetItemDetail('005930');">조회</a>
				<a class="btn tbin tfg" href="#">삭제</a>
			</td>							
		</tr>
		<%
		i++;
		%>
		<tr>
			<td>005931</td>
			<td class="left">현대자동차</td>
			<td><span class="status_ableg">분석진행</span></td>
			<td>
				<a class="btn tbin tfc" href="javascript:GetItemDetail('005930');">조회</a>
				<a class="btn tbin tfg" href="#">삭제</a>
			</td>							
		</tr>
		<%
		i++;
		%>
		<tr>
			<td>005931</td>
			<td class="left">현대자동차</td>
			<td><span class="status_ableb">분석완료</span></td>
			<td>
				<a class="btn tbin tfc" href="javascript:GetItemDetail('005930');">조회</a>
				<a class="btn tbin tfg" href="#">삭제</a>
			</td>							
		</tr>						
		<%						
	}%>
</table>