<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staffLogin.aspx.cs" Inherits="Cinemotion.staffLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 259px;
        }
        .auto-style2 {
            width: 259px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 259px;
            height: 82px;
        }
        .auto-style5 {
            height: 82px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            text-decoration: underline;
        }
    </style>
</head>
<body style="background-image: url('Images/background.jpg');">
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2" colspan="2"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <h1 class="auto-style6">
                        <asp:Label ID="lblHeadLogin" runat="server" Text="Welcome to Cinemotion for staff" CssClass="auto-style7"></asp:Label>
                        </h1>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <h3>
                        <asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label>
                        </h3>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <h4>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Invalid Username!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </h4>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <h3>
                        <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
                        </h3>
&nbsp;</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <h3>
                        <asp:Label ID="Label1" runat="server" Text="Email: "></asp:Label>
                        </h3>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <h4>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="InvalidEmail !" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                        </h4>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:Button ID="btnLogin" runat="server" Height="78px" Text="Login" Width="408px" OnClick="btnLogin_Click" />
                    </td>
                    <td class="auto-style5">
                        <h4>
                        <asp:Label ID="lblOutput" runat="server"></asp:Label>
                        </h4>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2">
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
