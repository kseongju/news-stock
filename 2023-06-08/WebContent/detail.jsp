<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String code = request.getParameter("code");

%>
<table border="0" class="tb" style="width:100%" align="center">
	<tr>
		<td colspan="2" class="right">����ð� : <strong><span id="curTime"></span></strong></td>
	</tr>				
	<tr>
		<th style="width:150px">�����</th>
		<td class="left">�Ｚ���� (005930)</td>
	</tr>
	<tr>
		<th>���簡</th>
		<td class="left">70,500
		&nbsp;&nbsp;&nbsp;
		<div class="btn_group">
			<a class="btn tbin tfc" href="https://finance.naver.com/item/sise.naver?code=005930" target="_blank">�ü� ��ȸ(��â)</a>
		</div>						
		</td>
	</tr>
	<tr>
		<th>�м�����</th>
		<td class="left"><span class="status_ableb">�м��Ϸ�</span></td>
	</tr>
	<tr>
		<th rowspan="2">�м����</td>
		<td class="left">���� : 70%, ���� : 30%</td>
	</tr>				
	<tr>
		<td class="left"><span style="color:#ff6600">�ش� ������ ��� ���ɼ��� �����ϴ�.</span></td>
	</tr>
	<tr>
		<td align="center" colspan="2">
			<h4>[ ��/���� ���� ���� ]</h4>
			<br>
			<img src="./images/bc.png">
		</td>
	</tr>											
	<tr>
		<td colspan="2">
			<h4>���� ���� (����)
				<div class="btn_group">
					<a href="#" class="btn tbin tfc">������ +</a>
				</div>
			</h4>							
			<div style="height:20px"></div>
			<table border="0" class="tb_in" style="width:100%" align="center">
				<tr>
					<th style="width:50px">��ȣ</th>
					<th>����</th>
					<th style="width:150px">��¥</th>
					<th style="width:70px">����Ȯ��</th>
					<td rowspan="10"><img src="./images/wc.png" style="width:200px;height:200px;"></td>
				</tr>							
				<%
				for(int i = 1; i <= 5; i++)
				{
					%>
					<tr>
						<td class="center"><%= i %></td>
						<td>[Ư¡��]�Ｚ����, 3�ŷ��� ���� ...</td>
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
			<h4>���� ���� (����)
				<div class="btn_group">
					<a href="#" class="btn tbin tfc">������ +</a>
				</div>
			</h4>
			<div style="height:20px"></div>
			<table border="0" class="tb_in" style="width:100%" align="center">
				<tr>
					<th style="width:50px">��ȣ</th>
					<th>����</th>
					<th style="width:150px">��¥</th>
					<th style="width:70px">����Ȯ��</th>
					<td rowspan="10"><img src="./images/wc.png" style="width:200px;height:200px;"></td>
				</tr>							
				<%
				for(int i = 1; i <= 5; i++)
				{
					%>
					<tr>
						<td class="center"><%= i %></td>
						<td>[Ư¡��]�Ｚ����, 3�ŷ��� ���� ...</td>
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