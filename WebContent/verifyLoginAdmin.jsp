<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
</head>
<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%

Integer type = (Integer)session.getAttribute("type");
if(type == null || type != 1){
	response.sendRedirect("index.jsp?Error=-4");
	return;
}

%>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="manage_schools.jsp">Choose My College</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="manage_users.jsp">Manage Users</a></li>
      <li><a href="manage_schools.jsp">Manage Schools</a></li>
      <li><a href="https://www.customink.com/designs/nullpm/hat0-00az-vnfq/share?pc=EMAIL-40778&utm_campaign=shared%20design&utm_source=share%20link&utm_medium=shared%20design&utm_content=shared%20desktop">eCommerce</a></li>
    </ul>
     <ul class="nav navbar-nav navbar-right">
      <li><a href="profile_admin.jsp"><span class="glyphicon glyphicon-user"></span> My Profile</a></li>
      <li><a href="logout_action.jsp"><span class="glyphicon glyphicon-log-in"></span> Log-Out</a></li>
    </ul>
  </div>
</nav>