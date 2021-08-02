<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ClickCafe._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <style type="text/css">
        body{
            
        }
        .carousel-caption{
            
            margin-bottom:180px;
        }

        

        .video-container {
            position: absolute;
            top: 0;
            left: 0;
            height: 200vh;
            width: 100%;
            z-index: -1;
            margin-top:20px;
            
        }

           .vid{
                   position:absolute;
                   height:100vh;
                   width:100%;
                   object-fit:cover;
                   display:none;
                   height:500px; width:100%;
                   margin-top:30px;
                    
               }
               .vid1{
                   display:block;
               }

        .controls {
            position: absolute;
            bottom: 14%;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
        }

            .dots
        {
            height: 2rem;
            width: 2rem;
            cursor: pointer;
            background:#ffd800;
            margin: 0 1rem;
           border-radius:10px;
        }
                     
                     .dots:hover{
                                background:#fff;
                     }
        
            .img {
  position: absolute; 
  bottom: 0; 
  background: rgb(0, 0, 0);
  background: rgba(0, 0, 0, 0.5); /* Black see-through */
  color: #f1f1f1; 
  width: 100%;
  transition: .5s ease;
  opacity:0;
  color: white;
  font-size: 20px;
  padding: 20px;
  text-align: center;
  backface-visibility: hidden;
  display:block;
}

.img:hover {
  opacity: 1;
}

       
    </style>

    <style type="text/css">

img:hover {
  animation: shake 0.5s;
  animation-iteration-count: infinite;
  
}



/*@keyframes shake {
  0% { transform: translate(1px, 1px) rotate(0deg); }
  10% { transform: translate(-1px, -2px) rotate(-1deg); }
  20% { transform: translate(-3px, 0px) rotate(1deg); }
  30% { transform: translate(3px, 2px) rotate(0deg); }
  40% { transform: translate(1px, -1px) rotate(1deg); }
 
}*/

.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 80%;
  height:237px;
}

.card:hover {
  box-shadow: 0 8px 20px 0 rgba(0,0,0,0.7);
}

.middle {
  padding: 5px 10px;
   transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}
.card:hover .image {
  opacity: 0;
}

.card:hover .middle {
  opacity: 1;
}

