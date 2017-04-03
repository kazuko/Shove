<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginLog.aspx.cs" Inherits="Admin_LoginLog" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Shove.Web.UI.4 For.NET 3.5" Namespace="Shove.Web.UI" TagPrefix="ShoveWebUI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>�ޱ���ҳ</title>
    <link href="style/style01.css" rel="stylesheet" type="text/css" />
</head>
<body class="center">
    <form id="form1" runat="server">
    <div>
        <div class="title">
            �û���¼��־����
        </div>
        <table id="Table1" cellspacing="1" cellpadding="0" width="100%" border="0" class="baseTab">
            <tr class="title" style="height: 28px" align="left">
                <td>
                    &nbsp;�û���
                    <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>&nbsp;
                    <asp:DropDownList ID="ddlTime" runat="server" Width="152px">
                        <asp:ListItem Value="-1">ȫ��</asp:ListItem>
                        <asp:ListItem Value="1" Selected="True">һ����</asp:ListItem>
                        <asp:ListItem Value="2">������</asp:ListItem>
                        <asp:ListItem Value="3">������</asp:ListItem>
                        <asp:ListItem Value="7">һ����</asp:ListItem>
                        <asp:ListItem Value="14">������</asp:ListItem>
                        <asp:ListItem Value="31">һ����</asp:ListItem>
                        <asp:ListItem Value="61">������</asp:ListItem>
                        <asp:ListItem Value="365">һ����</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    <ShoveWebUI:ShoveConfirmButton ID="btnGo" runat="server" Text="��ѯ" OnClick="btnGo_Click" />&nbsp;
                    <ShoveWebUI:ShoveConfirmButton ID="btnClear" runat="server" Text="�����־" AlertText="ȷ��Ҫɾ��ѡ������Щ��־��Ϣ��"
                        OnClick="btnClear_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataGrid ID="g" runat="server" CellPadding="0" BackColor="White" BorderWidth="2px"
                        BorderStyle="None" BorderColor="#CC9966" Font-Names="����" PageSize="30" AllowSorting="True"
                        AutoGenerateColumns="False" AllowPaging="True" Width="100%" OnItemDataBound="g_ItemDataBound">
                        <FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
                        <SelectedItemStyle Font-Bold="True" ForeColor="#663399"></SelectedItemStyle>
                        <HeaderStyle HorizontalAlign="Center" ForeColor="RoyalBlue" VerticalAlign="Middle"
                            BackColor="Silver"></HeaderStyle>
                        <Columns>
                            <asp:BoundColumn DataField="Name" SortExpression="Name" HeaderText="�û���">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="RealityName" SortExpression="RealityName" HeaderText="��ʵ����">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle Wrap="False" HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Province" SortExpression="Province" HeaderText="ʡ��">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle Wrap="False" HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="City" SortExpression="City" HeaderText="����">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle Wrap="False" HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="DateTime" SortExpression="DateTime" HeaderText="ʱ��">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="IPAddress" SortExpression="IPAddress" HeaderText="IP��ַ">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle Wrap="False" HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Place" SortExpression="Place" HeaderText="IP����">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle Wrap="False" HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Description" SortExpression="Description" HeaderText="����">
                                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                <ItemStyle Wrap="False" HorizontalAlign="Center"></ItemStyle>
                            </asp:BoundColumn>
                        </Columns>
                        <PagerStyle Visible="False" HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC">
                        </PagerStyle>
                    </asp:DataGrid>
                    <ShoveWebUI:ShoveGridPager ID="gPager" runat="server" Width="100%" ShowSelectColumn="False"
                        DataGrid="g" AlternatingRowColor="Linen" GridColor="#E0E0E0" HotColor="MistyRose"
                        PageSize="30" OnPageWillChange="gPager_PageWillChange" OnSortBefore="gPager_SortBefore" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>