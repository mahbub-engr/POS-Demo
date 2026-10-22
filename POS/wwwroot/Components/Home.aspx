<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="POS.wwwroot.Components.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <meta charset="utf-8" />
    <meta name="description" content="Inventory management ststem POS" />
    <meta name="author" content="Mahbub Alam" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <link rel="stylesheet" href="../css//bootstrap/bootstrap.css" />
    <link rel="stylesheet" href="../css/Home.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="main d-flex flex-column">
                <div class="header text-center ">
                    <h1>DEMO POS</h1>
                </div>
                <div class="main-content">
                    <div class="row">
                        <div class="col-8">
                            <div class="row">
                                <div class="col-6">
                                    <div>
                                        <asp:Label ID="Label1" runat="server" Text="Invoce No:"></asp:Label>
                                    </div>
                                    <div>
                                        <asp:Label ID="Label2" runat="server" Text="Customer:"></asp:Label>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div>
                                        <asp:Label ID="Label3" runat="server" Text="Invoce No:"></asp:Label>
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>Select</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div>
                                        <asp:Label ID="Label4" runat="server" Text="Customer:"></asp:Label>
                                        <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="58px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="803px">
                                    <Columns>
                                        <asp:BoundField AccessibleHeaderText="ItemLookup" HeaderText="Item Lookup" ReadOnly="True" />
                                        <asp:BoundField AccessibleHeaderText="ItemDescription" HeaderText="Item Description" ReadOnly="True" />
                                        <asp:BoundField AccessibleHeaderText="Price" HeaderText="Price" ReadOnly="True" />
                                        <asp:BoundField AccessibleHeaderText="Tax" HeaderText="Tax" ReadOnly="True" />
                                        <asp:BoundField AccessibleHeaderText="Quantity" HeaderText="Quantity" />
                                        <asp:BoundField AccessibleHeaderText="Total" HeaderText="Total" ReadOnly="True" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>




                        <div class="col-2 d-flex flex-column justify-content-between">
                            <div>
                                <asp:Button class="w-100" ID="ClearItemsButton" runat="server" Text="Clear Items" />
                            </div>
                            <div>

                                <div>
                                    <asp:Label ID="Label5" runat="server" Text="Ammount:"></asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="Label6" runat="server" Text="Tax:"></asp:Label>
                                </div>

                                <hr />
                                <asp:Label ID="Label7" runat="server" Text="Totoal:"></asp:Label>

                            </div>

                                <asp:Button ID="PayButton" runat="server" Text="Pay Now" />
                        </div>
                        <div class="col-2 d-flex flex-column gap-3">
                            <asp:Button class="w-100" ID="NewButton" runat="server" Text="New" />
                            <asp:Button class="w-100" ID="ItemsButton" runat="server" Text="Items" />
                            <asp:Button class="w-100" ID="CustomersButton" runat="server" Text="Customers" />
                            <asp:Button class="w-100" ID="SalesButton" runat="server" Text="Sales/Refund" />
                            <asp:Button class="w-100" ID="CashDrawerButton" runat="server" Text="Cash Drawer" />
                            <asp:Button class="w-100" ID="ManagerButton" runat="server" Text="Store Manager" />
                            <asp:Button class="w-100" ID="SettinsButton" runat="server" Text="Settings" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
