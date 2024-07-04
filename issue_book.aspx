<%@ Page Language="C#" MasterPageFile="~/MasterPageUser.Master" AutoEventWireup="true" CodeBehind="issue_book.aspx.cs" Inherits="TestGridView.issue_book" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link rel="stylesheet" href="styles/booketails.css" type="text/css" />
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
                <h3 class="card-title">Details of Books</h3>

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


<asp:TextBox ID="txtSearchID" runat="server"></asp:TextBox>
<asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                  
                 <asp:GridView ID="GridView1" runat="server">
</asp:GridView>


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


<%--
    <div class="container">
                    <h3>Book ID: &emsp;<asp:TextBox runat="server" ID="TextBox1"></asp:TextBox> </h3><br><br>
        
                    <div class="data">
    <asp:PlaceHolder ID = "PlaceHolder1" runat="server" />
    </div>
    
                </div>--%>