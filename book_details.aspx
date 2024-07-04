<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="book_details.aspx.cs" Inherits="TestGridView.book_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link rel="stylesheet" href="styles/bookDetails.css" type="text/css" />
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
              <li class="breadcrumb-item active">book_details</li>
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
                <h3 class="card-title">DataTable with default features</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                









                   <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>ID</th>
                    <th>username</th>
                    <th>address</th>
                       <th>Cover_Img</th>
                  
                  </tr>
                  </thead>
                  <tbody>
                           <asp:Repeater ID="GridView1" runat="server">  
            <ItemTemplate>
                  <tr>
                         
                               <td><%#Eval("book_id")%></td>
                                <td><%#Eval("bookName")%></td>
                                <td><%#Eval("author")%></td>
                      <td>
                      <asp:Image ID="myimg" runat="server" ImageUrl='<%# Eval("myimg") %>' Width="100px" Height="100px" />
                      </td>
                      
                  </tr>
                   
                </ItemTemplate>  
        </asp:Repeater>


                  
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>Rendering engine</th>
                    <th>Browser</th>
                    <th>Platform(s)</th>
                    
                  </tr>
                  </tfoot>
                </table>

            
                    
                    
                    
                    
                    
                
                    
                    
                    
                    
                    
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mytestConnectionString %>" SelectCommand="SELECT * FROM [myBooks]"></asp:SqlDataSource>
  

              </div>
              </div>
              </div>
              <!-- /.card-body -->
           

            <!-- /.card -->
          </div>
        </div>
    
    </section>
          </div>

    <!-- /.content -->

        </asp:Content>





<%--
    <div class="card">
              <div class="card-header">
                <h3 class="card-title">Responsive Hover Table</h3>

                <div class="card-tools">
                  <div class="input-group input-group-sm" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default">
                        <i class="fas fa-search"></i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>User</th>
                      <th>Date</th>
                      <th>Status</th>
                      <th>Reason</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>183</td>
                      <td>John Doe</td>
                      <td>11-7-2014</td>
                      <td><span class="tag tag-success">Approved</span></td>
                      <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                    </tr>
                    <tr>
                      <td>219</td>
                      <td>Alexander Pierce</td>
                      <td>11-7-2014</td>
                      <td><span class="tag tag-warning">Pending</span></td>
                      <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                    </tr>
                    <tr>
                      <td>657</td>
                      <td>Bob Doe</td>
                      <td>11-7-2014</td>
                      <td><span class="tag tag-primary">Approved</span></td>
                      <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                    </tr>
                    <tr>
                      <td>175</td>
                      <td>Mike Doe</td>
                      <td>11-7-2014</td>
                      <td><span class="tag tag-danger">Denied</span></td>
                      <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
    
    --%>














<%--
<div class="card-body">
                
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="book_id" HeaderText="book_id" InsertVisible="False" ReadOnly="True" SortExpression="book_id" />
                    <asp:BoundField DataField="bookName" HeaderText="bookName" SortExpression="bookName" />
                    <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField ControlStyle-Height="100px" ControlStyle-Width="100px" DataImageUrlField="myimg" HeaderText="myimg">
<ControlStyle Height="100px" Width="100px"></ControlStyle>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mytestConnectionString %>" SelectCommand="SELECT * FROM [myBooks]"></asp:SqlDataSource>
  

              </div>--%>











































<%--


                    <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>ID</th>
                    <th>username</th>
                    <th>address</th>
                       <th>address</th>
                  
                  </tr>
                  </thead>
                  <tbody>
                           <asp:Repeater ID="GridView1" runat="server">  
            <ItemTemplate>
                  <tr>
                         
                               <td><%#Eval("book_id")%></td>
                                <td><%#Eval("bookName")%></td>
                                <td><%#Eval("author")%></td>
                      <td>
                      <asp:Image ID="myimg" runat="server" ImageUrl='<%# Eval("myimg") %>' Width="100px" Height="100px" />
                      </td>
                      
                  </tr>
                   
                </ItemTemplate>  
        </asp:Repeater>


                  
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>Rendering engine</th>
                    <th>Browser</th>
                    <th>Platform(s)</th>
                    
                  </tr>
                  </tfoot>
                </table>--%>