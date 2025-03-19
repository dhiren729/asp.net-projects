<%@ Page Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="frmPurchasePaymant.aspx.cs" Inherits="New_Project.Master.frmPurchasePaymant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>

    <head>


        <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
        <style type="text/css">
            .container {
                max-width: 1140px;
                margin: 0 auto;
                padding: 5px 10px;
            }
        </style>
    </head>
    <body style="background-color: rgb(188,206,230)">

        <form id="form1" class="container" style="background-color: rgb(188,206,230)">
            <div class="container mt-4" style="background-color: rgb(188.206.230)" id="Penal2" runat="server">
                <h2>Purchase Payment Deatilss
                </h2>
                <div class="row mb-3">
                    <!-- Party Name -->
                    <div class="col-md-3">
                        <label for="txtPartyName" class="form-label">Party Name</label>
                        <asp:TextBox ID="txtPartyName" runat="server" CssClass="form-control" />
                    </div>

                    <!-- Date Range -->
                    <div class="col-md-3">
                        <label for="txtFromDate" class="form-label">Date (From)</label>
                        <asp:TextBox ID="txtFromDate" runat="server" CssClass="form-control" TextMode="Date" />
                    </div>
                    <div class="col-md-3">
                        <label for="txtToDate" class="form-label">Date (To)</label>
                        <asp:TextBox ID="txtToDate" runat="server" CssClass="form-control" TextMode="Date" />
                    </div>
                </div>

                <div class="row mb-3">

                    <div class=" col-md-3">
                        <label for="partyName">Payment Method</label>&nbsp;      
                        <asp:DropDownList ID="srhddlMethod" runat="server" CssClass="form-control" AutoPostBack="true">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Cash</asp:ListItem>
                            <asp:ListItem>Online</asp:ListItem>
                            <asp:ListItem>Checks</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <!-- Search Button -->
                    <div class="col-md-3">
                        <label class="form-label">&nbsp;</label>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary w-100" OnClick="btnSearch_Click" />
                    </div>

                    <!-- Add Button -->
                    <div class="col-md-3">
                        <label class="form-label">&nbsp;</label>
                        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success w-100" OnClick="btnAdd_Click" />
                    </div>
                </div>

                <!-- Grid View -->
                <asp:GridView ID="grvInvoices" runat="server" CssClass="table table-hovers table-bordered table-striped"
                    AutoGenerateColumns="false" AutoGenerateSelectButton="True"
                    OnSelectedIndexChanged="grvInvoices_SelectedIndexChanged"
                    DataKeyNames="PurchasePyament_ID, Party_ID">
                    <Columns>
                        <asp:BoundField DataField="Party_Name" HeaderText="Party Name" />
                        <asp:BoundField DataField="Payment_Date" HeaderText="Payment Date" DataFormatString="{0:dd-MM-yyyy}" />
                        <asp:BoundField DataField="Payment_Method" HeaderText="Payment Method" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                        <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
                        <asp:BoundField DataField="PurchasePyament_ID" HeaderText="PurchasePyament_ID" Visible="false" />
                        <asp:BoundField DataField="Party_ID" HeaderText="Party_ID" Visible="false" />
                    </Columns>
                </asp:GridView>



            </div>


            <div class="container" runat="server" id="Penal1" style="background-color: rgb(188,206,230)">
                <h2>Purchase Payment Deatilss
                </h2>
                <div class="row">
                    <div class="col-md-6">
                        <label for="partyName">Party Name:</label>
                        &nbsp;  
                        <asp:Label ID="lblRemainAmount" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
                        <asp:DropDownList ID="ddlParty" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlParty_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-6">
                        <label for="mobileNo">Mobile No:</label>
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" ReadOnly="true" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label for="address">Address:</label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" ReadOnly="true" />
                    </div>
                    <div class="col-md-6">
                        <label for="txtDate">Date:</label>
                        <asp:TextBox ID="dtpDate" runat="server" CssClass="form-control" TextMode="Date" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label for="partyName">Payment Method</label>&nbsp;      
                        <asp:DropDownList ID="ddlMethod" runat="server" CssClass="form-control" AutoPostBack="true">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Cash</asp:ListItem>
                            <asp:ListItem>Online</asp:ListItem>
                            <asp:ListItem>Checks</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-6 ">
                        <label for="mobileNo">Amount</label>
                        <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" />
                    </div>

                </div>
                <div class="form-group">
                    <label for="address">Remarks:</label>
                    <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" TextMode="MultiLine" />
                </div>
                <br />
                <asp:Button type="Save" class="btn btn-success" runat="server" Text="Save" ID="btnSave" OnClick="btnSave_Click" />
                <asp:Button type="Clear" class="btn btn-secondary" runat="server" Text="Clear" ID="btnClear" OnClick="btnClear_Click" />
                <asp:Button type="Show" class="btn btn-info" runat="server" Text="Show" ID="btnShow" OnClick="btnShow_Click" />
                <asp:Button type="Delete" class="btn btn-danger" runat="server" Text="Delete" ID="btnDelete" OnClick="btnDelete_Click" />
                <asp:Label ID="lblID" runat="server" Visible="False"></asp:Label>
            </div>
        </form>


    </body>
    </html>
    <%--<script>
    document.getElementById('<%= dtpDate.ClientID %>').addEventListener('keydown', function (event) {
        event.preventDefault();
    });
</script>--%>
</asp:Content>


