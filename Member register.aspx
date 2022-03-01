<%@ Page Title="" Language="C#" MasterPageFile="~/frontSide.master" AutoEventWireup="true" CodeFile="Member register.aspx.cs" Inherits="Member_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" Runat="Server">
    <div id="" class="" style="height:200px !important;">
				<div data-src="images/page1_img1.jpg">
				</div>
				
			</div>
		</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="tagline" style="background-color:white;">
  <div class="row" style="height:auto !important" >
    <div class="columns large-12" style="height:auto !important">
      <div class="center">         
        <%-- <h1>Hello</h1>
            <p>How</p>--%>
          <div class="container_12">
           <div class="memreg" align="center">
                                 <div class="originallogin" style="font-size:30px";>Registration Form</div>   <br /><br />

               <table>
                   <tr height="50">
                       <td width="180"><span class="loguser1">First Name</span></td>
                       <td width="320"><asp:TextBox ID="txtmemfname" runat="server" autocomplete="off"  class="logtxtbox1"></asp:TextBox></td>
                   </tr>
                   <tr height="50">
                       <td><span class="loguser1">Last Name</span></td>
                       <td><asp:TextBox ID="txtmemlastname" runat="server" autocomplete="off" class="logtxtbox1"></asp:TextBox></td>
                   </tr>
                   <tr height="50">
                       <td><span class="loguser1">BirthDate</span></td>
                       <td>
                                <asp:TextBox runat="server" ID="txtdd" class="logtxtbox1" style="float:left;width:50px;" placeholder="DD" ></asp:TextBox>
                               <asp:TextBox runat="server" ID="txtmm" class="logtxtbox1" style="float:left;width:50px; margin-left:10px;" placeholder="MM"></asp:TextBox>
                               <asp:TextBox runat="server" ID="txtyyyy" class="logtxtbox1" style="float:left;width:90px; margin-left:10px;" placeholder="YYYY"></asp:TextBox>
                           </td>
                   </tr>
                   <tr valign="top" height="50">
                       <td><span class="loguser1">Gender</span></td>
                       <td>
                           <asp:RadioButtonList runat="server" ID="radiogender" RepeatDirection="Horizontal" TextAlign="Left" class="logtxtbox1">
                                   <asp:ListItem>Male</asp:ListItem>
                                   <asp:ListItem>Female</asp:ListItem>
                           </asp:RadioButtonList>
                       </td>
                   </tr>
                   <tr height="50">
                       <td><span class="loguser1">Email</span></td>
                       <td><asp:TextBox runat="server" ID="txtmememail" autocomplete="off" class="logtxtbox1"></asp:TextBox></td>
                   </tr>
                   <tr height="50">
                       <td><span class="loguser1">Password</span></td>
                       <td><asp:TextBox runat="server" ID="txtmempsw" TextMode="Password" autocomplete="off" class="logtxtbox1"></asp:TextBox></td>
                   </tr>
                   <tr height="50">
                       <td><span class="loguser1">Mobile</span></td>
                       <td><asp:TextBox runat="server" ID="txtmemmobile" autocomplete="off" class="logtxtbox1"></asp:TextBox></td>
                   </tr>
                   <tr valign="top" height="50">
                       <td><span class="loguser1">Address</span></td>
                       <td><asp:TextBox runat="server" ID="txtmemaddress"  class="logtxtbox1" TextMode="MultiLine" Rows="6"></asp:TextBox></td>
                   </tr>                                     
                   <tr height="50">
                       <td colspan="2" align="center">
                           <asp:Button ID="Button1" runat="server" Text="Register Now" class="login100btn" OnClick="Button1_Click" />
                           <asp:Button ID="Button2" runat="server" Text="Reset" class="login100btn"  />
                       </td>
                   </tr>

                   
               </table>
               </div>
           </div>
      </div>
    </div>
  </div>
</div>

</asp:Content>

