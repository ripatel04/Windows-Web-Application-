<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="general.aspx.cs" Inherits="Cinemotion.general" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 26px;
            width: 123px;
        }
        .auto-style3 {
            height: 26px;
            text-align: center;
        }
        .auto-style4 {
            height: 26px;
            width: 492px;
        }
        .auto-style5 {
            height: 26px;
            text-align: right;
        }
        .auto-style6 {
            height: 26px;
            width: 150px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            text-decoration: underline;
        }
        .auto-style9 {
            text-align: right;
            width: 520px;
        }
    </style>
</head>
<body style="background-image: url('Images/background4.jpg');">
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <h1 class="auto-style7">
                        <asp:Label ID="lblHead" runat="server" Text="Insert, Update, Delete from Database" CssClass="auto-style8"></asp:Label>
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <h3>
                        <asp:Label ID="lblID" runat="server" Text="ID: "></asp:Label>
                        </h3>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <h3>
                        <asp:Label ID="lblTitle" runat="server" Text="Title: "></asp:Label>
                        </h3>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <h3>
                        <asp:Label ID="lblGenre" runat="server" Text="Genre: "></asp:Label>
                        </h3>
                    </td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlGenre" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <h3>
                        <asp:Label ID="lblReleaseYear" runat="server" Text="Release Year: "></asp:Label>
                        </h3>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtReleaseYear" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <h3>
                        <asp:Label ID="lblDuration" runat="server" Text="Duration: "></asp:Label>
                        </h3>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtDuration" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1" colspan="4">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnInsert" runat="server" Height="55px" Text="Insert" Width="167px" OnClick="btnInsert_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnDelete" runat="server" Height="55px" Text="Delete" Width="171px" OnClick="btnDelete_Click" />
                    </td>
                    <td class="auto-style1" colspan="2">
                        <asp:Button ID="btnUpdate" runat="server" Height="57px" Text="Update" Width="155px" OnClick="btnUpdate_Click" />
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <h4>
                        <asp:Label ID="lblInsertSent" runat="server"></asp:Label>
                        </h4>
                    </td>
                    <td class="auto-style3">
                        <h4 class="auto-style9">
                        <asp:Label ID="lblDeleteSent" runat="server"></asp:Label>
                        </h4>
                    </td>
                    <td class="auto-style3">
                        <strong>
                        <asp:Label ID="lblUpdateSent" runat="server"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style1" colspan="2">
                        <h4>
                            &nbsp;</h4>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3" colspan="4">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="5">
                        <h3>
                        <asp:Label ID="lblSearch" runat="server" Text="Search from Database"></asp:Label>
                        </h3>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1" colspan="4">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <h4>
                        <asp:Label ID="lblGenree" runat="server" Text="Genre: "></asp:Label>
                        </h4>
                    </td>
                    <td class="auto-style1" colspan="4">
                        <asp:DropDownList ID="ddlGenreSearch" runat="server" Height="37px" Width="120px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1" colspan="4">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnSearch" runat="server" Height="60px" Text="Search: " Width="164px" OnClick="btnSearch_Click" />
                    </td>
                    <td class="auto-style3" colspan="4">
                        <asp:ListBox ID="ListBox1" runat="server" Height="170px" Width="522px"></asp:ListBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style1" colspan="4"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1" colspan="4">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5" colspan="4">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/staffLogin.aspx">Back to Staff Login Page </asp:HyperLink>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5" colspan="4">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/default.aspx">Back to Main Page to View  GridView</asp:HyperLink>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style5" colspan="4">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
