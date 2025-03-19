<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master/Master.Master" CodeBehind="frmChangePassWord.aspx.cs" Inherits="New_Project.frmRe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head >
        <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />

        <style type="text/css">
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

            .auto-style1 {
                height: 38px;
                width: 250px;
            }

            .auto-style2 {
                width: 160px;
            }

            .auto-style3 {
                height: 38px;
                width: 160px;
            }

            .auto-style4 {
                width: 250px;
            }
        </style>
    </head>
    <body>
        <form id="form1" >
            <div id="divpassword" runat="server" style="background-color: rgb(188,206,230)">
                <div style="font-size: 30px; text-align: center">
                    Change Password<br />
                    <br />
                </div>
                <table border="1px solid black;" style="margin-left: 36%">

                    <tr>
                        <td class="auto-style2" colspan="2">
                            <asp:Label ID="lblMsg" Font-Size="Large" runat="server" ForeColor="Maroon" />
                        </td>
                    </tr>



                    <tr>
                        <td style="font-size: 20px;" class="auto-style3">User Name</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" BackColor="White" Width="200" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: 20px;" class="auto-style2">Old Password </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtOldPassword" runat="server" BackColor="White" CssClass="form-control" TextMode="Password" Width="200" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: 20px;" class="auto-style2">New Password </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtNewPassword" runat="server" BackColor="White" CssClass="form-control" TextMode="Password" Width="200px" />
                            <br />

                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: 20px;" class="auto-style2">Confirm Password</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" BackColor="White" TextMode="Password" Width="200" />
                            <br />
                            <br />
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style2"></td>
                        <td class="auto-style4">
                            <asp:Button type="Save" ID="btnSave" class="btn btn-success" runat="server" OnClick="btnSave_Click" Text="Save" Width="100px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button type="Delete" class="btn btn-danger" ID="btnCancle" runat="server" OnClick="btnCancle_Click" Text="Cancel" Width="100px" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </div>
        </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    </body>
    </html>

</asp:Content>
