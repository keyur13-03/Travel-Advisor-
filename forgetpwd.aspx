<%@ Page Title="" Language="C#" MasterPageFile="~/frontSide.master" AutoEventWireup="true" CodeFile="forgetpwd.aspx.cs" Inherits="forgetpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" Runat="Server">
    <div id="" class="" style="height:200px !important;">
				<div data-src="images/page1_img1.jpg">
				</div>
				
			</div>
		
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="tagline" >
  
          <div class="container_12">
          
          <div align="center" class="logbox" style="background-image:url(images/images/123.jpg)">
            
             <table  width="100%" class="tblpad" align="center"  >
                    
                  <%-- <tr>
                       <td>Mem Code</td>
                       <td><asp:TextBox ID="txtpsw"  runat="server" class="logintxtbox" AutoComplete="off"></asp:TextBox></td>
                   </tr>--%>
                   <tr>                       
                       <td colspan="2" align="center"><a href="original login.aspx" class="originallogin">Log In</a></td>
                   </tr>
                 <br />
                 <br />
                  <tr>
                       <td width="100"  class="loguser">Email</td>
                       <td width="350"><asp:TextBox ID="txtemail" runat="server" class="logtxtbox" AutoComplete="off"></asp:TextBox></td>
                   </tr>
                  
                   <tr>
                       <td colspan="2">
                           <asp:Label ID="lblrepsw" runat="server" Text="" Visible="false"></asp:Label></td>
                   </tr>
                   <tr>
                       <td colspan="2" align="center">
                           <asp:Button ID="Button1" runat="server" Text="Recover Password"  class="login100btn" OnClick="Button1_Click" />
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

