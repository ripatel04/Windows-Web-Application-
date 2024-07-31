<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookTicket.aspx.cs" Inherits="Cinemotion.bookTicket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 210px;
        }
        .auto-style2 {
            width: 185px;
            height: 26px;
        }
        .auto-style3 {
            width: 210px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            text-align: center;
        }
        .auto-style6 {
            width: 47px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
            width: 393px;
        }
        .auto-style8 {
            width: 393px;
        }
        .auto-style9 {
            height: 26px;
            width: 393px;
            text-align: right;
        }
        .auto-style10 {
            height: 26px;
            text-align: right;
        }
        .auto-style11 {
            height: 26px;
            text-align: left;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            text-decoration: underline;
        }
    </style>
</head>
<body style="background-image: url('Images/background3.jpg');">
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td colspan="8">
                        <h1 class="auto-style12">
                        <asp:Label ID="lblBookTicket" runat="server" Text="Book a ticket" CssClass="auto-style13"></asp:Label>
                        </h1>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <h3>
                        <asp:Label ID="Label1" runat="server" Text="Name and Surname: "></asp:Label>
                        </h3>
                    </td>
                    <td colspan="7">
                        <asp:TextBox ID="txtNameSurname" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <h3>
                        <asp:Label ID="lblNumTickets" runat="server" Text="Number of tickets: "></asp:Label>
                        </h3>
                    </td>
                    <td colspan="7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4" colspan="7"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:RadioButton ID="rdoOne" runat="server" Text="1" />
                    </td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="rdoTwo" runat="server" Text="2" />
                    </td>
                    <td class="auto-style6" colspan="2">
                        <asp:RadioButton ID="rdoThree" runat="server" Text="3" />
                    </td>
                    <td class="auto-style4">
                        <asp:RadioButton ID="rdoFour" runat="server" Text="4" />
                    </td>
                    <td class="auto-style4" colspan="2">
                        <asp:RadioButton ID="rdoFive" runat="server" Text="5" />
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <h3>
                        <asp:Label ID="lblShowTime" runat="server" Text="Select Show Time"></asp:Label>
                        </h3>
                    </td>
                    <td class="auto-style4" colspan="7">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnEleven" runat="server" Height="60px" Text="11: 00" Width="171px" OnClick="btnEleven_Click" />
                    </td>
                    <td class="auto-style5" colspan="2">
                        <asp:Button ID="btnTwo" runat="server" Height="67px" Text="14: 00" Width="148px" OnClick="btnTwo_Click" />
                    </td>
                    <td class="auto-style5" colspan="3">
                        <asp:Button ID="btnSix" runat="server" Height="64px" Text="18: 00" Width="145px" OnClick="btnSix_Click" />
                    </td>
                    <td class="auto-style5" colspan="2">
                        <asp:Button ID="btnTen" runat="server" Height="63px" Text="22: 00" Width="130px" OnClick="btnTen_Click" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7" colspan="2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <h3>
                        <asp:Label ID="Label2" runat="server" Text="Select Date"></asp:Label>
                        </h3>
                    </td>
                    <td class="auto-style7" colspan="2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" rowspan="2">
                        <asp:Calendar ID="Calendar1" runat="server" Height="310px" OnSelectionChanged="Calendar1_SelectionChanged" Width="418px"></asp:Calendar>
                    </td>
                    <td class="auto-style7" rowspan="2">&nbsp;</td>
                    <td class="auto-style8">
                        <h3>
                        <asp:Label ID="lblSelectMovie" runat="server" Text="Select Movie : "></asp:Label>
                        </h3>
                        <asp:DropDownList ID="ddlTitle" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4" rowspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style7" colspan="2">
                        <asp:Button ID="btnBook" runat="server" Height="64px" Text="Book" Width="907px" OnClick="btnBook_Click" />
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7" colspan="2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="3">
                        <asp:Label ID="lblFeedback" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9" colspan="2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="3">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">Back to Main Page</asp:HyperLink>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="3">
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
