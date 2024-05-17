<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetAllStudents.aspx.cs" Inherits="StudentForm.GetAllStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title></title>
   

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            height: 84px;
        }
    </style>
    </head>
    <body>

<form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; text-align: center; background-color: #808080; border: medium double #808080; margin: auto; table-layout: inherit">Get All Students</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="StudentId" ForeColor="Black" GridLines="Vertical" OnRowEditing="GridView1_RowEditing" Width="1228px" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="StudentId" HeaderText="Student Id" ReadOnly="True" />
                        <asp:BoundField DataField="Name" HeaderText="Student Name" />
                        <asp:ImageField DataImageUrlField="Images" HeaderText="Images">
                        </asp:ImageField>
                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="DateOfJOining" HeaderText="Date Of Joining" />
                        <asp:BoundField DataField="Branches" HeaderText="Branches" />
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" >
                        <ControlStyle BackColor="#FF9966" ForeColor="White" />
                        </asp:CommandField>
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                        <ControlStyle BackColor="#FF3300" ForeColor="White" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button7" runat="server" BackColor="#666666" ForeColor="White" OnClick="BackToUpdateStudentDetails" Text="UpdateDetails" Height="75px" Width="200px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button8" runat="server" BackColor="#666666" ForeColor="White" OnClick="HomePage_Button" Text="Home" Height="75px" Width="200px" />
                </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">DateOfJoining1</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>DateOfJoining2</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
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
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button11" runat="server" BackColor="#666666" Font-Bold="True" ForeColor="White" OnClick="GetDetailsByDateOfJoining" Text="GetDetailsByDOJ" Height="40px" Width="200px" />
                </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <br />
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-size: medium">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style3" style="font-size: medium"></td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-size: medium">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="auto-style1">
                    <tr>
                        <td class="auto-style2">StudentName</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style3" style="font-size: medium"></td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-size: medium">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button10" runat="server" BackColor="#666666" ForeColor="White" Height="40px" OnClick="GetDetails" Text="Get" Width="200px" />
            </td>
            <td class="auto-style3" style="font-size: medium">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-size: medium">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style3" style="font-size: medium"></td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-size: medium">
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>StudentName</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Branches</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Computer Science Engineering</asp:ListItem>
                                <asp:ListItem>Civil Engineering</asp:ListItem>
                                <asp:ListItem>Mechatronics Engineering</asp:ListItem>
                                <asp:ListItem>Mechanical Engineering</asp:ListItem>
                            </asp:DropDownList>
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
                        <td>
                            <asp:Button ID="Button12" runat="server" BackColor="#666666" ForeColor="White" Height="40px" OnClick="GetDetailsByBranches" Text="Gett" Width="200px" />
                        </td>
                    </tr>
                </table>
                </td>
            <td class="auto-style3" style="font-size: medium">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-size: medium">
                &nbsp;</td>
            <td class="auto-style3" style="font-size: medium">&nbsp;</td>
        </tr>
    </table>
        </form>
    </body>
</html>
