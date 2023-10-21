<%@ Page Language=VB Debug=true %>
<script runat=server>
Sub Page_Load(ByVal Sender as Object, ByVal E as EventArgs)
  
End Sub
Sub SubmitBtn_Click(Sender As Object, E As EventArgs)
    lblMessage2.Text = "The number you entered is " _
        & OddOrEven(txtNumber.Text)
End Sub
Function OddOrEven(TheNumber as Long) as String
    If TheNumber Mod 2 = 0 Then
        OddOrEven = "even."
    Else
        OddOrEven = "odd."
    End If
End Function
</SCRIPT>
<HTML>
<HEAD>
<TITLE>Odd Or Even Sample Page</TITLE>
</HEAD>
<BODY 
    BACKGROUND="./MEDAQUA.gif" 
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
    id="lblMessage1"
    runat="server"
    Font-Bold="True"
    Text="Enter a number"
/>
<asp:TextBox
    id="txtNumber"
    runat="server"
/>
<BR>
<asp:button 
    id="butOK"
    text="OK"
    Type="Submit"
    OnClick="SubmitBtn_Click" 
    runat="server"
/>
<BR><BR>
<asp:Label
    id="lblMessage2"
    runat="server"
    Font-Bold="True"
/>
</Font>
</Form>
</BODY>
</HTML>
