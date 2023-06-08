<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String code = request.getParameter("code");

%>
<table border="0" class="tb" style="width:100%" align="center">
	<tr>
		<td colspan="2" class="right">현재시간 : <strong><span id="curTime"></span></strong></td>
	</tr>				
	<tr>
		<th style="width:150px">종목명</th>
		<td class="left">삼성전자 (005930)</td>
	</tr>
	<tr>
		<th>현재가</th>
		<td class="left">70,500
		&nbsp;&nbsp;&nbsp;
		<div class="btn_group">
			<a class="btn tbin tfc" href="https://finance.naver.com/item/sise.naver?code=005930" target="_blank">시세 조회(새창)</a>
		</div>						
		</td>
	</tr>
	<tr>
		<th>분석상태</th>
		<td class="left"><span class="status_ableb">분석완료</span></td>
	</tr>
	<tr>
		<th rowspan="2">분석결과</td>
		<td class="left">긍정 : 70%, 부정 : 30%</td>
	</tr>				
	<tr>
		<td class="left"><span style="color:#ff6600">해당 종목은 상승 가능성이 높습니다.</span></td>
	</tr>
	<tr>
		<td align="center" colspan="2">
			<h4>[ 긍/부정 뉴스 추이 ]</h4>
			<br>
			<img src="./images/bc.png">
		</td>
	</tr>											
	<tr>
		<td colspan="2">
			<h4>관련 뉴스 (긍정)
				<div class="btn_group">
					<a href="#" class="btn tbin tfc">더보기 +</a>
				</div>
			</h4>							
			<div style="height:20px"></div>
			<table border="0" class="tb_in" style="width:100%" align="center">
				<tr>
					<th style="width:50px">번호</th>
					<th>제목</th>
					<th style="width:150px">날짜</th>
					<th style="width:70px">긍정확률</th>
					<td rowspan="10"><img src="./images/wc.png" style="width:200px;height:200px;"></td>
				</tr>							
				<%
				for(int i = 1; i <= 5; i++)
				{
					%>
					<tr>
						<td class="center"><%= i %></td>
						<td>[특징주]삼성전자, 3거래일 연속 ...</td>
						<td class="center">2023.06.08 10:12</td>
						<td class="right">98%</td>
					</tr>
					<%
				}
				%>
			</table>							
		</td>
	</tr>	
	<tr>
		<td colspan="2">
			<h4>관련 뉴스 (부정)
				<div class="btn_group">
					<a href="#" class="btn tbin tfc">더보기 +</a>
				</div>
			</h4>
			<div style="height:20px"></div>
			<table border="0" class="tb_in" style="width:100%" align="center">
				<tr>
					<th style="width:50px">번호</th>
					<th>제목</th>
					<th style="width:150px">날짜</th>
					<th style="width:70px">부정확률</th>
					<td rowspan="10"><img src="./images/wc.png" style="width:200px;height:200px;"></td>
				</tr>							
				<%
				for(int i = 1; i <= 5; i++)
				{
					%>
					<tr>
						<td class="center"><%= i %></td>
						<td>[특징주]삼성전자, 3거래일 연속 ...</td>
						<td class="center">2023.06.08 10:12</td>
						<td class="right">98%</td>
					</tr>
					<%
				}
				%>
			</table>							
		</td>
	</tr>																													
</table>