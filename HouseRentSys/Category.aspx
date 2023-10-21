<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="HouseRentalMS.Category" %>

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
            right: 1072px;
            margin-right: 13px;
        }
        body{
            margin:0;
            height:100%;
        }
        .list-heading{
            align-items:center;
            text-align:center;
            margin-left:20px;
            font-size:28px;
            font-family: 'Source Sans 3', sans-serif;
        }
        .auto-style-logo{
            align-items:center;
            text-align:center;
            margin-left:20px;
            font-size:25px;
            font-family: 'Dancing Script', cursive;

        }
        
        .auto-style2 {
            width: 287px;
        }
        .auto-style3 {
            width: 287px;
            height: 21px;
            margin-left:20px;
            font-size:18x;
            font-family: 'Source Sans 3', sans-serif;
            cursor:pointer;
            text-decoration : none;
        }
        .auto-style4 {
            width: 287px;
            height: 24px;
        }
        .auto-style5 {
            width: 287px;
            height: 29px;
        }
        .auto-style6 {
            width: 287px;
            height: 23px;
        }
        .auto-style7 {
            width: 287px;
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
            width: 396px;
        }
        .auto-style14 {
            width: 296px;
        }
        .auto-style15 {
            width: 295px;
        }
        .auto-style16 {
            width: 396px;
            height: 29px;
        }
        .auto-style17 {
            width: 296px;
            height: 29px;
        }
        .auto-style18 {
            width: 295px;
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
            width: 442px;
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
            margin-left: 0px;
        }
        .auto-style25 {
            width: 62px;
        }
        .auto-style26 {
            width: 62px;
            height: 29px;
        }
        .auto-style27 {
            margin-left: 20px;
            font-size: 18x;
            font-family: 'Source Sans 3', sans-serif;
            cursor: pointer;
        }

        .auto-style28 {
            margin-left: 432px;
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
                        <asp:Label ID="Label17" runat="server" CssClass="auto-style-logo" ForeColor="White" Text="Category"></asp:Label>
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
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style15">
                        <asp:Label ID="Label19" runat="server" CssClass="auto-style3" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label20" runat="server" CssClass="auto-style3" Text="Remark"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style26">
                        &nbsp;</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="CName" runat="server" Height="28px" Width="260px" CssClass="auto-style24"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="CRemark" runat="server" Height="28px" Width="260px" CssClass="auto-style24"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style12">
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style22">
                        <asp:Button ID="Button1" runat="server" BackColor="#044AAD" BorderColor="#044AAD" BorderStyle="None" CssClass="auto-style27" ForeColor="White" Height="38px" Text="Add" Width="218px" OnClick="AddBtn_Click" />
                    </td>
                    <td class="auto-style20">
                        <asp:Button ID="Button2" runat="server" BackColor="#044AAD" BorderColor="#044AAD" BorderStyle="None" CssClass="auto-style27" ForeColor="White" Height="38px" Text="Remove" Width="218px" OnClick="DeleteBtn_Click" />
                    </td>
                    <td class="auto-style11"></td>
                </tr>
            </table>
            <table class="auto-style12">
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td style="font-size: 25px">
                        &nbsp;</td>
                </tr>
            </table>
            <asp:GridView ID="CategoriesDGV" runat="server" CssClass="auto-style28" Height="219px" Width="1013px" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CategoriesDGV_SelectedIndexChanged">

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

