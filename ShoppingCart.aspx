<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="WebThucTap.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="noidung" runat="server">
    <style>
        table {
            border-collapse: collapse;
        }

        th {
            font-size: smaller;
        }

        td, th {
            padding: 3px 5px;
            border: 1px solid #808080;
        }
    </style>
    <%
        Response.Write("<input type='hiden' name='action' value='update' />\n\n");
        decimal total = 0;
        List<WebThucTap.CartItem> li = (List<WebThucTap.CartItem>)Session["Cart"];

        if (li != null)
        {
            Response.Write("<table>");
            Response.Write("<tr><th>Mã sp</th><th>Tên sản phẩm</th>");
            Response.Write("<th>Mã loại</th><th>Mô tả</th>");
            Response.Write("<th>Tiêu đề</th>");
            Response.Write("<th>Hình ảnh</th><th>Giá tiền</th>");
            Response.Write("<th>Số lượng</th><th>Thành tiền</th>");
            Response.Write("<th>Xoá</th></tr>\n");

            foreach (var item in li)
            {
                Response.Write("<tr>");
                Response.Write("<td aling='center'>" + item.product.Pid);
                Response.Write("<input type='hidden' name='pid' value='" + item.product.Pid + "' />");
                Response.Write("</td>");
                Response.Write("<td>" + item.product.ProdName + "</td>\n");
                Response.Write("<td aling='center'>" + item.product.Categoryid + "</td>\n");
                Response.Write("<td aling='center'>" + item.product.Description + "</td>\n");
                Response.Write("<td aling='center'>" + item.product.MetaTitle + "</td>\n");
                Response.Write("<td align='center'><img src='" + item.product.ImagePath + "' width='100'/></td>\n");
                Response.Write("<td align='center'>" + item.product.Price + "</td>\n");
                Response.Write("<td align='center'>");
                Response.Write("<input type='text' name='qq' size='5' value='" + item.quantity + "' />\n");
                Response.Write("</td>");
                Response.Write("<td align='center'>" + (item.quantity * item.product.Price).ToString("N0") + "</td>\n");
                Response.Write("<td align='center'><a href='ShoppingCart.aspx?action=del&pid=" + item.product.Pid + "'>Xóa</a></td>\n");
                Response.Write("</tr>\n\n");
                total += item.quantity * item.product.Price;
            }
            Response.Write("</table>");
            Response.Write("<p>Tổng tiền các sản phẩm là:<b> " + total.ToString("N0") + " VNĐ</b></p>");
            Response.Write("<input type='submit' value='Update' name='sb'/>");
            Response.Write("<p><a href='ShoppingCart.aspx?action=delall'>Xóa tất cả</a></p>\n");
            //Response.Write("<p><a href='#'>Đặt hàng</a></p>\n");
        }
        else
        {
            Response.Write("<i>Chưa có sản phẩm nào.</i>");
        }
    %>
</asp:Content>
