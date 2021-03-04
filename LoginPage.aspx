<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ReleaseManagementAssignment.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    h1{
                background-color:aqua;
                text-align:center;
            }
            #ButtonLogin
            {
                background-color: #4CAF50; 
                border: none;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Welcome</h1>
            <table>
                   <tr>
                    <td>
                        <asp:Label ID="Usrnme" runat="server" Text="EmployeeID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="UsrTxtbox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UsrTxtbox" runat="server" ErrorMessage="Please Enter the ID">

                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="passwrd" runat="server" Text="Password" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Usrpwd" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Usrpwd" runat="server" ErrorMessage="Please Enter the Password">

                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
