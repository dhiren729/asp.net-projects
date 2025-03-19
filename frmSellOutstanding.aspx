<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master/Master.Master" CodeBehind="frmSellOutstanding.aspx.cs" Inherits="New_Project.Master.frmSellOutstanding" %>

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
        <form id="form1" style="background-color: rgb(188,206,230)" class="container">
            <div style="background-color: rgb(188,206,230)" class="container">
                <div style="display: flex">
                    <h2>Sell OutStanding 
                    </h2>
                </div>
                <div style="display: flex">
                    <asp:LinkButton ID="btnEExport" type="Save" class="btn btn-success" runat="server" OnClick="btnEExport_Click">
   <i class="bi bi-file-earmark-spreadsheet"></i> Export
</asp:LinkButton>
                </div>
                <asp:GridView ID="grvStock" runat="server" CssClass="table table-hovers table-bordered table-striped" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="Party_Name" HeaderText="Party Name" />
                        <asp:BoundField DataField="Party_Mobile_No" HeaderText="Party_Mobile_No" />
                        <asp:BoundField DataField="OutstandingAmount" HeaderText="Outstanding Amount" />
                    </Columns>
                </asp:GridView>
                <div class="mt-3 text-end">
                    <span class="fw-bold" style="font-size: 21px">Total Outstanding Sell : </span>
                    <asp:Label ID="lblTotalAmount" runat="server" Font-Size="16" CssClass="fw-bold"></asp:Label>
                </div>
            </div>
        </form>
    </body>
    </html>
</asp:Content>
