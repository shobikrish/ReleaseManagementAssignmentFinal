<%@ Page Title="" Language="C#" MasterPageFile="~/Manager.Master" AutoEventWireup="true" CodeBehind="AddProject.aspx.cs" Inherits="ReleaseManagementAssignment.AddProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> ADD a Projects</h1>
    <table>
                   <tr>
                    <td>
                        <asp:Label ID="ProjectIdLabel" runat="server" Text="Project Id"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ProIDBox" runat="server" OnTextChanged="ProIDBox_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="ProIDBox" runat="server" ErrorMessage="Please Enter the Project ID">

                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="[0-9]*" ControlToValidate="ProIDBox" runat="server" ErrorMessage="Please enter the Correct Project ID">

                    </asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="ProjectNameLabel" runat="server" Text="Project Name" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ProjNameBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="ProjNameBox" runat="server" ErrorMessage="Please Enter the Project Name">

                        </asp:RequiredFieldValidator>

                    </td>
                </tr>

        <tr>
                    <td>
                        <asp:Label ID="LabelExpectedStartDate" runat="server" Text="Expected Start Date:" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxExpectedStartDate" TextMode="Date" runat="server"></asp:TextBox>
                     </td>
                </tr>


        <tr>
                    <td>
                        <asp:Label ID="LabelExpectedEndDate" runat="server" Text="Expected End Date:" ></asp:Label>
                    </td>
                    <td>
                      <asp:TextBox ID="TextBoxExpectedEndDate" TextMode="Date" runat="server"></asp:TextBox>

                    </td>
                </tr>

         <tr>
                    <td>
                        <asp:Label ID="LabelActualStartDate" runat="server" Text="Actual Start Date:" ></asp:Label>
                    </td>
                    <td>
                           <asp:TextBox ID="TextBoxActualStartDate" TextMode="Date" runat="server"></asp:TextBox>

                    </td>
                </tr>


        <tr>
                    <td>
                        <asp:Label ID="LabelActualEndDate" runat="server" Text="Actual End Date:" ></asp:Label>
                    </td>
                    <td>
                            <asp:TextBox ID="TextBoxActualEndDate" TextMode="Date" runat="server"></asp:TextBox>

                    </td>
                </tr>
    </table>
   <br />
    <asp:Button ID="AddButton" runat="server" Text="Add Projects" OnClick="AddButton_Click1" />
    <br />
    <asp:Label ID="MessageLabel" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="HomeButton" runat="server" Text="Home" OnClick="HomeButton_Click" />
</asp:Content>