.text {
  background-color:aquamarine;
  color:chocolate;
  font-size: 16px;
  padding: 16px 32px;
}
.container-fluid{

}
</style>
    
    <br /><br />

    <section id="home" class="container-fluid">
         <div class="carousel-caption text-white">
             
                    <h2>Welcome To ClickCafe...</h2>
             <h2>Enjoye The Marvelous Taste..</h2>
              </div>

    </section>
   
    <div class="video-container" >
            <video  src="foodimg/v21.mp4" autoplay loop class="vid vid1"></video>
         
             <image  src="foodimg/b32.jpg" autoplay loop class="vid vid2"></image>
             <image src="foodimg/b35.jpg" autoplay loop class="vid vid3"></image>
             <image src="foodimg/b31.jpg" autoplay loop class="vid vid4"></image>
             <image src="foodimg/b34.jpg" autoplay loop class="vid vid5"></image>

            </div>
        
    <div class="controls">
        <div class="dots dot1"></div>
         <div class="dots dot2"></div>
         <div class="dots dot3"></div>
         <div class="dots dot4"></div>
         <div class="dots dot5"></div>
    </div>
  
              
     <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /> <br /><br /> <br /><br /> <br /><br /> <br /><br />
    <main>
        
               <center> <h1>Explore Our Food</h1>
    </center>
                 
           
        
            <div class="gallery">
                 <div class="col-md-4">
                     <br>
                     </br>
                <div class="gallery_col-1">
                    
                   <%-- <a data-fancybox-group="gallery" href="images/page-1_img03_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 93.96551724137931%;">--%>
                  <div class="card">
                      
                    <a data-fancybox-group="gallery" href="Product.aspx?id=8" class="gallery_item thumb lazy-img" style="padding-bottom: 72.23168654173765%;">
                        <img src="Images/Breakfast/pexels-jill-wellington-257816.jpg" alt="" style="height: 235px; width: 280px; ">
                       
                             <div class="middle">
                                  <div class="text">BREAKFAST</div>
                         
                               
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                    </a>
                       
                   </div>
                    <br /> <br />
                    <div class="card">
                     &nbsp;<a data-fancybox-group="gallery" href="Product.aspx?id=1" class="gallery_item thumb lazy-img" style="padding-bottom: 93.96551724137931%;">
                         <img src="Images/Italian/italian food 5.jpg" alt="" style="margin-top:-25px ; height: 235px; width: 280px;  ">
                      
                             <div class="middle">
                                 <div class="text">ITALIAN</div>
                                <%--<p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                      
                    </a>
                   </div>
                     <br /> <br />
                    <div class="card">
                    &nbsp;<a data-fancybox-group="gallery" href="Product.aspx?id=3" class="gallery_item thumb lazy-img" style="padding-bottom: 94.6551724137931%;">
                        <img src="Images/Starters/staters siders.jpg" alt="" style="margin-top:-25px ; height: 235px; width: 280px;  ">
                       
                             <div class="middle">
                               <div class="text">STARTERS</div>
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                      
                    </a>
                        </div>
                        &nbsp;</div>
                </div>
                
              <div class="col-md-4">

                  <br>
                  </br>
                <div class="gallery_col-2">
                    <div class="card">
                    <a data-fancybox-group="gallery" href="Product.aspx?id=4" class="gallery_item thumb lazy-img" style="padding-bottom: 52.48322147651007%;">
                        <img src="Images/Indian/indian food samosa.jpg" alt="" style="height: 235px; width: 280px;  ">
                        
                             <div class="middle">
                                <div class="text">INDIAN</div>
                                <%--<p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                       
                    </a>
                </div> <br /> <br />
                        <div class="card">
                    &nbsp;<a data-fancybox-group="gallery" href="Product.aspx?id=5" class="gallery_item thumb lazy-img" style="padding-bottom: 55.97315436241611%;">
                        <img src="Images/Lebanese/pexels-anthony-leong-2092897.jpg" alt="" style="margin-top:-25px ; width: 280px; height: 235px; ">
                       
                            <div class="middle">
                                <div class="text">LEBANESE</div>
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                       
                    </a>
                            </div> <br /> <br />
                            <div class="card">
                    &nbsp;<a data-fancybox-group="gallery" href="Product.aspx?id=6" class="gallery_item thumb lazy-img" style="padding-bottom: 96.10738255033557%;">
                        <img src="Images/Dessert/dessert 3.jpg" alt="" style="margin-top:-25px; width: 280px; height:235px;  ">
                        
                             <div class="middle">
                                <div class="text">DESSERT</div>
                                <%--<p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                       
                    </a>
                                </div>
              &nbsp;</div></div>
              <div class="col-md-4">
                  <br>
                  </br>
                <div class="gallery_col-3">
                    <div class="card">
               <a data-fancybox-group="gallery" href="Product.aspx?id=9" class="gallery_item thumb lazy-img" style="padding-bottom: 93.69676320272572%;">
                        <img src="Images/Chienese/pexels-rodnae-productions-6645917.jpg" alt="" style="width: 280px; height: 235px; ">
                       
                             <div class="middle">
                                <div class="text">CHIENESE</div>
                                <%--<p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                       
                    </a>
                    </div>
                     <br /> <br />
                        <div class="card">
                      &nbsp;<a data-fancybox-group="gallery" href="Product.aspx?id=2" class="gallery_item thumb lazy-img" style="padding-bottom: 74.13793103448276%;">
                          <img src="Images/Maxican/maxican 2.jpg" alt="" style="margin-top:-25px ; width: 280px; height: 235px;  ">
                       
                             <div class="middle">
                               <div class="text">MAXICAN</div>
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                       
                    </a></div> <br /> <br />

                            <div class="card">
                    &nbsp;<a data-fancybox-group="gallery" href="Product.aspx?id=7" class="gallery_item thumb lazy-img" style="padding-bottom: 93.69676320272572%;">
                        <img src="Images/Beverages/breverages juice.jpg" alt="" style="margin-top:-25px ;width: 280px; height: 235px;  ">
                       
                             <div class="middle">
                              <div class="text">BEVERAGES</div>
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                      
                    </a></div>
                    &nbsp;</div>
                </div>
            </div>
        
        
        
  </main>
    <div class="row">
        <div class="col-md-4">
            
        </div>
        <div class="col-md-4">
            
        </div>
        <div class="col-md-4">
           
        </div>
    </div>  
    
    <script>
        $('.dot1').click(function () {
            $('.vid1').css('display', 'block');
            $('.vid2').css('display', 'none');
            $('.vid3').css('display', 'none');
            $('.vid4').css('display', 'none');
            $('.vid5').css('display', 'none');
        });
        $('.dot2').click(function () {
            $('.vid2').css('display', 'block');
            $('.vid1').css('display', 'none');
            $('.vid3').css('display', 'none');
            $('.vid4').css('display', 'none');
            $('.vid5').css('display', 'none');
        });
        $('.dot3').click(function () {
            $('.vid3').css('display', 'block');
            $('.vid2').css('display', 'none');
            $('.vid1').css('display', 'none');
            $('.vid4').css('display', 'none');
            $('.vid5').css('display', 'none');
        });
        $('.dot4').click(function () {
            $('.vid4').css('display', 'block');
            $('.vid2').css('display', 'none');
            $('.vid3').css('display', 'none');
            $('.vid1').css('display', 'none');
            $('.vid5').css('display', 'none');
        });
        $('.dot5').click(function () {
            $('.vid5').css('display', 'block');
            $('.vid2').css('display', 'none');
            $('.vid3').css('display', 'none');
            $('.vid4').css('display', 'none');
            $('.vid1').css('display', 'none');
        });
    </script>

</asp:Content>
