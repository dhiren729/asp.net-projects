<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master/Master.Master" CodeBehind="frmSell.aspx.cs" Inherits="New_Project.Master.frmSell" %>

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

            .d-flex {
                display: flex;
            }

            h2 {
                text-align: center;
            }

            form {
                border: 1px solid black;
            }

            td {
                width: 180px;
            }

            .auto-style1 {
                height: 21px;
            }
        </style>
    </head>
    <body>

        <form id="form1" style="background-color: rgb(188.206.230)">
            <div class="container mt-4" style="background-color: rgb(188.206.230)" id="Penal2" runat="server">

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
                    <!-- Invoice Number -->
                    <div class="col-md-3">
                        <label for="txtInvoiceNo" class="form-label">Invoice No</label>
                        <asp:TextBox ID="txtInvoiceNo" runat="server" CssClass="form-control" />
                    </div>

                    <!-- Search Button -->
                    <div class="col-md-3">
                        <label class="form-label">&nbsp;</label>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary w-100" OnClick="btnSearch_Click1" />
                    </div>

                    <!-- Add Button -->
                    <div class="col-md-3">
                        <label class="form-label">&nbsp;</label>
                        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success w-100" OnClick="btnAdd_Click" />
                    </div>
                </div>

                <!-- Grid View -->
                <asp:GridView ID="grvInvoices" runat="server" CssClass="table table-hovers table-bordered table-striped" AutoGenerateColumns="false" AutoGenerateSelectButton="True" OnSelectedIndexChanged="grvInvoices_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Party_Name" HeaderText="Party Name" />
                        <asp:BoundField DataField="Invoice" HeaderText="Invoice Number" />
                        <asp:BoundField DataField="Invoice_Date" HeaderText="Invoice Date" DataFormatString="{0:dd-MM-yyyy}" />
                        <asp:BoundField DataField="Discount" HeaderText="Discount" />
                        <asp:BoundField DataField="Final_Amount" HeaderText="Final Amount" DataFormatString="{0:N2}" />
                        <asp:BoundField DataField="Party_Type" HeaderText="Party_Type" Visible="false" />
                    </Columns>
                </asp:GridView>

                <!-- Total Final Amount -->
                <div class="mt-3 text-end">
                    <span class="fw-bold">Total Final Sell : </span>
                    <asp:Label ID="lblTotalAmount" runat="server" CssClass="fw-bold"></asp:Label>
                </div>
            </div>




            <div class="container" id="penal1" runat="server" style="background-color: rgb(188,206,230)">




                <h2>Sell Details Form
                </h2>
                <div>
                    <table>
                        <thead>
                            <tr>
                                <%-- <td>
                            <label for="date">Date:</label>
                        </td>
                        <td class="form-label">
                            <label for="invoiceNo">Invoice No:</label>
                        </td>--%>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="txtDate">Date:</label>
                                        <asp:TextBox ID="dtpDate" runat="server" CssClass="form-control" TextMode="Date" />
                                    </div>
                                    <div class="col-md-6">
                                        <label for="txtInvoiceNo">Invoice No:</label>

                                        <asp:TextBox ID="txtInvoice" runat="server" CssClass="form-control" ReadOnly="true" />
                                    </div>
                                </div>

                            </tr>

                        </thead>

                        <tbody id="Tbody3" runat="server">
                        </tbody>
                    </table>
                </div>
                <div class="form-group">
                    <label for="partyName">Party Name:</label>&nbsp;      
                <asp:DropDownList ID="ddlParty" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlParty_SelectedIndexChanged" AutoPostBack="true">
                </asp:DropDownList>
                </div>
                <div class="form-group ">
                    <label for="mobileNo">Mobile No:</label>
                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" ReadOnly="true" />
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" ReadOnly="true" />
                </div>

                <h3>Product List</h3>
                <table class="table" style="background-color: rgb(188,206,230)">
                    <thead>
                        <tr>
                            <td class="auto-style1" style="background-color: rgb(188,206,230)">
                                <label class="form-label">Product Name</label>
                            </td>
                            <td class="auto-style1" style="background-color: rgb(188,206,230)">
                                <label class="form-label">Quantity</label>
                                <asp:Label ID="lblRemainAmount" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>

                            </td>
                            <td class="auto-style1" style="background-color: rgb(188,206,230)">
                                <label class="form-label">Rate</label>
                            </td>
                            <td class="auto-style1" style="background-color: rgb(188,206,230)">
                                <label class="form-label">Amount</label>
                            </td>

                        </tr>

                        <tr style="background-color: rgb(188,206,230)">
                            <td style="background-color: rgb(188,206,230)">
                                <asp:DropDownList ID="ddlProduct" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlProduct_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td style="background-color: rgb(188,206,230)">
                                <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" OnTextChanged="txtQuantity_TextChanged" AutoPostBack="True">0</asp:TextBox>
                            </td>
                            <td style="background-color: rgb(188,206,230)">
                                <asp:TextBox ID="txtRate" runat="server" CssClass="form-control" OnTextChanged="txtQuantity_TextChanged" AutoPostBack="True">0</asp:TextBox>
                            </td>
                            <td style="background-color: rgb(188,206,230)">
                                <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" ReadOnly="true" /></td>
                            <td style="width: 50px !important; background-color: rgb(188,206,230)">
                                <asp:Button type="Save" class="btn btn-success" runat="server" Text="Add Product" ID="btnAdd_Product" OnClick="btnAdd_Product_Click" Width="110px" />

                            </td>
                        </tr>

                    </thead>

                    <tbody id="Tbody1" runat="server">
                    </tbody>
                </table>
                <asp:GridView ID="grvProduct" runat="server" CssClass="table table-bordered table-striped"
                    AutoGenerateColumns="false" AutoGenerateDeleteButton="True" AutoGenerateSelectButton="True" OnRowDeleting="grvProduct_RowDeleting" OnSelectedIndexChanged="grvProduct_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Product_Name" HeaderText="Product Name" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="Rate" HeaderText="Rate" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                        <asp:BoundField DataField="Product_ID" HeaderText="Product ID" Visible="false" />
                    </Columns>
                </asp:GridView>

                <h3>Summary</h3>
                <table class="table">
                    <thead>
                        <tr>
                            <td style="background-color: rgb(188,206,230)">
                                <label class="form-label">totalAmount:</label>
                            </td>
                            <td style="background-color: rgb(188,206,230)">
                                <label class="form-label">Discount %:</label>
                            </td>
                            <td style="background-color: rgb(188,206,230)">
                                <label class="form-label">Total Discount:</label>
                            </td>
                            <td style="background-color: rgb(188,206,230)">
                                <label class="form-label">Final Amount:</label>
                            </td>

                        </tr>

                        <tr>
                            <td style="background-color: rgb(188,206,230)">
                                <asp:TextBox ID="txtTotalAmount" runat="server" CssClass="form-control" ReadOnly="true" OnTextChanged="txtDiscount_TextChanged" />
                            </td>
                            <td style="background-color: rgb(188,206,230)">
                                <asp:TextBox ID="txtDiscount" runat="server" CssClass="form-control" AutoPostBack="True" OnTextChanged="txtDiscount_TextChanged" />
                            </td>
                            <td style="background-color: rgb(188,206,230)">
                                <asp:TextBox ID="txtTotalDiscount" runat="server" CssClass="form-control" ReadOnly="true" />
                            </td>

                            <td style="width: 50px !important; background-color: rgb(188,206,230)">
                                <asp:TextBox ID="txtFinalAmount" runat="server" CssClass="form-control" ReadOnly="true" />

                            </td>
                        </tr>

                    </thead>

                    <tbody id="Tbody2" runat="server">
                    </tbody>
                </table>


                <br />
                <asp:Button type="Save" class="btn btn-success" runat="server" Text="Save" ID="btnSave" OnClick="btnSave_Click" />
                <asp:Button type="Clear" class="btn btn-secondary" runat="server" Text="Clear" ID="btnClear" OnClick="btnClear_Click" />
                <asp:Button type="Show" class="btn btn-info" runat="server" Text="Show" ID="btnShow" OnClick="btnShow_Click" />
                <asp:Button type="Delete" class="btn btn-danger" runat="server" Text="Delete" ID="btnDelete" OnClick="btnDelete_Click" />

                <asp:Label ID="lblProductId" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblParty" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblIno" runat="server" Visible="False"></asp:Label>
                 <asp:Label ID="lblProduct" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblStock" runat="server" Visible="False"></asp:Label>
            </div>
        </form>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
    </html>
    <%--<script>
    document.getElementById('<%= dtpDate.ClientID %>').addEventListener('keydown', function (event) {
        event.preventDefault();
    });
</script>--%>
</asp:Content>
