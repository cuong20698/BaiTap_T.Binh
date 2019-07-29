<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobRegister.aspx.cs" Inherits="JobRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        div {
            width: 810px;
            font-family: Arial, Helvetica, sans-serif;
            height: auto;
            margin-left: auto;
            margin-right: auto;
            padding: 0;
        }

        .tb {
            color: #34c318;
            font-weight: bold;
            text-align: center;
            font-size: 30px;
        }

        .tieude {
            background-color: #077d1f;
            color: white;
        }

        .cell-left {
            color: #077d1f;
            text-align: right;
            height: auto;
        }

        table {
            width: 814px;
            font-size: small;
            height: 257px;
        }

        .txt {
            border-width: 1px;
            border-style: solid;
            border-color: #4aca1c;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="tb" colspan="3">ĐĂNG KÝ THÔNG TIN VIỆC LÀM</td>
                </tr>
                <tr>
                    <td class="tieude" colspan="3">Thông tin cá nhân</td>
                </tr>
                <tr>
                    <td class="cell-left">Họ &amp; tên:</td>
                    <td class="auto-style3">
                        <asp:TextBox class="txt" ID="txtHoTen" runat="server" Width="242px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ErrorMessage="Nhập họ &amp; tên" ForeColor="Red" ControlToValidate="txtHoTen"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cell-left">Ngày tháng năm sinh:</td>
                    <td class="auto-style3">
                        <asp:TextBox class="txt" ID="txtNgaySinh" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="cmvNgaySinh" runat="server" ControlToValidate="txtNgaySinh" ErrorMessage="Nhập ngày sinh" ForeColor="Red" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cell-left">Giới tính:</td>
                    <td>
                        <asp:DropDownList class="txt" ID="cbxGioiTinh" runat="server">
                            <asp:ListItem Value="0">Nam</asp:ListItem>
                            <asp:ListItem Value="1">Nữ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="cell-left">Tình trạng hôn nhân:</td>
                    <td class="auto-style4">
                        <asp:DropDownList class="txt" ID="cbxTTHonNhan" runat="server">
                            <asp:ListItem>Độc thân</asp:ListItem>
                            <asp:ListItem>Có gia đình</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="tieude" colspan="3">Thông tin liên lạc</td>
                </tr>
                <tr>
                    <td class="cell-left">Địa chỉ:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtDiaChi" runat="server" Width="409px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvDiaChi" runat="server" ErrorMessage="Nhập địa chỉ" ForeColor="Red" ControlToValidate="txtDiaChi"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cell-left">Tỉnh/Thành phố:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtThanhPho" runat="server" Width="242px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvThanhPho" runat="server" ErrorMessage="Nhập tỉnh/thành phố" ForeColor="Red" ControlToValidate="txtThanhPho"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cell-left">Số điện thoại:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtSDT" runat="server" Width="242px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revSDT" runat="server" ControlToValidate="txtSDT" ErrorMessage="Số điện thoại không hợp lệ" ForeColor="Red" ValidationExpression="(0( \d|\d ))?\d\d \d\d(\d \d| \d\d )\d\d"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cell-left">Số điện thoại di động:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtSDTDiDong" runat="server" Width="242px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revSDTDiDong" runat="server" ControlToValidate="txtSDTDiDong" ErrorMessage="Số điện thoại di động không hợp lệ" ForeColor="Red" ValidationExpression="(0( \d|\d ))?\d\d \d\d(\d \d| \d\d )\d\d"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cell-left">Email:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtEmail" runat="server" Width="329px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không hợp lệ" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tieude" colspan="3">Trình độ học vấn</td>
                </tr>
                <tr>
                    <td class="cell-left">Trình độ học vấn:</td>
                    <td>
                        <asp:DropDownList class="txt" ID="cbxHocVan" runat="server" Width="150px">
                            <asp:ListItem>Chọn</asp:ListItem>
                            <asp:ListItem>Đại học</asp:ListItem>
                            <asp:ListItem>Trung cấp</asp:ListItem>
                            <asp:ListItem>Cao Đẳng</asp:ListItem>
                            <asp:ListItem>Phổ thông</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="cell-left">Thông tin về học vấn:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtHocVan" runat="server" Width="409px" Rows="3" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="cell-left">Ngoại ngữ:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtNgoaiNgu" runat="server" Width="409px" Rows="3" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="cell-left">Kỹ năng:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtKyNang" runat="server" Width="409px" Rows="3" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="tieude" colspan="3">Kinh nghiệm làm việc</td>
                </tr>
                <tr>
                    <td class="cell-left">Số năm kinh nghiệm:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtNamKinhNhiem" runat="server" Width="177px"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="cell-left">Kinh nghiệm làm việc:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtKinhNghiem" runat="server" Width="409px" Rows="3" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="tieude" colspan="3">Mong muốn của bản thân</td>
                </tr>
                <tr>
                    <td class="cell-left">Việc làm mong muốn:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtMongMuon" runat="server" Width="409px" Rows="3" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="cell-left">Mức lương thỏa thuận:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtNamKinhNhiem0" runat="server" Width="177px"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="Label1" runat="server" Text="VNĐ" ForeColor="#077D1F"></asp:Label>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <asp:Button ID="btnGuiHoSo" runat="server" Text="Gửi hồ sơ" Style="margin-right: 50px" />
                        <asp:Button ID="btnXoaForm" runat="server" Text="Xóa form" OnClick="btnXoaForm_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
