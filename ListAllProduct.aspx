<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListAllProduct.aspx.cs" Inherits="WebThucTap.ListAllProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
            Product Name:
            <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            <asp:TemplateField HeaderText="ImagePath">
                <itemtemplate>
                    <a href='ProductDetails.aspx?Pid=<%#Eval("Pid") %>&categoryid=<%#Eval("Categoryid") %>&name=<%#Eval("ProdName") %>&image=<%#Eval("ImagePath") %>&metatitle=<%#Eval("MetaTitle") %>&description=<%#Eval("Description") %>&price=<%#Eval("Price") %>'>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Height="300" Width="300" Style="border-radius: 25px" />
                    </a>
                </itemtemplate>
            </asp:TemplateField>
            <button class="btn">
                <a href='ShoppingCart.aspx?Pid=<%#Eval("Pid") %>&categoryid=<%#Eval("Categoryid") %>&name=<%#Eval("ProdName") %>&image=<%#Eval("ImagePath") %>&metatitle=<%#Eval("MetaTitle") %>&description=<%#Eval("Description") %>&price=<%#Eval("Price") %>&action=add'>Buy</a>
            </button>
            <br />
        </ItemTemplate>
    </asp:DataList>
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
