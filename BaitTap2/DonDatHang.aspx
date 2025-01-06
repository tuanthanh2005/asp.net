<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="BaitTap2.DonDatHang" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Ký Thông Tin</title>
    <!-- Liên kết tới thư viện Bootstrap cho thiết kế giao diện đẹp và dễ sử dụng -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Tạo khoảng cách giữa các phần trong form */
        .form-section {
            margin-bottom: 20px;
        }
        /* Căn giữa và tạo khoảng cách phía dưới cho tiêu đề form */
        .form-header {
            text-align: center;
            margin-bottom: 20px;
        }
        /* Thêm viền cho container */
        .container {
            box-sizing: border-box;  /* Đảm bảo padding và border không làm thay đổi kích thước */
            border: 2px solid #007bff; /* Tạo viền màu xanh */
            border-radius: 10px;    /* Bo tròn các góc */
            padding: 20px;          /* Khoảng cách bên trong */
            background-color: #f8f9fa; /* Màu nền nhạt */
        }
    </style>
</head>
<body>
    <!-- Form ASP.NET với khả năng xử lý sự kiện từ phía server -->
    <form id="form1" runat="server">
        <!-- Container với viền bao quanh -->
        <div class="container">
            <!-- Tiêu đề chính của form -->
            <h3 class="form-header">Đơn Đặt Hàng</h3>
            
            <!-- Phần nhập thông tin khách hàng -->
            <div class="form-section">
                <label for="txthoten" class="form-label">Khách Hàng:</label>
                <!-- TextBox để nhập tên khách hàng -->
                <asp:TextBox ID="txthoten" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <!-- Phần nhập địa chỉ -->
            <div class="form-section">
                <label for="txtdiachi" class="form-label">Địa Chỉ:</label>
                <!-- TextBox để nhập địa chỉ -->
                <asp:TextBox ID="txtdiachi" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <!-- Phần nhập mã số thuế -->
            <div class="form-section">
                <label for="txtmasothue" class="form-label">Mã số thuế:</label>
                <!-- TextBox để nhập mã số thuế -->
                <asp:TextBox ID="txtmasothue" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <!-- Phần chọn loại bánh và thêm vào danh sách -->
            <div class="form-section row">
                <div class="col-md-6">
                    <label for="DropDownList1" class="form-label">Chọn Loại Bánh:</label>
                    <!-- DropDownList để chọn loại bánh -->
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select"></asp:DropDownList>

                    <!-- Nhập số lượng bánh -->
                    <label for="TextBox1" class="form-label mt-3">Số lượng:</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

                    <!-- Nút thêm bánh vào danh sách -->
                    <asp:Button ID="Button1" runat="server" Text="Thêm" CssClass="btn btn-primary mt-3" OnClick="Button1_Click" />
                </div>

                <!-- Danh sách bánh đã được chọn -->
                <div class="col-md-6">
                    <label for="ListBox1" class="form-label">Danh Sách Bánh Được Đặt:</label>
                    <!-- ListBox hiển thị danh sách bánh -->
                    <asp:ListBox ID="ListBox1" runat="server" CssClass="form-control" Height="150px" SelectionMode="Multiple"></asp:ListBox>

                    <!-- Nút xóa các mục đã chọn trong danh sách -->
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/delete.gif" OnClick="ImageButton1_Click" CssClass="btn mt-2" />
                </div>
            </div>

            <!-- Nút in đơn đặt hàng -->
            <div class="form-section text-center">
                <asp:Button ID="Button3" runat="server" Text="In Đơn Đặt Hàng" CssClass="btn btn-success mt-3" OnClick="Button3_Click" />
            </div>

            <!-- Hiển thị thông báo -->
            <div class="form-section">
                <asp:Label ID="Label1" runat="server" CssClass="alert alert-info" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
