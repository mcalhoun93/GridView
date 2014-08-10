<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [Email] = ?" InsertCommand="INSERT INTO [Customers] ([Email], [LastName], [FirstName], [Address], [City], [State], [ZipCode], [PhoneNumber]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [LastName] = ?, [FirstName] = ?, [Address] = ?, [City] = ?, [State] = ?, [ZipCode] = ?, [PhoneNumber] = ? WHERE [Email] = ?">
            <DeleteParameters>
                <asp:Parameter Name="Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="ZipCode" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="ZipCode" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        Email:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Last Name:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        First Name:
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        Address:
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        City:
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        State:
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        Zip Code:
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        Phone Number:
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="Insert Customer" />
        <br />
        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
