<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apartments.aspx.cs" Inherits="HouseRentalMS.Apartments1" %>

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
        
        .auto-style3 {
            width: 287px;
            height: 21px;
            margin-left:20px;
            font-size:18x;
            font-family: 'Source Sans 3', sans-serif;
            cursor:pointer;
            text-decoration:none;
        }
        .auto-style4 {
            width: 430px;
            height: 24px;
        }
        .auto-style6 {
            width: 430px;
            height: 23px;
        }
        .auto-style7 {
            width: 430px;
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

        .auto-style49 {
            width: 245px;
            height: 29px;
        }
        .auto-style52 {
            width: 414px;
            height: 27px;
        }
        .auto-style53 {
            width: 245px;
            height: 27px;
        }
        .auto-style57 {
            height: 27px;
        }
        .auto-style58 {
            width: 140px;
        }
        .auto-style59 {
            width: 140px;
            height: 27px;
        }
        .auto-style60 {
            width: 140px;
            height: 29px;
        }
        .auto-style61 {
            width: 17px;
        }
        .auto-style62 {
            width: 17px;
            height: 27px;
        }
        .auto-style63 {
            width: 17px;
            height: 29px;
        }
        .auto-style64 {
            margin-left: 0px;
        }
        .auto-style65 {
            width: 430px;
            height: 21px;
            margin-left: 20px;
            font-size: 18x;
            font-family: 'Source Sans 3', sans-serif;
            cursor: pointer;
        }
        .auto-style67 {
            width: 30px;
        }
        .auto-style68 {
            width: 30px;
            height: 27px;
        }
        .auto-style69 {
            width: 30px;
            height: 29px;
        }
        .auto-style70 {
            width: 152px;
        }
        .auto-style71 {
            width: 152px;
            height: 27px;
        }
        .auto-style72 {
            width: 152px;
            height: 29px;
        }
        .auto-style73 {
            width: 245px;
        }
        .auto-style75 {
            width: 131px;
        }
        .auto-style76 {
            width: 131px;
            height: 27px;
        }
        .auto-style77 {
            width: 131px;
            height: 29px;
        }
        .auto-style80 {
            width: 430px;
            height: 29px;
        }
        .auto-style81 {
            width: 430px;
        }
        .auto-style83 {
            width: 257px;
            height: 27px;
        }
        .auto-style84 {
            width: 257px;
            height: 29px;
        }
        .auto-style87 {
            width: 414px;
            height: 29px;
        }
        .auto-style88 {
            width: 257px;
        }
        .auto-style89 {
            width: 414px;
        }

        .auto-style24 {
            margin-bottom: 0px;
            margin-left: 427px;
            margin-right: 0px;
            margin-top: 25px;
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
                        <asp:Label ID="Label17" runat="server" CssClass="auto-style-logo" ForeColor="White" Text="Apartmetnt"></asp:Label>
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
                    <td class="auto-style89">&nbsp;</td>
                    <td class="auto-style88">&nbsp;</td>
                    <td class="auto-style73">&nbsp;</td>
                    <td class="auto-style58">&nbsp;</td>
                    <td class="auto-style61">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style67">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style52"></td>
                    <td class="auto-style83">
                        <asp:Label ID="Label18" runat="server" CssClass="auto-style3" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style53">
                        <asp:Label ID="Label19" runat="server" CssClass="auto-style3" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style59">
                        <asp:Label ID="Label20" runat="server" CssClass="auto-style3" Text="Types"></asp:Label>
                    </td>
                    <td class="auto-style62">
                        &nbsp;</td>
                    <td class="auto-style71">
                        <asp:Label ID="Label26" runat="server" CssClass="auto-style3" Text="Cost"></asp:Label>
                    </td>
                    <td class="auto-style76">
                        <asp:Label ID="Label27" runat="server" CssClass="auto-style3" Text="Owner"></asp:Label>
                    </td>
                    <td class="auto-style68"></td>
                    <td class="auto-style57"></td>
                </tr>
                <tr>
                    <td class="auto-style87"></td>
                    <td class="auto-style84">
                        <asp:TextBox ID="ANameTb" runat="server" Height="24px" Width="216px" CssClass="auto-style64"></asp:TextBox>
                    </td>
                    <td class="auto-style49">
                        <asp:TextBox ID="AddressTb" runat="server" Height="24px" Width="215px"></asp:TextBox>
                    </td>
                    <td class="auto-style60">
                        <asp:DropDownList ID="TypeCb" runat="server" Height="28px" Width="155px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style63">
                        </td>
                    <td class="auto-style72">
                        <asp:TextBox ID="CostTb" runat="server" Height="24px" Width="127px"></asp:TextBox>
                    </td>
                    <td class="auto-style77">
                        <asp:DropDownList ID="LLTb" runat="server" Width="150px" Height="28px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style69">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/PlusSign.png" OnClick="InsertBtn_Cllick" Width="35px" />
                    </td>
                    <td class="auto-style19">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style89">&nbsp;</td>
                    <td class="auto-style88">&nbsp;</td>
                    <td class="auto-style73">&nbsp;</td>
                    <td class="auto-style58">&nbsp;</td>
                    <td class="auto-style61">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
                    <td class="auto-style75">&nbsp;</td>
                    <td class="auto-style67">&nbsp;</td>
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
                        <asp:Label ID="Label21" runat="server" BorderStyle="None" CssClass="list-heading" Text="Apartmets List"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:GridView ID="ApartmentsDGV" runat="server" CssClass="auto-style24" Height="219px" Width="1013px" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ApartmentsDGV_SelectedIndexChanged">

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


