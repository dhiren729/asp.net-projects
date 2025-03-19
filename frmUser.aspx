<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master/Master.Master" CodeBehind="frmUser.aspx.cs" Inherits="New_Project.frmUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />

        <style type="text/css">
            .auto-style1 {
                height: auto;
                width: auto;
                font-size: 100%;
                vertical-align: baseline;
                border-style: none;
                border-color: inherit;
                border-width: 0;
                margin: 0;
                padding: 0;
                background: transparent;
            }

            .auto-style2 {
                font-size: 100%;
                vertical-align: baseline;
                border-style: none;
                border-color: inherit;
                border-width: 0;
                margin: 0;
                padding: 0;
                background: transparent;
            }

            table {
                border-collapse: collapse;
                border-spacing: 0;
            }

            table {
                margin: 0;
                padding: 0;
                border: 0;
                outline: 0;
                font-size: 100%;
                vertical-align: baseline;
                background: transparent;
            }

            tbody {
                margin: 0;
                padding: 0;
                border: 0;
                outline: 0;
                font-size: 100%;
                vertical-align: baseline;
                background: transparent;
            }

            tr {
                margin: 0;
                padding: 0;
                border: 0;
                outline: 0;
                font-size: 100%;
                vertical-align: baseline;
                background: transparent;
            }

            td {
                margin: 0;
                padding: 0;
                border: 0;
                outline: 0;
                font-size: 100%;
                vertical-align: baseline;
                background: transparent;
                /*border:1px solid black;*/
                text-align: center;
            }

            .grid-style {
                border-collapse: collapse;
                width: 100%;
            }

                .grid-style th, .grid-style td {
                    border: 1px solid black;
                    padding: 8px;
                }

                .grid-style th {
                    background-color: mediumpurple;
                    text-align: center;
                }

            .auto-style3 {
                width: 252px;
            }

            .auto-style4 {
                width: 346px;
            }

            .container {
                max-width: 1140px;
                margin: 0 auto;
                padding: 5px 10px;
            }
        </style>
    </head>
    <body>
        <form id="form2" style="background-color: rgb(188,206,230)" class="container">
            <div style="font-size: 40px; text-align: center">
                User Details
            </div>
            <div style="background-color: rgb(188,206,230)" class="container" style="-moz-border-radius: 15px; border-radius: 50px; outline-width: 0; outline-style: none; outline-color: invert;">
                <div class="auto-style2" style="outline-width: 0; outline-style: none; outline-color: invert;">
                    <table style="margin-left: 30%">
                        <tr>

                            <td style="color: Maroon; font-size: 20px;" class="auto-style3" colspan="2">
                                <asp:Label ID="lblError" runat="server"></asp:Label>
                            </td>
                            <asp:Label ID="lblId" Font-Size="20px" runat="server" Visible="False">0</asp:Label>

                        </tr>
                        <tr>
                            <td style="width: 150px; font-size: 20px;">User Name</td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server" BackColor="White" />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 150px; font-size: 20px;">Password </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" BackColor="White" AutoCompleteType="Search" />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="auto-style4">
                                <asp:Button type="Save" class="btn btn-success" ID="btnSave" runat="server" Text="Save" Width="80px" OnClick="btnSave_Click" />
                                &nbsp;&nbsp;<asp:Button type="Clear" class="btn btn-secondary" ID="btnClear" runat="server" Text="Clear" Width="80px" OnClick="btnClear_Click" />
                                &nbsp;&nbsp;<asp:Button type="Delete" class="btn btn-danger" ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
                </div>

            </div>
            <div style="width=70%" class="container">
                <asp:GridView ID="grvUser" runat="server" CssClass="table table-bordered table-striped" AutoGenerateSelectButton="True" OnSelectedIndexChanged="grvUser_SelectedIndexChanged1">
                </asp:GridView>
            </div>
            <%--  <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grvUser" runat="server">
            </asp:GridView>
        </div>
    </form>--%>
        </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    </body>
    </html>
</asp:Content>
