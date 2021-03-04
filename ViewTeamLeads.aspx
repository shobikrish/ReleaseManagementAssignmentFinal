<%@ Page Title="" Language="C#" MasterPageFile="~/Manager.Master" AutoEventWireup="true" CodeBehind="ViewTeamLeads.aspx.cs" Inherits="ReleaseManagementAssignment.ViewTeamLeads" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="TeamLeadId" HeaderText="TeamLeadId" SortExpression="TeamLeadId" />
        </Columns>
    </asp:GridView>
    <asp:Button ID="ButtonHome" runat="server" Text="Home" OnClick="ButtonHome_Click" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:releasedbConnectionString21 %>" SelectCommand="SELECT DISTINCT [TeamLeadId] FROM [Teams]"></asp:SqlDataSource>
</asp:Content>
