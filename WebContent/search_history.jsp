<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>

<html>
<head>
<title>Search</title>
<%@include file="verifyLoginUser.jsp"%>
<%
	UserInterface uc = (UserInterface) session.getAttribute("loggedIn");
%>
<div class="container">
					
	<table class="table table-bordered table-striped">
		<tbody>
			<tr>
				<th colspan="3" class="text-center" style="vertical-align: top;">Previous Searches</th>
			</tr>
			<%
				for (int i = uc.viewSearches().size()-1;i >= 0;i--) {
			%>
			<tr>
				<td style="vertical-align: top;">
					<form method="post" action="search_history_action.jsp" name="Search">
						<input class="btn btn-success" name="Search" value="Search" type="submit"> <input
							name="searchID" value="<%=i%>" type="hidden">
					</form>
				</td>
				
				<td style="vertical-align: top;"> <%out.print(uc.viewSearches().get(i).getParameters()); %></td>
				
			</tr>
			<% } %>
		</tbody>
	</table>
</div>
</body>
</html>