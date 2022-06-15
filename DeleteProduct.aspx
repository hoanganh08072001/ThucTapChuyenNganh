<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeleteProduct.aspx.cs" Inherits="WebThucTap.DeleteProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Pid" HeaderText="Product id" ReadOnly="True" SortExpression="Pid" />
            <asp:BoundField DataField="Categoryid" HeaderText="Category id" SortExpression="Categoryid" />
            <asp:BoundField DataField="ProdName" HeaderText="Product Name" SortExpression="ProdName" />
            <asp:BoundField DataField="MetaTitle" HeaderText="Meta Title" SortExpression="MetaTitle" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <%--<asp:BoundField DataField="ImagePath" HeaderText="Image Path" SortExpression="ImagePath" />--%>
            <asp:TemplateField HeaderText="ImagePath">
                <itemtemplate>
                    <%--<a href='ProductDetails.aspx?Pid=<%#Eval("Pid") %>&categoryid=<%#Eval("Categoryid") %>&name=<%#Eval("ProdName") %>&image=<%#Eval("ImagePath") %>&metatitle=<%#Eval("MetaTitle") %>&description=<%#Eval("Description") %>&price=<%#Eval("Price") %>'>--%>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Height="300" Width="300" style="border-radius: 25px" />
                    <%--</a>--%>
                </itemtemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick='return confirm("Bạn có chắc chắn muốn xóa sản phẩm này không?")'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="Pid" DataNavigateUrlFormatString="EditProduct.aspx?Pid={0}" Text="Edit" HeaderText="Edit" />
        </Columns>
    </asp:GridView>
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
