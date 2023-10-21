<%@ Page Language=VB Debug=true %>
<script runat=server>
Sub Page_Load(ByVal Sender as Object, ByVal E as EventArgs)
    lblMessage.Text = "Hello Web!"
End Sub
</SCRIPT>
<HTML>
<HEAD>
<TITLE>Hello Web Sample Page</TITLE>
</HEAD>
<BODY 
    BACKGROUND="./bg.gif" 
    TEXT="black" 
    LINK="darkred" 
    VLINK="darkred" 
    ALINK="red" 
    LEFTMARGIN="40" 
    TOPMARGIN="30"
>
<form runat="server">
<Font Face="Tahoma">

<BR><BR><BR>
<asp:Label
    id="lblMessage"
    runat="Server"
    Font-Bold="True"
/>
</Font>
</Form>
</BODY>
</HTML>
