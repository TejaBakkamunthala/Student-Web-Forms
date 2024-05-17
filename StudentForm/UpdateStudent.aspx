<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateStudent.aspx.cs" Inherits="StudentForm.UpdateStudent" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 448px;
            height: 29px;
        }
        .auto-style2 {
            height: 29px;
            width: 783px;
        }
        .auto-style3 {
            width: 448px;
            height: 33px;
        }
        .auto-style4 {
            height: 33px;
            width: 783px;
        }
        .auto-style5 {
            height: 50px;
            width: 1234px;
            table-layout: auto;
        }
        .auto-style6 {
            width: 448px;
            height: 35px;
        }
        .auto-style7 {
            height: 35px;
            width: 783px;
        }
        .auto-style8 {
            height: 24px;
            width: 783px;
        }
        .auto-style9 {
            width: 783px;
        }
        .auto-style10 {
            height: 30px;
            width: 783px;
        }
        .auto-style11 {
            height: 33px;
        }
    </style>
</head>
        <body>
    <div class="container">
        <div class="form-container">
            <form id="form2" runat="server">
                <div>
                    <div>
                        <h1 text-align="center" color="red" class="auto-style5" style="border: medium double #808080; font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; font-style: normal; background-color: #808080; text-align: center; ">Student Update Details</h1>
                </div>
                </div>
     

    
    <table class="w-100" style="background-color: #FFFFFF; border-style: solid; border-width: thin">
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Student Id" BackColor="White" Font-Bold="True" Font-Italic="False" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server" BorderColor="#666666" BorderStyle="Solid" Width="780px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*Please Enter Student Id    " ForeColor="#FF3300" SetFocusOnError="True" ValidationGroup="upd"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage=" *please Enter Integers" ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="[0-9]{1,}" ValidationGroup="upd"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 448px; height: 24px">
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Student Name" BackColor="White" Font-Bold="True" Font-Italic="False" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox2" runat="server" BorderColor="#666666" BorderStyle="Solid" Width="777px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*Please Enter Name      " ForeColor="#FF3300" SetFocusOnError="True" ValidationGroup="upd"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="  *please enter Capital letter" ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="[A-Z]{1}[A-Z,a-z]{1,}" ValidationGroup="upd"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 448px">
                <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Image" BackColor="White" Font-Bold="True" Font-Italic="False" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:RadioButton ID="img1" runat="server" GroupName="color" EnableTheming="False"  />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Assests/img1.png" />
                <asp:RadioButton ID="img2" runat="server"  GroupName="color"  />
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Assests/img2.png" />
                <asp:RadioButton ID="img3" runat="server"  GroupName="color" />
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Assests/img3.png" />
                <asp:RadioButton ID="img4" runat="server"  GroupName="color" />
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Assests/img4.png" />
            </td>
        </tr>
        <tr>
            <td style="width: 448px; height: 24px;">
                <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Gender" BackColor="White" Font-Bold="True" Font-Italic="False" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Email" BackColor="White" Font-Bold="True" Font-Italic="False" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox3" runat="server" BorderColor="#666666" BorderStyle="Solid" Width="779px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="*Email Id is required     " Font-Overline="False" ForeColor="#FF3300" SetFocusOnError="True" ControlToValidate="TextBox3" ValidationGroup="upd"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage=" *Enter Valid Email Id" ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="^[\w\.-]+@[a-zA-Z\d\.-]+\.[a-zA-Z]{2,}$" Visible="False" ValidationGroup="upd"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 448px">
                <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="PhoneNumber" BackColor="White" Font-Bold="True" Font-Italic="False" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox4" runat="server" BorderColor="#666666" BorderStyle="Solid" Width="777px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*Phone Number is Required      " ForeColor="#FF3300" SetFocusOnError="True" ValidationGroup="upd"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage=" *Enter Valid phone Number" ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="[1-9]{1}[0-9]{9}" ValidationGroup="upd"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 448px; height: 24px">
                <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="Address" BackColor="White" Font-Bold="True" Font-Italic="False" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox5" runat="server" BorderColor="#666666" BorderStyle="Solid" Width="778px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="*Address is Required" ForeColor="#FF3300" SetFocusOnError="True" ValidationGroup="upd"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 448px">
                <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="Date Of Joining" BackColor="White" Font-Bold="True" Font-Italic="False" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Date" BorderColor="#666666" BorderStyle="Solid" Width="780px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="*Date Of Joining is Required    " ForeColor="#FF3300" SetFocusOnError="True" ValidationGroup="upd"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 448px; height: 30px">
                <asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="Branches" BackColor="White" Font-Bold="True" Font-Italic="False" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="779px" >
                    <asp:ListItem>Computer Science Engineering</asp:ListItem>
                    <asp:ListItem>Electronics And Communication Engineering</asp:ListItem>
                    <asp:ListItem>Civil Engineering</asp:ListItem>
                    <asp:ListItem>Mechanical Engineering</asp:ListItem>
                    <asp:ListItem>Mechatronics Engineering</asp:ListItem>
                    <asp:ListItem>Aero Nautical Engineering</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 448px">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
       
        <tr>
            <td class="auto-style11" colspan="2">
                <asp:Button ID="Button4" runat="server" BackColor="#FF6600" ForeColor="White" OnClick="Update_Button" Text="Update" Width="200px" Height="75px" ValidationGroup="upd" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" BackColor="#FF3300" ForeColor="White" OnClick="Delete_Button" Text="Delete" Width="200px" Height="75px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button7" runat="server" BackColor="#33CC33" ForeColor="White" OnClick="HomePage_Button" Text="Home" Height="75px" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>

    
    </form>
            </div>
        </div>
            
</body>
</html>
