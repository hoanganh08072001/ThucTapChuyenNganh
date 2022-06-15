<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductByCart.aspx.cs" Inherits="WebThucTap.ProductByCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
            <%--Pid:
            <asp:Label ID="PidLabel" runat="server" Text='<%# Eval("Pid") %>' />
            <br />
            Categoryid:
            <asp:Label ID="CategoryidLabel" runat="server" Text='<%# Eval("Categoryid") %>' />
            <br />--%>
            ProdName:
            <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' />
            <br />
            <%--MetaTitle:
            <asp:Label ID="MetaTitleLabel" runat="server" Text='<%# Eval("MetaTitle") %>' />
            <br />--%>
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            <%--ImagePath:
            <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Eval("ImagePath") %>' />
            <br />--%>
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            <asp:TemplateField HeaderText="Image Path">
                <itemtemplate>
                    <a href='ProductDetails.aspx?Pid=<%#Eval("Pid") %>&categoryid=<%#Eval("Categoryid") %>&name=<%#Eval("ProdName") %>&image=<%#Eval("ImagePath") %>&metatitle=<%#Eval("MetaTitle") %>&description=<%#Eval("Description") %>&price=<%#Eval("Price") %>'>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Height="300" Width="300" Style="border-radius: 25px" />
                    </a>
                </itemtemplate>
            </asp:TemplateField>
            <br />
            <button class="btn">
                <a href='ShoppingCart.aspx?Pid=<%#Eval("Pid") %>&categoryid=<%#Eval("Categoryid") %>&name=<%#Eval("ProdName") %>&image=<%#Eval("ImagePath") %>&metatitle=<%#Eval("MetaTitle") %>&description=<%#Eval("Description") %>&price=<%#Eval("Price") %>&action=add'>Buy</a>
            </button>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThucTapConnectionString %>"
        SelectCommand="SELECT Pid, p.Categoryid, ProdName, p.MetaTitle, Description, ImagePath, Price
        FROM Product p, Category c
        WHERE p.Categoryid = c.Categoryid and c.Categoryid = @categoryid">
        <SelectParameters>
            <asp:QueryStringParameter Name="Categoryid" Type="Int32" QueryStringField="Categoryid" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
