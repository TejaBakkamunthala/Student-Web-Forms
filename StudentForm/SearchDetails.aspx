<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchDetails.aspx.cs" Inherits="StudentForm.SearchDetails" %>

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
        </style>
</head>
<body style="height: 607px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2" style="margin: auto; font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; text-align: center; background-color: #808080; border: medium double #808080; table-layout: auto;">
                        Search Details By Student Id And StudentName<br />
                    </td>
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
                    <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Student Id" BackColor="White" Font-Bold="True" Font-Italic="False" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="670px"></asp:TextBox>
                        <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*Student Id is Required       " ForeColor="#FF3300" SetFocusOnError="True" ValidationGroup="sea"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*Enter Valid Student Id or Student Id is not present" ForeColor="#FF3300" SetFocusOnError="True" ValidationGroup="reg" ValidationExpression="[0-9]{1,}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Student Name" BackColor="White" Font-Bold="True" Font-Italic="False" ForeColor="Black"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="670px"></asp:TextBox>
                        <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*Student Name is Required                      " ForeColor="#FF3300" SetFocusOnError="True" ValidationGroup="reg"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*Enter Valid StudentName Starts With Capital Letter" ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="[A-Z]{1}[A-Za-z]{1,}" ValidationGroup="reg"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
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
                    <td>&nbsp;<asp:Button ID="Button3" runat="server" BackColor="#666666" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="75px" OnClick="Search_Button" Text="Search" Width="200px" ValidationGroup="reg" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button8" runat="server" BackColor="#666666" ForeColor="White" OnClick="HomePage_Button" Text="Home" Height="75px" Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="1222px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="StudentId" HeaderText="Student Id" />
                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                <asp:BoundField DataField="Images" HeaderText="Images" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                                <asp:BoundField DataField="Email" HeaderText="Email" />
                                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" />
                                <asp:BoundField DataField="Address" HeaderText="Address" />
                                <asp:BoundField DataField="DateOfJOining" HeaderText="DateOfJoining" />
                                <asp:BoundField DataField="Branches" HeaderText="Branches" />
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
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        &nbsp;</td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
