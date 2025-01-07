using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaitTap2
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // Thêm các mục vào DropDownList
                DropDownList1.Items.Add("Thịt Heo");
                DropDownList1.Items.Add("Cơm Tấm");
                DropDownList1.Items.Add("Canh Cá");
                DropDownList1.Items.Add("Kem Cuộn");
            }
        }

        // Xử lý nút thêm bánh
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                // Lấy tên bánh từ DropDownList
                string tenbanh = DropDownList1.SelectedItem.Text;

                // Lấy số lượng từ TextBox và kiểm tra hợp lệ
                if (int.TryParse(TextBox1.Text, out int soluong) && soluong > 0)
                {
                    // Thêm bánh và số lượng vào ListBox
                    string kq = string.Format("{0}, {1}", tenbanh, soluong);
                    ListBox1.Items.Add(kq);
                }
                else
                {
                    // Hiển thị lỗi nếu số lượng không hợp lệ
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Vui lòng nhập số lượng hợp lệ (số nguyên dương)!');", true);
                }
            }
            catch (Exception ex)
            {
                // Xử lý lỗi
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Đã xảy ra lỗi: {ex.Message}');", true);
            }
        }

        // Xử lý nút xóa bánh
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            for (int i = ListBox1.Items.Count - 1; i >= 0; i--)
            {
                if (ListBox1.Items[i].Selected)
                {
                    ListBox1.Items.RemoveAt(i);
                }
            }
        }

        // Xử lý nút in hóa đơn
        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                // Tạo header hóa đơn
                string kq = "<div class='h3 text-center'style='color:red;'>Hóa Đơn Đặt Hàng</div>";
                kq += "<div class='border p-3'style='color:red;'>";

                // Thu thập thông tin từ người dùng
                kq += string.Format("Khách hàng: <b>{0}</b><br>", txthoten.Text);
                kq += string.Format("Địa chỉ: <b>{0}</b><br>", txtdiachi.Text);
                kq += string.Format("Mã số thuế: <b>{0}</b><br>", txtmasothue.Text);

                // Kiểm tra và thêm danh sách bánh vào hóa đơn
                if (ListBox1.Items.Count > 0)
                {
                    kq += "Đặt các loại bánh sau:";
                    kq += "<table class='table border' style='color:red;'><tr><th>Tên Bánh</th><th>Số Lượng</th></tr>";

                    foreach (ListItem item in ListBox1.Items)
                    {
                        string[] data = item.Text.Split(',');
                        if (data.Length == 2)
                        {
                            kq += string.Format("<tr><td>{0}</td><td>{1}</td></tr>", data[0].Trim(), data[1].Trim());
                        }
                    }

                    kq += "</table>";
                }
                else
                {
                    kq += "<p><i>Không có bánh nào được đặt.</i></p>";
                }

                kq += "</div>";

                // Gán kết quả vào Label
                Label1.Text = kq;
            }
            catch (Exception ex)
            {
                // Xử lý lỗi
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Đã xảy ra lỗi khi tạo hóa đơn: {ex.Message}');", true);
            }
        }

        protected void txthoten_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
