<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master/Master.Master" CodeBehind="frmHome.aspx.cs" Inherits="New_Project.Master.frmHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>

    <html>
    <head>
        <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />

        <style>
            .container {
                max-width: 1140px;
                margin: 0 auto;
                padding: 5px 10px;
            }
        </style>
    </head>
    <body>
        <form id="form1" class="container">
            <div class="container">
                <h2>
                    Stock Details
                </h2>
                    <asp:GridView ID="grvStock" runat="server" CssClass="table table-hovers table-bordered table-striped" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField DataField="Product_Name" HeaderText="Product Name" />
                            <asp:BoundField DataField="Total_Purchased" HeaderText="Total Purchased" />
                            <asp:BoundField DataField="Total_Sold" HeaderText="Total Sell" />
                            <asp:BoundField DataField="Stock_Available" HeaderText="Stock Available" />
                        </Columns>
                    </asp:GridView>
                
            </div>
        </form>
    </body>
    </html>
</asp:Content>
