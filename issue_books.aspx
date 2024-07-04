<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="issue_books.aspx.cs" Inherits="TestGridView.issue_books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper" style="margin-left:20px">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Staff Details
            </h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="welcome.aspx">Home</a></li>
              <li class="breadcrumb-item active">Staff Details</li>
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="issue_id" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" GridLines="Vertical" ForeColor="Black">
                          <AlternatingRowStyle BackColor="#CCCCCC" />
                          <Columns>
                              <asp:BoundField DataField="issue_id" HeaderText="issue_id" InsertVisible="False" ReadOnly="True" SortExpression="issue_id" />
                              <asp:BoundField DataField="book_id" HeaderText="book_id" SortExpression="book_id" />
                              <asp:BoundField DataField="bookName" HeaderText="bookName" SortExpression="bookName" >
                              <HeaderStyle HorizontalAlign="Center" />
                              </asp:BoundField>
                              <asp:BoundField DataField="Id" HeaderText="User_Id" SortExpression="Id" />
                          </Columns>
                          <FooterStyle BackColor="#CCCCCC" />
                          <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                          <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                          <SortedAscendingCellStyle BackColor="#F1F1F1" />
                          <SortedAscendingHeaderStyle BackColor="#808080" />
                          <SortedDescendingCellStyle BackColor="#CAC9C9" />
                          <SortedDescendingHeaderStyle BackColor="#383838" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:mytestConnectionString %>" SelectCommand="SELECT * FROM [issue_books]"></asp:SqlDataSource>
                    
              </div>

              <!-- /.card-body -->
              <div class="card-footer">
                Footer
              </div>
              <!-- /.card-footer-->
            </div>

              <div class="card">
              <div class="card-header">
                  
                <div class="card-tools">
                  <%--<button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                  </button>--%>
                </div>
              </div>
              
              <!-- /.card-body -->
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
