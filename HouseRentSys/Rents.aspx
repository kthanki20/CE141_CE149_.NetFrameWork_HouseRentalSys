<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rents.aspx.cs" Inherits="HouseRentalMS.Rents1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+3&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            width: 25%;
            height: 721px;
            position: absolute;
            top: 0;
            bottom: -144px;
            left: 1px;
            right: 968px;
            margin-right: 73px;
        }

        body {
            margin: 0;
            height: 100%;
        }

        .list-heading {
            align-items: center;
            text-align: center;
            margin-left: 20px;
            font-size: 28px;
            font-family: 'Source Sans 3', sans-serif;
        }

        .auto-style-logo {
            align-items: center;
            text-align: center;
            margin-left: 20px;
            font-size: 25px;
            font-family: 'Dancing Script', cursive;
        }

        .auto-style2 {
            width: 157px;
        }

        .auto-style3 {
            width: 287px;
            height: 21px;
            margin-left: 20px;
            font-size: 18x;
            font-family: 'Source Sans 3', sans-serif;
            cursor: pointer;
            text-decoration:none;
        }

        .auto-style4 {
            width: 157px;
            height: 24px;
        }

        .auto-style5 {
            width: 157px;
            height: 29px;
        }

        .auto-style6 {
            width: 157px;
            height: 23px;
        }

        .auto-style7 {
            width: 157px;
            height: 75px;
        }

        .auto-style8 {
            width: 100%;
            height: 121px;
        }

        .auto-style9 {
            width: 458px;
        }

        .auto-style10 {
            width: 458px;
            height: 26px;
        }

        .auto-style11 {
            height: 26px;
        }

        .auto-style12 {
            width: 100%;
        }

        .auto-style13 {
            width: 421px;
        }

        .auto-style16 {
            width: 421px;
            height: 29px;
        }

        .auto-style19 {
            height: 29px;
        }

        .auto-style20 {
            width: 267px;
            height: 26px;
        }

        .auto-style21 {
            width: 583px;
            height: 26px;
        }

        .auto-style22 {
            width: 230px;
            height: 26px;
        }

        .auto-style23 {
            width: 395px;
        }

        .auto-style24 {
            margin-bottom: 0px;
            margin-left: 427px;
            margin-right: 0px;
            margin-top: 25px;
        }

        .auto-style25 {
            width: 157px;
            height: 21px;
            margin-left: 20px;
            font-size: 18x;
            font-family: 'Source Sans 3', sans-serif;
            cursor: pointer;
        }
        .auto-style28 {
            width: 236px;
        }
        .auto-style29 {
            width: 236px;
            height: 29px;
        }
        .auto-style30 {
            width: 229px;
        }
        .auto-style31 {
            width: 229px;
            height: 29px;
        }
        .auto-style32 {
            width: 221px;
        }
        .auto-style33 {
            width: 221px;
            height: 29px;
        }
        .auto-style34 {
            width: 228px;
        }
        .auto-style35 {
            width: 228px;
            height: 29px;
        }
        .auto-style36 {
            width: 421px;
            height: 27px;
        }
        .auto-style37 {
            width: 229px;
            height: 27px;
        }
        .auto-style38 {
            width: 236px;
            height: 27px;
        }
        .auto-style39 {
            width: 221px;
            height: 27px;
        }
        .auto-style40 {
            width: 228px;
            height: 27px;
        }
        .auto-style41 {
            height: 27px;
        }
        .auto-style42 {
            width: 421px;
            height: 26px;
        }
        .auto-style43 {
            width: 229px;
            height: 26px;
        }
        .auto-style44 {
            width: 236px;
            height: 26px;
        }
        .auto-style45 {
            width: 221px;
            height: 26px;
        }
        .auto-style46 {
            width: 228px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 555px">
            <table class="auto-style1" style="padding: 10px; background-color: #004aad;">
                <tr>
                    <td class="auto-style2" style="background-color: #004aad">
                        <asp:Label ID="Label15" runat="server" ForeColor="White" Text="House Rental MS" CssClass="auto-style-logo "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #004aad" class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Image ID="Image1" runat="server" Height="35px" ImageUrl="~/Images/PTenantLogo.png" Width="35px" />
                        <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style3" ForeColor="White" NavigateUrl="~/Tenants.aspx">Tenants</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">
                        <asp:Image ID="Image2" runat="server" Height="35px" ImageUrl="~/Images/ApartmentLogo.png" Width="35px" />
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style3" ForeColor="White" NavigateUrl="~/Apartments.aspx">Apartments</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image3" runat="server" Height="35px" ImageUrl="~/Images/PLandLoardLogo.png" Width="35px" />
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style3" ForeColor="White" NavigateUrl="~/LandLord.aspx">LandLord</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image4" runat="server" Height="35px" ImageUrl="~/Images/PRentLogo.png" Width="35px" />
                        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style3" ForeColor="White" NavigateUrl="~/Rents.aspx">Rent</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image5" runat="server" Height="35px" ImageUrl="~/Images/PCategotyLogo.png" Width="35px" />
                        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="auto-style3" ForeColor="White" NavigateUrl="~/Category.aspx">Category</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image6" runat="server" Height="40px" ImageUrl="~/Images/PLogoutLogo.png" Width="40px" />
                        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style3" ForeColor="White" NavigateUrl="~/Login.aspx">Logout</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <table class="auto-style8" style="background-color: #000000">
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label16" runat="server" ForeColor="White" Text="Tenants"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label17" runat="server" CssClass="auto-style-logo" ForeColor="White" Text="Rents"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style11"></td>
                    <td></td>
                </tr>
            </table>
            <table class="auto-style12">
                <tr>
                    <td class="auto-style42"></td>
                    <td class="auto-style43"></td>
                    <td class="auto-style44"></td>
                    <td class="auto-style45"></td>
                    <td class="auto-style46"></td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style36"></td>
                    <td class="auto-style37">
                        <asp:Label ID="LabelName" runat="server" CssClass="auto-style3" Text="Apartment"></asp:Label>
                    </td>
                    <td class="auto-style38">
                        <asp:Label ID="LabelTPhone" runat="server" CssClass="auto-style3" Text="Amount"></asp:Label>
                    </td>
                    <td class="auto-style39">
                        <asp:Label ID="LabelTPhone0" runat="server" CssClass="auto-style3" Text="Tenant"></asp:Label>
                    </td>
                    <td class="auto-style40">
                        <asp:Label ID="LabelGenT0" runat="server" CssClass="auto-style3" Text="Period"></asp:Label>
                    </td>
                    <td class="auto-style41"></td>
                </tr>
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style31">
                        <asp:DropDownList ID="ApartTb" runat="server" Height="28px" Width="202px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="AmountTb" runat="server" Height="24px" Width="203px"></asp:TextBox>
                    </td>
                    <td class="auto-style33" id="TenantTb">
                        <asp:DropDownList ID="TenantTb" runat="server" Height="28px" Width="202px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="PeriodTb" runat="server" Height="24px" Width="203px"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <asp:ImageButton ID="TenantInsert" runat="server" Height="35px" ImageUrl="~/Images/PlusSign.png" OnClick="InsertBtn_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style32">&nbsp;</td>
                    <td class="auto-style34">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style12">
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style22">
                        <asp:Button ID="Button1" runat="server" BackColor="#044AAD" BorderColor="#044AAD" BorderStyle="None" CssClass="auto-style3" ForeColor="White" Height="35px" Text="Edit" Width="202px" OnClick="EditBtn_Click" />
                    </td>
                    <td class="auto-style20">
                        <asp:Button ID="Button2" runat="server" BackColor="#044AAD" BorderColor="#044AAD" BorderStyle="None" CssClass="auto-style3" ForeColor="White" Height="35px" Text="Delete" Width="202px" OnClick="DeleteBtn_Click" />
                    </td>
                    <td class="auto-style11"></td>
                </tr>
            </table>
            <table class="auto-style12">
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td style="font-size: 25px">
                        <asp:Label ID="Label21" runat="server" BorderStyle="None" CssClass="list-heading" Text="Rent List"></asp:Label>
                    </td>
                </tr>
            </table>
            &nbsp;
            <asp:GridView ID="RentDGV" runat="server" CssClass="auto-style24" Height="219px" Width="1013px" AutoGenerateSelectButton="True" OnSelectedIndexChanged="RentDGV_SelectedIndexChanged">

                <HeaderStyle Width="20%" />
                <RowStyle Width="20%" />
                <Columns>
                    <asp:BoundField />
                </Columns>
                <HeaderStyle CssClass="auto-style3" />
                <RowStyle Width="244px" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
