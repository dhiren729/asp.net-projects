<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master/Master.Master" CodeBehind="frmParty.aspx.cs" Inherits="New_Project.Master.frmParty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />

        <style type="text/css">
            table {
                margin: 0;
                padding: 0;
                border: 0;
                outline: 0;
                font-size: 100%;
                vertical-align: baseline;
                background: transparent;
            }

            table {
                border-collapse: collapse;
                border-spacing: 0;
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

            .auto-style2 {
                width: 160px;
            }

            td {
                margin: 0;
                padding: 0;
                border: 0;
                outline: 0;
                font-size: 100%;
                vertical-align: baseline;
                background: transparent;
            }

            span {
                margin: 0;
                padding: 0;
                border: 0;
                outline: 0;
                font-size: 100%;
                vertical-align: baseline;
                background: transparent;
            }

            .auto-style3 {
                height: 38px;
                width: 160px;
            }

            .auto-style1 {
                height: 38px;
                width: 351px;
            }

            .auto-style4 {
                width: 160px;
                height: 41px;
            }

            .auto-style5 {
                height: 41px;
            }

            .auto-style6 {
                width: 160px;
                height: 72px;
            }

            .auto-style7 {
                height: 72px;
                width: 351px;
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

            .auto-style8 {
                width: 351px;
            }

            .auto-style9 {
                height: 41px;
                width: 351px;
            }

            .container {
                max-width: 1140px;
                margin: 0 auto;
                padding: 5px 10px;
            }
        </style>
    </head>
    <body style="background-color: rgb(188,206,230)">
        <form id="form1" class="container" >
            <div style="font-size: 40px;  text-align: center" class="container">
                Party Details
            </div>
            <div class="container" >
                <table border="1px solid black; margin:auto">
                    <tr>
                        <td style="color: Maroon; font-size: 20px;" class="auto-style3" colspan="2">
                            <asp:Label ID="lblError" runat="server"></asp:Label>
                        </td>
                        <asp:Label ID="lblId" runat="server" Visible="False" Style="height: 0px">0</asp:Label>

                    </tr>
                    <tr>
                        <td style="font-size: 20px;" class="auto-style3">Party Type</td>
                        <td class="auto-style1">
                            <asp:DropDownList ID="ddlParty" runat="server" AutoPostBack="true" CssClass="form-control">
                                <asp:ListItem>--Select Type--</asp:ListItem>
                                <asp:ListItem>Purchase</asp:ListItem>
                                <asp:ListItem>Sell</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: 20px;" class="auto-style3">Party Name</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtParty" runat="server" BackColor="White" CssClass="form-control" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: 20px;" class="auto-style2">Mobile Number </td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtNumber" runat="server" BackColor="White" CssClass="form-control" TextMode="Number" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: 20px;" class="auto-style2">Party Address</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtAddress" runat="server" BackColor="White" CssClass="form-control" TextMode="MultiLine" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style7">
                            <asp:Button type="Save" class="btn btn-primary" ID="btnSave" runat="server" OnClick="btnSave_Click" Text="  Save  " />
                            &nbsp;&nbsp;
                        <asp:Button type="Clear" class="btn btn-secondary" ID="btnCancle" runat="server" OnClick="btnCancle_Click" Text="Cancel" />
                            &nbsp;&nbsp;
                        <asp:Button type="Delete" class="btn btn-danger" ID="btnDelete" runat="server" Text="Delete" Visible="False" OnClick="btnDelete_Click" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="font-family: verdana, Geneva, Tahoma, sans-serif; font-size: 20px; color: #000000;">Party Name</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtSrhParty" runat="server" CssClass="form-control" BackColor="White" />

                        </td>
                        <td>&nbsp;&nbsp;
                        <asp:Button type="Show" class="btn btn-info" ID="btnSearch" runat="server" Text=" Search " OnClick="btnSearch_Click" /></td>

                    </tr>

                    <tr>

                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                </table>
                <table style="width: 100%">
                    <td >
                        <asp:GridView ID="grvUser" runat="server" CssClass="table table-bordered table-striped " AutoGenerateSelectButton="True" OnSelectedIndexChanged="grvUser_SelectedIndexChanged">
                        </asp:GridView>
                    </td>
                </table>
            </div>
        </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    </body>
    </html>
</asp:Content>
