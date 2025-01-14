﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KiemTraDieuKhien.aspx.cs" Inherits="BaitTap2.KiemTraDieuKhien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 174px;
        }
        .auto-style5 {
            width: 285px;
        }
        .auto-style6 {
            width: 174px;
            height: 31px;
        }
        .auto-style7 {
            width: 285px;
            height: 31px;
        }
        .auto-style8 {
            display: block;
            width: 100%;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: var(--bs-body-color);
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background-clip: padding-box;
            border-radius: var(--bs-border-radius);
            transition: none;
            background-color: #3399FF;
        }
    </style>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container w-50">
        
        <table cellpadding="5" cellspacing="0" class="auto-style1">
            <tr>
                <td class="bg-info h3 text-center text-primary" colspan="3">Hồ sơ đăng ký</td>
            </tr>
            <tr>
              <td class="text-center" colspan="2" style="color: purple; background-color: lightgoldenrodyellow;">Thông tin đăng nhập</td>
<td class="text-center" style="color: purple; background-color: lightgoldenrodyellow;">Hồ sơ khách hàng</td>

            </tr>
            <tr>
                <td class="auto-style6">Tên đăng nhập</td>
                <td class="auto-style7">
                    
                    <asp:TextBox ID="txtTenDN" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTenDN" runat="server"  ControlToValidate="txtTenDN" ErrorMessage="Tên đăng nhập không được bỏ trống" ForeColor="#FF3300">(*)</asp:RequiredFieldValidator>
                </td>
                <td style="vertical-align:top" rowspan="12">
                    <asp:Label ID="lbThongTin" runat="server"></asp:Label>
                    <br />
                    <asp:ValidationSummary ID="vsLoi" runat="server" ForeColor="#FF3300" ShowMessageBox="True"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Mật khẩu</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtMatKhau" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMatKhau" runat="server" ErrorMessage="Mật khẩu không được bỏ trống" ControlToValidate="txtMatKhau" ForeColor="#FF3300">(*)</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style4">Nhập lại mật khẩu</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtMKNL" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMKNL" runat="server" ErrorMessage="Chưa xác nhận mật khẩu" ControlToValidate="txtMKNL" ForeColor="#FF3300">(*)</asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="cvMKNL" runat="server" ErrorMessage="Mật khẩu xác nhận không trùng" ControlToCompare="txtMatKhau" ControlToValidate="txtMKNL" >(*)</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="text-center" colspan="2" style="color: purple; background-color:lightgoldenrodyellow;">Thông tin cá nhân</td>
            </tr>
            <tr>
                <td class="auto-style4">Họ tên khách hàng</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Chưa nhập họ tên">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Ngày sinh</td>
                <td class="auto-style5">
                  <div class="d-flex">
                        <asp:DropDownList ID="ddlNgay" runat="server" CssClass="form-select">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlThang" runat="server" CssClass="form-select">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlNam" runat="server" CssClass="form-select">
                    </asp:DropDownList>
                  </div>
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">Email</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Thu nhập</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtThuNhap" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Giới tính</td>
                <td class="auto-style5">
                    <asp:CheckBox ID="ckGioiTinh" runat="server" CssClass="form-check" Text="Nam" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Địa chỉ</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Điện thoại</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtDienThoai" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"  background-color: lightgoldenrodyellow;>&nbsp;</td>
                <td class="auto-style5" >
                    <asp:Button ID="btDangKy" runat="server" Text="Đăng ký" CssClass="auto-style8" OnClick="btDangKy_Click"/>
                </td>
            </tr>
        </table>
            </div>
    </form>
</body>
</html>
