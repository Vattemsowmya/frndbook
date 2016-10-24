<!DOCTYPE html>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html lang="en-US" data-ng-app="Myapp">
<head>
<%@include file="/WEB-INF/includes/Frameworks.jsp"%>
<meta charset="ISO-8859-1">
<title>friendbook</title>
<style>
body {
    
    font-size: 14px;
    line-height: 1.42857143;
    color: black;
    background-color: #ffffff;
}
.container {
    margin-right: auto;
    margin-left: auto;
    padding-left: 15px;
    padding-right: 15px;
}
.home {
    position: relative;
    color: black;
}
.home > .home-inner {
    background-color: #999;
    background-color: rgba(60, 141, 188, 0.3);
    padding: 5px 0;
}

.section {
    padding: 10px 0;
}
.form {
    display: block;
    margin-top: 0em;
}
.form-horizontal .form-group {
    margin-left: -15px;
    margin-right: -15px;
}
.form-horizontal .control-label {
    text-align: middle;
}
.col-md-7 {
    width: 58.33333333%;
}

.form-control {
    box-shadow: none;
    border-radius: 2px;
    border: 2px solid #ccc;
    height: 50px;
    line-height: 20px;
    padding-left: 35px;
}
.col-md-offset-3 {
    margin-left: 25%;
}
.form-horizontal .radio, .form-horizontal .checkbox {
    min-height: 27px;
}
input[type="checkbox"] {
    float: left;
    margin-left: -20px;
}
.btn-primary {
    color: #ffffff;
    background-color: #3c8dbc;
}
.btn {
    display: inline-block;
    margin-bottom: 0;
    cursor: pointer;
    white-space: nowrap;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    border-radius: 4px;
}
.btn.btn-flat {
    box-shadow: none;
}
.control-label[class*="col"] {
    display: block;
    padding-top: 1px;
}
body {
    font-family: "Roboto", "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333333;
    background-color: #ffffff;
}
.navbar.navbar-default {
    margin-bottom: 0;
    border-bottom: 1px solid #eee;
}
.container {
    width: 750px;
}

.container>.navbar-collapse, .container>.navbar-header {
    margin-right: -353px;
    margin-left: -362px;
}
.navbar-toggle {
    position: relative;
    float: right;
    margin-right: 15px;
    padding: 9px 10px;
    margin-top: 13px;
    margin-bottom: 13px;

}
.navbar-default .navbar-header > .navbar-brand {
  
    padding: 5px 10px;
    margin-top: 13px;
    height: auto;
    font-weight: 100;
  
    margin-left: 10px;
}

 </style>
</head>

<!-- <link href="resources/css/home.css" rel="stylesheet"> -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AngularControllers/App.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AngularControllers/Home.js"></script>

<body>
<!-- <body style="background-image: url('resources/images/Social-media-concept.jpg');background-repeat: no-repeat; background-size: cover;"> -->
<nav class="navbar navbar-default navbar-static-top transparent" role="navigation">
			<div class="navbar-header">
            
            <a class="navbar-brand" href="#Home"><b>FRIEND</b> Book</a>
        </div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
				<li class=""><a href="/Home">Home</a></li>
				<li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
					<li><a href="${pageContext.request.contextPath}/forum">Forum</a></li>
					<li><a href="${pageContext.request.contextPath}/chat">Chat</a></li>
				</ul>
						<ul class="nav navbar-nav navbar-right">
					<sec:authorize access="isAuthenticated()">
					<li><a style="color:black">Hello  <b><sec:authentication property="principal.username" /></b></a></li>
						<li><a href="perform_logout"><span
								class="glyphicon glyphicon-log-out">logout</span></a></li>
					</sec:authorize>
					<sec:authorize access="!isAuthenticated()">
					<li><a href="#reg" data-toggle="modal"
							data-target="#registration"> <span
								class="glyphicon glyphicon-user">signup</span>
						</a></li>
						<li><a href="#log" data-toggle="modal"
							data-target="#login"><span
								class="glyphicon glyphicon-log-in">Login</span></a></li>
						
					</sec:authorize>
				</ul>
			</div>	</nav>
	

<c:choose>
		<c:when test="${BlogClicked}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/Blog.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${IndividualBlog}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/IndividualBlog.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${ForumClicked}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/Forum.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${IndividualForum}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/IndividualForum.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${ChatClicked}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/Chat.jsp">
				</c:import>
			</div>
		</c:when>
		<c:otherwise>
			<sec:authorize access="hasRole('ROLE_USER')">
				<div class="container-fluid">
					<c:import url="/WEB-INF/jsp/Body.jsp">
					</c:import>
				</div>
			</sec:authorize>
			</c:otherwise>
		
	</c:choose>
<br><br>	
<Footer><%@include file="/WEB-INF/includes/Foot.jsp"%></Footer>
	<script type="text/javascript">
		$(document).ready(function() {
			if (window.location.href.indexOf('#login') != -1) {
				$('#login').modal('show');
			}
		});
	</script>
		
<!-- <script>
	$(document).ready(function() {
		$("#log").click(function() {
			$("#login").modal();
			});
		});
</script> -->
<script>
	$(document).ready(function() {
		$("#reg").click(function() {
			$("#registration").modal();
		});
	});
</script>

	<script src="${pageContext.request.contextPath}/resources/js/AngularControllers/Home.js"></script>
	<div><%@include file="/WEB-INF/includes/ModalRegistration.jsp"%></div>
	<div><%@include file="/WEB-INF/includes/ModalLogin.jsp"%></div>


</body>
</html>