<%@ Page language="c#" Codebehind="Users.aspx.cs" AutoEventWireup="false" Inherits="Cuyahoga.Web.Admin.Users" %>
<%@ Register TagPrefix="csc" Namespace="Cuyahoga.ServerControls" Assembly="Cuyahoga.ServerControls" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
  <head>
		<title>Users</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
  </head>
	<body>
		<form id="Form1" method="post" runat="server">
			<script language="javascript"> <!--
				function confirmDeleteUser(userId)
				{
					if (confirm("Are you sure you want to delete this user?"))
						document.location.href = "UserEdit.aspx?UserId=" + userId + "&Action=Delete";
				}
				// -->
			</script>
			<div class="group">
				<h4>Find users</h4>
				Username <asp:textbox id="txtUsername" runat="server"></asp:textbox><asp:button id="btnFind" runat="server" text="Find"></asp:button>
			</div>
			<asp:panel id="pnlResults" runat="server" cssclass="group">
				<h4>Search results</h4>
				<p>
					<table class=tbl>
						<asp:repeater id=rptUsers runat="server">
							<headertemplate>
								<tr>
									<th>Username</th>
									<th>Firstname</th>
									<th>Lastname</th>
									<th>Email</th>
									<th>Last login date</th>
									<th>Last login from</th>
									<th>Actions</th>
								</tr>
							</headertemplate>
							<itemtemplate>
								<tr>
									<td><%# DataBinder.Eval(Container.DataItem, "UserName") %></td>
									<td><%# DataBinder.Eval(Container.DataItem, "FirstName") %></td>
									<td><%# DataBinder.Eval(Container.DataItem, "LastName") %></td>
									<td><%# DataBinder.Eval(Container.DataItem, "Email") %></td>
									<td><%# DataBinder.Eval(Container.DataItem, "LastLogin") %></td>
									<td style="text-align:right"><%# DataBinder.Eval(Container.DataItem, "LastIp") %></td>
									<td>
										<asp:hyperlink id="hplEdit" runat="server">Edit</asp:hyperlink>
										<asp:hyperlink id="hplDelete" runat="server">Delete</asp:hyperlink>
									</td>
								</tr>
							</itemtemplate>
						</asp:repeater>
					</table>
				</p>
				<div class=pager>
					<csc:pager id=pgrUsers runat="server" CacheDuration="10" pagesize="1" cachedatasource="True" controltopage="rptUsers"></csc:pager>
				</div>
			</asp:panel>
		</form>
	</body>
</html>
