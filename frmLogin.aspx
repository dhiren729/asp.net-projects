<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="New_Project.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        }

        .auto-style2 {
            font-size: 100%;
            vertical-align: baseline;
            border-style: none;
            border-color: inherit;
            border-width: 0;
            margin: 0;
            padding: 0;
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

        td {
            margin: 0;
            padding: 0;
            border: 0;
            outline: 0;
            font-size: 100%;
            vertical-align: baseline;
            background: transparent;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: rgb(188,206,230)">
        <div>
        </div>
        <div>
        </div>
        <div style="font-size: 50px; text-align: center">
            Login
        </div>
        <br />
        <div class="auto-style1" style="-moz-border-radius: 15px; border-radius: 50px; outline-width: 0; outline-style: none; outline-color: invert;">
            <div class="auto-style2" style="outline-width: 0; outline-style: none; outline-color: invert;">

                <table style="margin-left: 33%">
                    <tr>
                        <td class="auto-style2" colspan="2">
                            <asp:Label ID="lblMsg" Font-Size="Large" runat="server" ForeColor="Maroon" />
                        </td>
                    </tr>

                    <tr>
                        <td style="width: 150px; font-size: 20px;">User Name</td>
                        <td style="width: 250px">
                            <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" BackColor="White" Width="200px" />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px; font-size: 20px;">Password </td>
                        <td style="width: 250px">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" BackColor="White" TextMode="Password" Width="200px" />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button type="Save" ID="btnLogin" runat="server" class="btn btn-success" OnClick="btnLogin_Click" Text="Login" Width="100px" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button type="Delete" class="btn btn-danger" ID="btnExit" runat="server" OnClick="btnCancel_Click" Text="Cancel" Width="100px" />
                            <br />
                            <br />
                        </td>
                    </tr>


                </table>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>


