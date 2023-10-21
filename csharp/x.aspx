<%@ Page Language="C#" %>
 <html>
 <body>
 <form runat="server">
    <h2>English to Metric conversion</h2>
    <h3>Please enter your height, and then click the Convert button</h3>
    <asp:Textbox id="Feet" runat="server"/>Feet
    <br>
    <asp:Textbox id="Inches" runat="server"/>Inches
   <br>
   <asp:Button OnClick="OnConvert" Text="Convert" runat="server"/>
   <br>
   <br>
   <asp:Label id="lblMeters" runat="server"/>
  </form>
 </body>
 </html>

 <script runat="server">
 void Page_Load(Object Sender, EventArgs e)
 {
   if(IsPostBack) {
     if(Feet.Text == "") {
       Feet.Text = "0";
     }
     if(Inches.Text == "") {
       Inches.Text = "0";
     }
   }
 }

 void OnConvert(Object Sender, EventArgs e)
 {
   Single fFeet = Single.Parse(Feet.Text);
   Single fInches = Single.Parse(Inches.Text);
   Double fMeters = 0.305*fFeet + 0.0254*fInches;
   lblMeters.Text = "<b>You are " + fMeters.ToString() + " meters tall</b>";
 }
 </script>