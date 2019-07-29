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
    <form id="form1" runat="server" onsubmit="return validateForm()">
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
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="cell-left">Ngày tháng năm sinh:</td>
                    <td class="auto-style3">
                        <asp:TextBox class="txt" ID="txtNgaySinh" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
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
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="cell-left">Tỉnh/Thành phố:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtThanhPho" runat="server" Width="242px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="cell-left">Số điện thoại:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtSDT" runat="server" Width="242px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="cell-left">Số điện thoại di động:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtSDTDiDong" runat="server" Width="242px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="cell-left">Email:</td>
                    <td>
                        <asp:TextBox class="txt" ID="txtEmail" runat="server" Width="329px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
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
                        <asp:TextBox class="txt" ID="txtNamKinhNghiem" runat="server" Width="177px" TextMode="Number"></asp:TextBox>
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
                        <asp:TextBox class="txt" ID="txtLuong" runat="server" Width="177px" TextMode="Number"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="Label1" runat="server" Text="VNĐ" ForeColor="#077D1F"></asp:Label>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <asp:Button ID="btnGuiHoSo" runat="server" Text="Gửi hồ sơ" Style="margin-right: 50px" PostBackUrl="RegisteringComplete.aspx"/>
                        <asp:Button ID="btnXoaForm" runat="server" Text="Xóa form" OnClick="btnXoaForm_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
<script>
    function validateForm() {
        var hoTen = document.getElementById('txtHoTen').value;
        var diaChi = document.getElementById('txtDiaChi').value;
        var thanhpho = document.getElementById('txtThanhPho').value;
        var sdt = document.getElementById('txtSDT').value;
        var sdtdd = document.getElementById('txtSDTDiDong').value;
        var email = document.getElementById('txtEmail').value;
        var hocvan = document.getElementById('txtHocVan').value;
        var ngoaingu = document.getElementById('txtNgoaiNgu').value;
        var kynang = document.getElementById('txtKyNang').value;
        var namkn = document.getElementById('txtNamKinhNghiem').value;
        var kn = document.getElementById('txtKinhNghiem').value;
        var mongmuon = document.getElementById('txtMongMuon').value;
        var luong = document.getElementById('txtLuong').value;
        if (hoTen == "") {
            alert("Nhập họ & tên!");
        }else if (diaChi == "") {
            alert("Nhập địa chỉ!");
        } else if (thanhpho == "") {
            alert("Nhập thành phố!");
        } else if (sdt == "") {
            alert("Nhập số điện thoại!");
        }
        else if (sdtdd == "") {
            alert("Nhập số điện thoại di động!");
        }
        else if (email == "") {
            alert("Nhập địa chỉ email!");
        }
        else if (hocvan == "") {
            alert("Nhập thông tin học vấn!");
        }
        else if (ngoaingu == "") {
            alert("Nhập trình độ ngoại ngữ!");
        }
        else if (kynang == "") {
            alert("Nhập trình độ kỹ năng!");
        }
        else if (namkn == "") {
            alert("Nhập năm kinh nghiệm!");
        }
        else if (kn == "") {
            alert("Nhập kinh nghiệm làm việc!");
        }
        else if (mongmuon == "") {
            alert("Nhập mong muốn!");
        }
        else if (luong == "") {
            alert("Nhập mức lương mong muốn!");
        }
        else
        {
            alert("Gửi thành công!");
            return true;
        }
        return false;
    }
</script>
</html>


