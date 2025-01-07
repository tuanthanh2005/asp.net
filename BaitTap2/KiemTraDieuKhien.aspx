<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KiemTraDieuKhien.aspx.cs" Inherits="BaitTap2.KiemTraDieuKhien" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hồ Sơ Đăng Kí</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 { width: 100%; margin-bottom: 1px; height: auto; }
        .auto-style2 { text-align: center; color: #0000FF; background-color: #33CCFF; }
        .auto-style3 { width: 263px; }
        .auto-style4 { width: 450px; }
        .auto-style5 { text-align: center; font-size: 12pt; }
        .auto-style6 { text-align: center; color: #FF0000; }
        .container { box-sizing: border-box; border: 2px solid #007bff; border-radius: 10px; padding: 20px; background-color: #f8f9fa; }
        .auto-style7 { text-align: center; color: #FF0000; background-color: #99FF33; }
        .form-control { width: 100%; }
    </style>
</head>
<body style="width: 998px; margin-left: 281px; margin-right: 445px">
    <form id="form1" runat="server">
        <div class="container">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3">
                        <h1><strong>Hồ Sơ Đăng Kí</strong></h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2"><strong>Thông Tin Đăng Nhập</strong></td>
                    <td class="auto-style7"><strong>Hồ Sơ Khách Hàng</strong></td>
                </tr>
                <tr>
                    <td class="auto-style8">Tên đăng nhập:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="rftTendn" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rftTendn" ErrorMessage="(*) Tên đăng nhập là bắt buộc" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td rowspan="13">
                        <asp:Label ID="KetQua" runat="server" Text="Thông tin sẽ hiển thị ở đây"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Mật khẩu:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="rfvMatKhau" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rfvMatKhau" ErrorMessage="(*) Mật khẩu là bắt buộc" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Nhập lại mật khẩu:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="rfvNhapLai" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="rfvMatKhau" ControlToValidate="rfvNhapLai" ErrorMessage="(*) Mật khẩu không khớp" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2"><strong>Thông Tin Cá Nhân</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">Họ tên khách hàng:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="rftHoTen" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Ngày sinh:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="rfvNgay" runat="server"></asp:DropDownList>
                        <asp:DropDownList ID="rfvThang" runat="server"></asp:DropDownList>
                        <asp:DropDownList ID="rfvNam" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Email:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="revEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="revEmail" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ErrorMessage="(*) Email không hợp lệ" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Thu nhập:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="rvThunhap" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Giới tính:</td>
                    <td class="auto-style4">
                        <asp:CheckBox ID="CboxPhai" runat="server" Text="Nam/Nữ" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Địa chỉ:</td>
                    <td class="auto-style4">
                        <asp:ListBox ID="LstDiaChi" runat="server" Width="204px" Height="48px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Điện thoại:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtSDT" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtSDT" ValidationExpression="^\d{10,11}$" ErrorMessage="(*) Số điện thoại phải là 10-11 chữ số" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">    
                        <asp:Button ID="ButDangky" runat="server" Text="Đăng Ký" OnClick="ButDangky_Click" CssClass="btn btn-primary" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
