<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetail.aspx.cs" Inherits="StudentForm.StudentDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>UserDetails</title>
    <link rel="stylesheet" href="../bootstrap.css" />
    <style type="text/css">
        .button{
            display:flex;
            justify-content:flex-end;
            padding-right: 120px;
            padding-top:50px;
        }
        .button1{
            display:flex;
            justify-content:start;
            padding-left: 120px;
            padding-top: 50px;
        }
    
    
        .auto-style2 {
            margin-top: 0px;
        }
        .auto-style3 {
            margin-left: 0px;
            margin-right: 50px;
        }
        .auto-style5 {
            width: 100%;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
            <table class="auto-style5">
                <tr>
                    <td colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; text-align: center; background-color: #808080; border: medium double #808080; margin: auto; padding: inherit; table-layout: auto">Student Login Details</td>
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
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="1237px">
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
                    <td colspan="2">
            
            <asp:Button ID="Button6" runat="server" Text="Update" BackColor="#FF9933" ForeColor="#663300" OnClick="Update_Button" Width="201px" BorderStyle="Groove" BorderWidth="0px" Font-Bold="True" Height="75px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button7" runat="server" BackColor="Red" BorderColor="Red" BorderStyle="None" BorderWidth="0px" CssClass="auto-style2" Font-Bold="True" ForeColor="White" Height="74px" OnClick="Delete_Button" Text="Delete" Width="199px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button8" runat="server" BackColor="#009933" ForeColor="White" OnClick="LogOut_Button" Text="LogOut" BorderWidth="0px" Font-Bold="True" Height="75px" Width="199px" CssClass="auto-style3" />
            
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
         </table>
            <br />
            
        

      
       
         <br />
         <br />
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
            
        

      
       
    </form>
</body>
</html>

