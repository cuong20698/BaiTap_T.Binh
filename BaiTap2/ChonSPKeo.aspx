<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChonSPKeo.aspx.cs" Inherits="ChonSPKeo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        div.main{
            width:800px;
            margin: auto;
            text-align:center;
            padding:0px;
            font-size:25px;
        }
        .list{
            text-align:left;
        }
        #btnReset{
            border-color:blue;
            background-color:#D8D8D8;
        }
        .auto-style1 {
            width: 333px;
        }
        .auto-style2 {
            text-align: left;
            width: 333px;
        }
        .auto-style3 {
            width: 164px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <table style="width: 100%;" border="1">
            <tr>
                <td colspan="3" style="background-color:#FFBF00; font-weight:bold">CHỌN CÁC SẢN PHẨM BẠN THÍCH</td>
            </tr>
            <tr style="font-weight:bold; color:#DF7401">
                <td class="auto-style1">Danh sách sản phẩm</td>
                <td class="auto-style3">Số lượng</td>
                <td>Sản phẩm được chọn</td>
            </tr>
            <tr style="background-color:#F5DA81">
                <td class="auto-style2">
                    <asp:CheckBox ID="chkTCTC" runat="server" Text="Kẹo trái cây thập cẩm" OnCheckedChanged="chkTCTC_CheckedChanged" /><br />
                    <asp:CheckBox ID="chkNho" runat="server" Text="Kẹo nho" /><br />
                    <asp:CheckBox ID="chkTao" runat="server" Text="Kẹo táo" /><br />
                    <asp:CheckBox ID="chkSTao" runat="server" Text="Sôcôla táo" /><br />
                    <asp:CheckBox ID="chkSDau" runat="server" Text="Kẹo sôcôla đậu phộng" /><br />
                    <asp:CheckBox ID="chkCSua" runat="server" Text="Kẹo coffe sữa" /><br />
                    <asp:CheckBox ID="chkSTC" runat="server" Text="Sôcôla thập cẩm có nhân" />
                </td>
                <td class="auto-style3">
                    <asp:Label ID="lblSLuong" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDSSP" runat="server" TextMode="MultiLine" Rows="6" Height="169px" Width="332px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="background-color:#FF8000">
                    <asp:Button ID="btnReset" runat="server" Text="Bắt đầu chọn lại" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
