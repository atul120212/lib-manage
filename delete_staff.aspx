<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="delete_staff.aspx.cs" Inherits="TestGridView.delete_staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link rel="stylesheet" href="styles/delete.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div class="content-wrapper" style="margin-left:20px">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Welcome
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Welcome</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>



      <!-- -------------------------------------------------------------------------------------------------------------- -->

    <!-- Main content -->
    <section class="content">

      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <!-- Default box -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Pages</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <%--<button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                  </button>--%>
                </div>
              </div>
              <div class="card-body">
                
                  <h3>ID: &emsp;<asp:TextBox runat="server" ID="Id"></asp:TextBox> </h3><br><br>
            <asp:Button ID="DeleteButton" runat="server" Text="Delete Data" OnClick="DeleteButton_Click" />
        
    <asp:Button runat="server" OnClick="clear" Text="Clear"/>
                  <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>

              </div>

              <!-- /.card-body -->
              <div class="card-footer">
                Footer
              </div>
              <!-- /.card-footer-->
            </div>
            <!-- /.card -->
          </div>
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>


        
</asp:Content>



<%--<div class="container">
        
        
        <h3>ID: &emsp;<asp:TextBox runat="server" ID="Id"></asp:TextBox> </h3><br><br>
            <asp:Button ID="DeleteButton" runat="server" Text="Delete Data" OnClick="DeleteButton_Click" />
        
    <asp:Button runat="server" OnClick="clear" Text="Clear"/>
    

            
    </div>--%>