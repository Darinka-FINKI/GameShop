<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
  
    <div class="container">
    
		<!-- treba da prikaze sliki od foldero sliki -- > golemite sliki za carousel sa imenuvani sa sos L na kraj -->
	
    	<!--carousel-->
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="margin-top:30px">
	 
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
		  </ol>
		 
		  <!-- Slider Content (Wrapper for slides )-->
		  <div class="carousel-inner">
		    <div class="item active">
			
			
			
			  <!-- slika igra-->
		      <img src="img/10L.jpg" alt="...">
		    </div>
		    <div class="item">
			
			
			
			  <!-- slika igra-->
		      <img src="img/2L.jpg" alt="...">
		    </div>
		    <div class="item">
			
			
			  <!-- slika igra-->
		      <img src="img/9L.jpg" alt="...">
		    </div>
		    
		  </div>
		 
		  <!-- Controls -->
		  <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left"></span>
		  </a>
		  <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right"></span>
		  </a>
		  
		</div>   	
    	

		<!-- /carousel -->
		
		
		
		<!-- тове див е за секоја игра посебно да се прикаже -->
		
		<!-- на клик на копчето Купи да се додаде фоф сесија играта -->
		
        <hr>
        	 <% foreach (var game in Games) { %>
              
            <div class="col-lg-3 col-md-6 hero-feature">
        		<div class="thumbnail" style="height: 377px;" >
					<!-- /слика на играта -->              
                  <img src="img/<%=game.img_path %>" style="width:245px; height: 153px;">
                    <div class="caption">
                        <!-- /име на играта -->
						<h3><%= game.name %></h3>
						<!-- /цена на играта -->
                    	<h4><%= game.price %></h4>  
						<!-- /опис на играта -->				
                        <p><%= game.description %></p>
                      <!--  <p> -->
						<!-- /да се додаде во кошничка на клик -->
                        <asp:Button runat="server" OnClick="" id="btn" class="btn btn-primary" Text="Купи"></asp:Button>  
                          <!--  </p> -->
                        </div>
                    </div>
                </div>
                        <% } %>


                    
            </div> 
			
            
            
            
        <hr>

</asp:Content> 
    
