<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrationpage.aspx.cs" Inherits="Risegym.Registrationpage" %>
 
<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            text-align: center;
            font-size: x-large;
            color: #3333CC;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-decoration: underline;
            font-weight: bold;
            text-align: center;
            width: 206px;
            color: #3333CC;
        }
        .auto-style4 {
            width: 206px;
        }
        .auto-style5 {
            width: 227px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
     
        <strong>Registration page</strong></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Username</td>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="uname" runat="server" style="text-align: center; margin-left: 11px" Width="135px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname" ErrorMessage="Please enter username" ForeColor="Red" style="font-weight: 700; text-decoration: underline" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="pass" runat="server" style="margin-left: 37px" TextMode="Password" Width="135px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="Please enter your password" ForeColor="Red" style="font-weight: 700; text-decoration: underline"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Confirmpassword</td>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="cpass" runat="server" style="margin-left: 21px" TextMode="Password" Width="135px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cpass" ErrorMessage="Please confirm password" ForeColor="Red" style="font-weight: 700; text-decoration: underline"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="cpass" ErrorMessage="mustmatchpassword" style="font-weight: 700; text-decoration: underline" ></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email</td>
                <td class="auto-style5">&nbsp;
                    <asp:TextBox ID="email" runat="server" style="margin-left: 32px" TextMode="Email" Width="135px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" ErrorMessage="Cannot be empty" ForeColor="Red" style="font-weight: 700; text-decoration: underline"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="mustbeinmanner" style="font-weight: 700; text-decoration: underline" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" ForeColor="Blue" style="margin-left: 39px" Text="Add user" Width="100px" OnClick="Button1_Click"/>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
