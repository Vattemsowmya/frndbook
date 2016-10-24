<!-- <link href="resources/css/home.css" rel="stylesheet"> -->
<div class="container">
			<div class="modal fade" id="login" role="dialog">
		<div class="modal-dialog modal-sm">
  <div id="main-content">
  <div class="home">
        <div class="home-inner">
            <div class="container">
                <h1>
                    Sign In
                </h1>
            </div>
        </div>
    </div>
<div class="section">
        <div class="container">

					<form action="${pageContext.request.contextPath}/perform_login" method="post" class="form-horizontal">
						<div class="form-group">
                      <label class="col-md-3 control-label">UserName</label>
							<div class="col-md-7">
								<input type="text" class="form-control"
									placeholder="Enter Username" id="username" name="username">
							</div>
							</div>
							<div class="form-group">
								 <label class="col-md-3 control-label">Password</label>
							<div class="col-md-7">
								<input type="password" class="form-control"
									placeholder="Enter Password" id="password" name="password" >
							</div>
						</div>
						<div class="form-group">
                    <div class="col-md-7 col-md-offset-3">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="remember"> Remember Me
                            </label>
                        </div>
                    </div>
                </div>
                	<div class="form-group">
                    <div class="col-md-7 col-md-offset-3">
						<button type="submit" class="btn btn-primary">
							<span class="glyphicon glyphicon-off"></span> Log In
						</button>
						<a class="btn btn-link btn-flat" href="/password/email">Forgot Your Password?</a>
					</div>
					</div>
					</form>
				</div>
			</div>
		</div>
		</div>
		</div>
		</div>
	
<script>
	$(document).ready(function() {
		$("#log").click(function() {
			$("#login").modal();
			});
		});
</script>
