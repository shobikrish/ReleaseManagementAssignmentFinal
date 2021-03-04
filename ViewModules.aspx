<%@ Page Title="" Language="C#" MasterPageFile="~/Manager.Master" AutoEventWireup="true" CodeBehind="ViewModules.aspx.cs" Inherits="ReleaseManagementAssignment.ViewModules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="module_id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="module_id" HeaderText="module_id" ReadOnly="True" SortExpression="module_id" />
        <asp:BoundField DataField="expected_start_date" HeaderText="expected_start_date" SortExpression="expected_start_date" />
        <asp:BoundField DataField="expected_end_date" HeaderText="expected_end_date" SortExpression="expected_end_date" />
        <asp:BoundField DataField="actual_start_date" HeaderText="actual_start_date" SortExpression="actual_start_date" />
        <asp:BoundField DataField="actual_end_date" HeaderText="actual_end_date" SortExpression="actual_end_date" />
        <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:releasedbConnectionString22 %>" SelectCommand="SELECT * FROM [Modules]"></asp:SqlDataSource>
</asp:Content>
