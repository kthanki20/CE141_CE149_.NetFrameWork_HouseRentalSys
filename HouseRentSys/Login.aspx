<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HouseRentalMS.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 116px;
            
        }
        .style-label{
             width: 287px;
            height: 21px;
            margin-left: 20px;
            font-size: 18x;
            font-family: 'Source Sans 3', sans-serif;
            cursor: pointer;
            text-decoration : none;
        }
        body{
            margin:0;
            height:100%;
        }
        .auto-style2 {
            width: 417px;
        }
        .auto-style3 {
            width: 547px;
           
            align-items: center;
            text-align: center;
            margin-left: 20px;
            font-size: 25px;
            font-family: 'Dancing Script', cursive;
        }
        .auto-style4 {
            width: 417px;
            height: 18px;
        }
        .auto-style5 {
            width: 547px;
            height: 18px;
        }
        .auto-style6 {
            height: 18px;
        }
        .auto-style7 {
            width: 417px;
            height: 60px;
        }
        .auto-style8 {
            width: 547px;
            height: 60px;
        }
        .auto-style9 {
            height: 60px;
        }
        .auto-style10 {
            width: 87%;
            margin-left: 46px;
        }
        .auto-style11 {
            height: 49px;
        }
        .auto-style12 {
            height: 49px;
            width: 19px;
        }
        .auto-style13 {
            height: 49px;
            width: 445px;
        }
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            height: 108px;
        }
        .auto-style16 {
            height: 37px;
        }
        .auto-style17 {
            height: 39px;
        }
        .auto-style19 {
            height: 37px;
            width: 576px;
        }
        .auto-style20 {
            height: 39px;
            width: 576px;
        }
        .auto-style21 {
            height: 108px;
            width: 576px;
        }
        .auto-style22 {
            width: 573px;
        }
        .auto-style23 {
            height: 37px;
            width: 573px;
        }
        .auto-style24 {
            height: 39px;
            width: 573px;
        }
        .auto-style25 {
            height: 108px;
            width: 573px;
        }
        .auto-style31 {
            margin-left: 30px;
            font-size: 18x;
            font-family: 'Source Sans 3', sans-serif;
            cursor: pointer;
            text-decoration : none;
            margin-right: 0px;
        }
        .auto-style32 {
            width: 576px;
        }
        .auto-style34 {
            width: 576px;
            height: 26px;
        }
        .auto-style35 {
            width: 573px;
            height: 26px;
        }
        .auto-style36 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" style="background-color: #000000">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                        <table class="auto-style10">
                            <tr>
                                <td class="auto-style12"></td>
                                <td class="auto-style13">
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style3" ForeColor="White" Text="House Rental Management System"></asp:Label>
                                </td>
                                <td class="auto-style11"></td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style14">
                <tr>
                    <td class="auto-style32">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style23">
                        <asp:Label ID="LabelName" runat="server" CssClass="style-label" Text="UserName"></asp:Label>
                    </td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style20"></td>
                    <td class="auto-style24">
                        <asp:TextBox ID="UserNameTb" runat="server" Height="24px" Width="244px"  ></asp:TextBox>
                    </td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style34"></td>
                    <td class="auto-style35"></td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style32">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:Label ID="LabelName0" runat="server" CssClass="style-label" Text="Password"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style32">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="PasswordTb" runat="server" Height="24px" Width="244px" type="password" ></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style32">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style32">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:Button ID="LoginBtn" runat="server" BackColor="#044AAD" BorderColor="#044AAD" BorderStyle="None" CssClass="auto-style31" ForeColor="White" Height="35px" Text="Login" Width="194px" OnClick="LoginBtn_click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style32">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style25"></td>
                    <td class="auto-style15"></td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
