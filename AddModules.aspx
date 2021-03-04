<%@ Page Title="" Language="C#" MasterPageFile="~/Manager.Master" AutoEventWireup="true" CodeBehind="AddModules.aspx.cs" Inherits="ReleaseManagementAssignment.AddModules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="LabelModuleID" runat="server" Text="Module ID:"></asp:Label></td>

            <td>
                <asp:TextBox ID="TextBoxModuleID" runat="server"></asp:TextBox></td>
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
    Project ID:
    <asp:DropDownList ID="DropDownListPid" runat="server" DataSourceID="SqlDataSource2" DataTextField="ProId" DataValueField="ProId">
</asp:DropDownList>
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:releasedbConnectionString17 %>" SelectCommand="SELECT [ProId] FROM [Project]"></asp:SqlDataSource>
    <br />
    Developer ID:
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="developer_id" DataValueField="developer_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:releasedbConnectionString24 %>" SelectCommand="SELECT [developer_id] FROM [developer]"></asp:SqlDataSource>
    <br />
    
    <br />
    Tester ID:
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="EmployeeName" DataValueField="EmployeeName"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:releasedbConnectionString19 %>" SelectCommand="SELECT [tester_id] FROM [tester]">
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="ButtonAddModule" runat="server" Text="Add Module" OnClick="ButtonAddModule_Click" />
    
    <asp:Label ID="Message" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Button ID="ButtonHome" runat="server" Text="Home" OnClick="ButtonHome_Click" />
</asp:Content>
