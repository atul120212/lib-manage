<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TestGridView.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdminLTE 3 | Log in (v2)</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="\Assets\cdn\adminlte.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="\Assets\plugins\fontawesome-free\css\all.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="C:\Users\Atul_33008400\documents\visual studio 2013\Projects\TestGridView\TestGridView\Assets\plugins\icheck-bootstrap\icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="C:\Users\Atul_33008400\documents\visual studio 2013\Projects\TestGridView\TestGridView\Assets\css\adminlte.min.css">
</head>
<body class="hold-transition login-page">

    <form id="form1" runat="server">
        <div class="login-box">
            <!-- /.login-logo -->
            <div class="card card-outline card-primary">
                <div class="card-header text-center">
                    <a href="C:\Users\Atul_33008400\Downloads\AdminLTE-3.2.0-rc\AdminLTE-3.2.0-rc\index2.html" class="h1"><b>Log</b>In</a>
                </div>
                <div class="card-body">
                    <p class="login-box-msg">Sign in to start your session</p>

                    <%--<form action="../../index3.html" method="post">--%>
                    <div class="input-group mb-3">
                        <asp:TextBox runat="server" ID="username" type="text" class="form-control" placeholder="Email"> </asp:TextBox>
                        <%--<input type="email" ID="username" class="form-control" placeholder="Email">--%>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <asp:TextBox runat="server" ID="password" type="password" class="form-control" placeholder="Password"> </asp:TextBox>
                        <%--<input type="password" ID="password" class="form-control" placeholder="Password">--%>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="icheck-primary">
                                <input type="checkbox" id="remember">
                                <label for="remember">
                                    Remember Me
             
                                </label>
                            </div>
                        </div>
                        <!-- /.col -->
                        <div class="col-4">
                            <asp:Button runat="server" type="submit" class="btn btn-primary btn-block" OnClick="btnSumbit" Text="Submit" />
                            <%--<button type="submit" class="btn btn-primary btn-block">Sign In</button>--%>
                        </div>
                        <!-- /.col -->
                    </div>


                    
                    <!-- /.social-auth-links -->

                    <p class="mb-1">
                        <a href="forgot-password.html">I forgot my password</a>
                    </p>
                    
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
        <!-- /.login-box -->

        <!-- jQuery -->
        <script src="C:\Users\Atul_33008400\documents\visual studio 2013\Projects\TestGridView\TestGridView\Assets\plugins\jquery\jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="C:\Users\Atul_33008400\documents\visual studio 2013\Projects\TestGridView\TestGridView\Assets\plugins\bootstrap\js\bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <script src="C:\Users\Atul_33008400\documents\visual studio 2013\Projects\TestGridView\TestGridView\Assets\js\adminlte.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/js/adminlte.min.js"></script>
    </form>
</body>
</html>
