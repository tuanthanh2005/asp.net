using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaitTap2
{
    public partial class KiemTraDieuKhien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                KhoiTaoDuLieu();
            }
        }

        private void KhoiTaoDuLieu()
        {
            // khởi tạo rfvNgay
            rfvNgay.Items.Add(new ListItem("-----Chọn Ngày----", ""));
            for (int i = 1; i <= 31; i++)
            {
                rfvNgay.Items.Add(new ListItem(i.ToString(),i.ToString()));
            }
            // khởi tạo rfvThang
            rfvNgay.Items.Add(new ListItem("-----Chọn Tháng----", ""));
            for (int i = 1; i <= 12; i++)
            {
                rfvThang.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            // khởi tạo rfvNam
            rfvNgay.Items.Add(new ListItem("-----Chọn Năm----", ""));
            for (int i = 1970; i <= 2005; i++)
            {
                rfvNam.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        protected void rftTendn_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButDangky_Click(object sender, EventArgs e)
        {
            //b1. Lấy thông tin đăng kí từ client
            string kq = "<ul>";
            kq += $"Họ Tên : <li><i> {rftHoTen.Text} </i></li>";

            kq += $"Tên Đăng Nhập : <li><i> {rftTendn.Text} </i></li>";

            kq += $"Mật Khẩu : <li><i> {rfvMatKhau.Text} </i></li>";
            kq += "</ul>";

            // b2. Hồi Đáp thông tin đăng ký
            KetQua.Text = kq;
        }
    }
}