<%@ Page Title="" Language="C#" MasterPageFile="~/Manager.Master" AutoEventWireup="true" CodeBehind="ViewAllProjects.aspx.cs" Inherits="ReleaseManagementAssignment.ViewAllProjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
        <asp:BoundField DataField="Pid" HeaderText="Pid" SortExpression="Pid" />
        <asp:BoundField DataField="ProjManagerId" HeaderText="ProjManagerId" SortExpression="ProjManagerId" />
    </Columns>
</asp:GridView>
    <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click1" />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:releasedbConnectionString15 %>" SelectCommand="SELECT [Pname], [Pid], [ProjManagerId] FROM [ProjectList]"></asp:SqlDataSource>
        
</asp:Content>
