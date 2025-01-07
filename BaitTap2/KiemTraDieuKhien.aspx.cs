using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaitTap2
{
    public partial class KiemTraDieuKhien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                KhoiTaoDuLieu();
            }
        }

        private void KhoiTaoDuLieu()
        {
            // Khởi tạo dữ liệu cho DropDownList Ngày
            rfvNgay.Items.Add(new ListItem("-----Chọn Ngày-----", ""));
            for (int i = 1; i <= 31; i++)
            {
                rfvNgay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            // Khởi tạo dữ liệu cho DropDownList Tháng
            rfvThang.Items.Add(new ListItem("-----Chọn Tháng-----", ""));
            for (int i = 1; i <= 12; i++)
            {
                rfvThang.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            // Khởi tạo dữ liệu cho DropDownList Năm
            rfvNam.Items.Add(new ListItem("-----Chọn Năm-----", ""));
            for (int i = 1970; i <= 2005; i++)
            {
                rfvNam.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        protected void ButDangky_Click(object sender, EventArgs e)
        {
          

            // Lấy thông tin đăng ký từ client
            string kq = "<ul>";
            kq += $"<li>Họ Tên: <i>{rftHoTen.Text}</i></li>";
            kq += $"<li>Tên Đăng Nhập: <i>{rftTendn.Text}</i></li>";
            kq += $"<li>Mật Khẩu: <i>{new string('*', rfvMatKhau.Text.Length)}</i></li>";  // Ẩn mật khẩu bằng ký tự *
            kq += $"<li>Ngày Sinh: <i>{rfvNgay.SelectedValue}/{rfvThang.SelectedValue}/{rfvNam.SelectedValue}</i></li>";
            kq += "</ul>";

            // Hồi đáp thông tin đăng ký
            KetQua.Text = kq;
        }
    }
}
