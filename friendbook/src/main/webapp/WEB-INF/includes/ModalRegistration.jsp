<!-- <link href="resources/css/home.css" rel="stylesheet"> -->
<div class="container">
<div class="modal fade" id="registration" role="dialog">
<div class="modal-dialog modal-sm">
  <div id="main-content">
<div class="home">
        <div class="home-inner">
            <div class="container">
                <h1>
                    Sign Up
                </h1>
            </div>
        </div>
    </div>
<div class="section">
        <div class="container">

					<form role="form" data-ng-submit="submit()"
						data-ng-controller="RegController" method="post" class="form-horizontal">
						<div class="form-group">
						<label class="col-md-3 control-label">Name</label>
							<div class="col-md-7">
								<input type="text" class="form-control" placeholder="Name"
									data-ng-model="name">
							</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">UserName</label>
							<div class="col-md-7">
								<input type="text" class="form-control" placeholder="Username"
									data-ng-model="username">
							</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Password</label>
							<div class="col-md-7">
								<input type="password" class="form-control"
									placeholder="Password" data-ng-model="password">
							</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Confirm Password</label>
							<div class="col-md-7">
								<input type="password" class="form-control"
									data-ng-model="Confirm_Password"
									placeholder="Re Enter Password">
							</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Email</label>
							<div class="col-md-7">
								<input type="email" class="form-control" placeholder="Email"
									data-ng-model="email">
							</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label">Mobile</label>
							<div class="col-md-7">
								<input type="text" class="form-control"
									placeholder="Mobile Number" data-ng-model="mobile">
							</div>
							</div>
							<div class="form-group">
							 <div class="col-md-7 col-md-offset-3">
								<label class="radio-inline"> <input type="radio"
									name="optradio" value="Male" data-ng-model="gender">Male
								</label> <label class="radio-inline"> <input type="radio"
									value="Female" name="optradio" data-ng-model="gender">Female
								</label>
							</div></div>
							<div class="form-group">
                            <div class="col-md-7 col-md-offset-3">
						<p>By clicking Create an account, you agree to our Terms and
							that you have read our Data Policy, including our Cookie Use.</p></div></div>
						<div class="form-group">
                    <div class="col-md-7 col-md-offset-3">
						<button type="submit" class="btn btn-primary">
							<span class="glyphicon glyphicon-off"></span> Register
						</button>
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
		$("#reg").click(function() {
			$("#registration").modal();
		});
	});
</script>
