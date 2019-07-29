using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisteringComplete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        layDuLieu();
    }

    private void layDuLieu()
    {
        string txtHoTen = ((TextBox)PreviousPage.FindControl("txtHoTen")).Text;
        string txtNgaySinh = ((TextBox)PreviousPage.FindControl("txtNgaySinh")).Text;
        string txtThanhPho = ((TextBox)PreviousPage.FindControl("txtThanhPho")).Text;
        string txtDiaChi = ((TextBox)PreviousPage.FindControl("txtDiaChi")).Text;
        string txtSDT = ((TextBox)PreviousPage.FindControl("txtSDT")).Text;
        string txtSDTDiDong = ((TextBox)PreviousPage.FindControl("txtSDTDiDong")).Text;
        string txtEmail = ((TextBox)PreviousPage.FindControl("txtEmail")).Text;
        string txtHocVan = ((TextBox)PreviousPage.FindControl("txtHocVan")).Text;
        string txtNgoaiNgu = ((TextBox)PreviousPage.FindControl("txtNgoaiNgu")).Text;
        string txtKyNang = ((TextBox)PreviousPage.FindControl("txtKyNang")).Text;
        string txtNamKinhNgiem = ((TextBox)PreviousPage.FindControl("txtNamKinhNghiem")).Text;
        string txtKinhNghiem = ((TextBox)PreviousPage.FindControl("txtKinhNghiem")).Text;
        string txtMongMuon = ((TextBox)PreviousPage.FindControl("txtMongMuon")).Text;
        string txtLuong = ((TextBox)PreviousPage.FindControl("txtLuong")).Text;
        string gioiTinh = ((DropDownList)PreviousPage.FindControl("cbxGioiTinh")).SelectedValue;
        string honNhan = ((DropDownList)PreviousPage.FindControl("cbxTTHonNhan")).SelectedValue;
        string hocVan = ((DropDownList)PreviousPage.FindControl("cbxHocVan")).SelectedValue;

        lblHS.Text = ("Họ & tên: " + txtHoTen + "</br>" +
                     "Ngày sinh: "+ txtNgaySinh + "</br>"+
                     "Giới tính: "+ gioiTinh + "</br>"+
                     "Trình trạng hôn nhân: "+ honNhan + "</br>"+
                     "Địa chỉ: " + txtDiaChi + "</br>"+
                     "Tỉnh/Thành phố: "+ txtThanhPho + "</br>"+
                     "Số điện thoại: "+ txtSDT + "</br>"+
                     "Số điện thoại di động: "+ txtSDTDiDong + "</br>"+
                     "Email:  "+ txtEmail + "</br>"+
                     "Trình độ học vấn: "+ hocVan + "</br>"+
                     "Thông tin học vấn: "+ txtHocVan + "</br>"+
                     "Ngoại ngữ: "+ txtNgoaiNgu + "</br>"+
                     "Kỹ năng: "+ txtKyNang + "</br>"+
                     "Số năm kinh nghiệm: "+ txtNamKinhNgiem + "</br>"+
                     "Kinh nghiệm làm việc: "+ txtKinhNghiem + "</br>"+
                     "Việc làm mong muốn: "+ txtMongMuon + "</br>"+
                     "Mức lương thỏa thuận: "+ txtLuong +" VNĐ"+ "</br>");
    }
}