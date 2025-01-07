<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KiemTraDieuKhien.aspx.cs" Inherits="BaitTap2.KiemTraDieuKhien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hồ Sơ Đăng Kí</title>
<!-- Liên kết tới thư viện Bootstrap cho thiết kế giao diện đẹp và dễ sử dụng -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"/>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-bottom: 1px;
            height: 496px;
        }
        .auto-style2 {
            text-align: center;
            color: #0000FF;
            background-color: #33CCFF;
        }
        .auto-style3 {
            width: 263px;
        }
        .auto-style4 {
            width: 450px;
        }
        .auto-style5 {
            text-align: center;
            font-size: 12pt;
        }
        .auto-style6 {
            text-align: center;
            color: #FF0000;
        }
         .container {
     box-sizing: border-box;  /* Đảm bảo padding và border không làm thay đổi kích thước */
     border: 2px solid #007bff; /* Tạo viền màu xanh */
     border-radius: 10px;    /* Bo tròn các góc */
     padding: 20px;          /* Khoảng cách bên trong */
     background-color: #f8f9fa; /* Màu nền nhạt */
 }
  
        .auto-style7 {
            text-align: center;
            color: #FF0000;
            background-color: #99FF33;
        }
  
        </style>
</head>
           <body style="width: 998px; margin-left: 281px; margin-right: 445px">
       <form id="form1" runat="server">
           <div  class="container">
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
                <td class="auto-style3">Tên đăng nhập :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="rftTendn" runat="server"  CssClass="form-control"></asp:TextBox>
                </td>
                <td rowspan="13">
                    <asp:Label ID="KetQua" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mật Khẩu</td>
                <td class="auto-style4">
                    <asp:TextBox ID="rfvMatKhau" runat="server"  CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Nhập lại mật khẩu</td>
                <td class="auto-style4">
                    <asp:TextBox ID="rfvNhapLai" runat="server"  CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2"><strong>Thông Tin Cá Nhân</strong></td>
            </tr>
            <tr>
                <td class="auto-style3">Họ tên khách hàng :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="rftHoTen" runat="server"  CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Ngày Sinh</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="rfvNgay" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="rfvThang" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="rfvNam" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email</td>
                <td class="auto-style4"> 
                    <asp:TextBox ID="revEmail" runat="server"  CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Thu Nhập</td>
                <td class="auto-style4">
                    <asp:TextBox ID="rvThunhap" runat="server"  CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Giới Tính </td>
                <td class="auto-style4">
                    <asp:CheckBox ID="CboxPhai" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Địa Chỉ</td>
                <td class="auto-style4">
                    <asp:ListBox ID="LstDiaChi" runat="server" Width="204px" Height="48px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Điện Thoại</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtSDT" runat="server"  CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">
                    <asp:Button ID="ButDangky" runat="server" Text="Đăng Ký" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
               </div>
    </form>
</body>
</html>
