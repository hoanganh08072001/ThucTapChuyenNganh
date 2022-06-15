<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="WebThucTap.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" AutoGenerateRows="False" DataKeyNames="Pid" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="Pid" HeaderText="Pid" ReadOnly="True" SortExpression="Pid" />
            <asp:BoundField DataField="Categoryid" HeaderText="Categoryid" SortExpression="Categoryid" />
            <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
            <asp:BoundField DataField="MetaTitle" HeaderText="MetaTitle" SortExpression="MetaTitle" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <%--<asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" />--%>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:TemplateField HeaderText="ImagePath">
                <ItemTemplate>
                    <asp:Image ID="img" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Height="200" Width="300" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Buy">
                <ItemTemplate>
                    <button class="btn btn-buy">
                        <a href='ShoppingCart.aspx?Pid=<%#Eval("Pid") %>&categoryid=<%#Eval("Categoryid") %>&name=<%#Eval("ProdName") %>&image=<%#Eval("ImagePath") %>&metatitle=<%#Eval("MetaTitle") %>&description=<%#Eval("Description") %>&price=<%#Eval("Price") %>&action=add'>Buy</a>
                    </button>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThucTapConnectionString %>"
        SelectCommand="SELECT * FROM [Product] where Pid = @pid">
        <SelectParameters>
            <asp:QueryStringParameter Name="Pid" Type="Int32" QueryStringField="Pid" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
