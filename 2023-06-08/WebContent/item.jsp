<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<table border="0" class="tb edit" style="width:100%" align="center">
	<tr>
		<td class="right" colspan="4">
			<a href="#" class="btn sfn">�����߰�</a>
			<a href="javascript:GetItemList();" class="btn sfnp">���ΰ�ħ</a>
		</td>
	</tr>
	<tr>
		<th style="width:80px">�����ڵ�</th>
		<th>�����</th>						
		<th style="width:80px">����</th>
		<th style="width:140px">ó��</th>
	</tr>
	<%
	for(int i=1; i < 5; i++)
	{
		%>
		<tr>
			<td>005930</td>
			<td class="left">�Ｚ����</td>
			<td><span class="status_able">�м����</span></td>
			<td>
				<a class="btn tbin tfc" href="javascript:GetItemDetail('005930');">��ȸ</a>
				<a class="btn tbin tfg" href="#">����</a>
			</td>							
		</tr>
		<%
		i++;
		%>
		<tr>
			<td>005931</td>
			<td class="left">�����ڵ���</td>
			<td><span class="status_ableg">�м�����</span></td>
			<td>
				<a class="btn tbin tfc" href="javascript:GetItemDetail('005930');">��ȸ</a>
				<a class="btn tbin tfg" href="#">����</a>
			</td>							
		</tr>
		<%
		i++;
		%>
		<tr>
			<td>005931</td>
			<td class="left">�����ڵ���</td>
			<td><span class="status_ableb">�м��Ϸ�</span></td>
			<td>
				<a class="btn tbin tfc" href="javascript:GetItemDetail('005930');">��ȸ</a>
				<a class="btn tbin tfg" href="#">����</a>
			</td>							
		</tr>						
		<%						
	}%>
</table>