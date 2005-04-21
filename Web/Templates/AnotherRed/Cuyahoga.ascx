<%@ Control Language="c#" AutoEventWireup="false" Inherits="Cuyahoga.Web.UI.BaseTemplate" %>
<%@ Register TagPrefix="uc1" TagName="navigation" Src="~/Controls/Navigation/HierarchicalMenu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title><asp:literal id="PageTitle" runat="server"></asp:literal></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link id="CssStyleSheet" rel="stylesheet" type="text/css" runat="server" />
</head>
<body>
	<form id="t" method="post" runat="server">
		<div id="container">
			<div id="header">
				<span id="title">Cuyahoga</span>
				A .NET Web Site Framework
			</div>
			
			<!-- shadow divs -->
			<div id="containerleft">
			<div id="containertopleft">
			<div id="containerright">
			<div id="containertopright">
			<!-- main -->
			<div id="main">
				<div id="globalmenu">
					<asp:placeholder id="globalMenu" runat="server"></asp:placeholder>
				</div>
				<div id="side">
					<div id="nav">
						<uc1:navigation id="Nav" runat="server"></uc1:navigation>
					</div>
					<div id="sidecontent">
						<asp:placeholder id="side1content" runat="server"></asp:placeholder>
					</div>
				</div>
				<div id="content">
					<asp:placeholder id="maincontent" runat="server"></asp:placeholder>
				</div>
				<div class="clear"></div>
			</div>
			<!-- end main -->
			</div>
			</div>
			</div>
			</div>
			<!-- end shadow divs -->
		</div>
	</form>
</body>
</html>

