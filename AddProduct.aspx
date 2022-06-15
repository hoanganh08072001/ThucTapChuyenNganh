<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WebThucTap.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Pid" DataSourceID="SqlDataSource1" OnItemInserting="FormView1_ItemInserting" DefaultMode="Insert">
    <EditItemTemplate>
        Pid:
        <asp:Label ID="PidLabel1" runat="server" Text='<%# Eval("Pid") %>' />
        <br />
        Categoryid:
        <asp:TextBox ID="CategoryidTextBox" runat="server" Text='<%# Bind("Categoryid") %>' />
        <br />
        ProdName:
        <asp:TextBox ID="ProdNameTextBox" runat="server" Text='<%# Bind("ProdName") %>' />
        <br />
        MetaTitle:
        <asp:TextBox ID="MetaTitleTextBox" runat="server" Text='<%# Bind("MetaTitle") %>' />
        <br />
        Description:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        ImagePath:
        <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' />
        <br />
        Price:
        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Product id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="PidTextBox" runat="server" Text='<%# Bind("Pid") %>' />
        <br />
        <br />
        Category id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="Categoryid" SelectedValue='<%# Bind("Categoryid") %>'>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThucTapConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
        <br />
        <br />
        Product Name:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ProdNameTextBox" runat="server" Text='<%# Bind("ProdName") %>' />
        <br />
        <br />
        Meta Title:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="MetaTitleTextBox" runat="server" Text='<%# Bind("MetaTitle") %>' />
        <br />
        <br />
        Description:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        <br />
        Image Path:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        Pid:
        <asp:Label ID="PidLabel" runat="server" Text='<%# Eval("Pid") %>' />
        <br />
        Categoryid:
        <asp:Label ID="CategoryidLabel" runat="server" Text='<%# Bind("Categoryid") %>' />
        <br />
        ProdName:
        <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Bind("ProdName") %>' />
        <br />
        MetaTitle:
        <asp:Label ID="MetaTitleLabel" runat="server" Text='<%# Bind("MetaTitle") %>' />
        <br />
        Description:
        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        ImagePath:
        <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Bind("ImagePath") %>' />
        <br />
        Price:
        <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThucTapConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [Pid] = @Pid" InsertCommand="INSERT INTO [Product] ([Pid], [Categoryid], [ProdName], [MetaTitle], [Description], [ImagePath], [Price]) VALUES (@Pid, @Categoryid, @ProdName, @MetaTitle, @Description, @ImagePath, @Price)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Categoryid] = @Categoryid, [ProdName] = @ProdName, [MetaTitle] = @MetaTitle, [Description] = @Description, [ImagePath] = @ImagePath, [Price] = @Price WHERE [Pid] = @Pid">
    <DeleteParameters>
        <asp:Parameter Name="Pid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Pid" Type="Int32" />
        <asp:Parameter Name="Categoryid" Type="Int32" />
        <asp:Parameter Name="ProdName" Type="String" />
        <asp:Parameter Name="MetaTitle" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="ImagePath" Type="String" />
        <asp:Parameter Name="Price" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Categoryid" Type="Int32" />
        <asp:Parameter Name="ProdName" Type="String" />
        <asp:Parameter Name="MetaTitle" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="ImagePath" Type="String" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="Pid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
