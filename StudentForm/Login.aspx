<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentForm.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 27px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            height: 33px;
        }
        .auto-style5 {
            height: 84px;
        }
        .auto-style6 {
            height: 44px;
            table-layout: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <h1 text-align="center" color="red" class="auto-style6" style="border: medium double #808080; font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; font-style: normal; background-color: #808080; text-align: center;">&nbsp;&nbsp;&nbsp;Student Login</h1>

        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Student Id" BackColor="White" Font-Bold="True" Font-Italic="False" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="637px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*Student Id is Required       " ForeColor="#FF3300" SetFocusOnError="True" ValidationGroup="log"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*Enter Valid Student Id or Student Id is not present" ForeColor="#FF3300" SetFocusOnError="True" ValidationGroup="log" ValidationExpression="[0-9]{1,}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Student Name" BackColor="White" Font-Bold="True" Font-Italic="False" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="638px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*Student Name is Required                      " ForeColor="#FF3300" SetFocusOnError="True" ValidationGroup="log"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*Enter Valid StudentName Starts With Capital Letter" ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="[A-Z]{1}[A-Za-z]{1,}" ValidationGroup="log"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" BackColor="#666666" ForeColor="White" OnClick="Register_Button" Text="Register" Width="200px" BorderStyle="Solid" Height="75px" EnableTheming="False" />
                </td>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#666666" ForeColor="White" OnClick="Login_Button" Text="Login" Width="200px" BorderStyle="Solid" Height="75px" ValidationGroup="log" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
               
            </tr>
        </table>
    </form>
</body>
</html>
