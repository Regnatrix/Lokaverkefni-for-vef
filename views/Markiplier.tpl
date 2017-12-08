<!DOCTYPE html>
<html>
<head>
  <title>SDK</title>
  <meta name="description" content="Lokaverkefni SDK 2017" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <script type="text/javascript" src={%"public/js/modernizr-1.5.min.js%}"></script>
    <link rel="shortcut icon" href="public/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="public/images/favicon.ico" type="image/x-icon">
</head>
<body>
<form action="/innskraning" method="post">
<body>
  <div id="main">	
    <header>
	  <div id="strapline">
      </div><!--close strapline-->	  
      <br/>
	  <h1 class:"san"> Sandra Dögg Kristmundsdóttir </h1>
    </header>
  <nav>
      <div id="wrap">
      <ul class="navbar">
	  <li><a href="/heim">Heim</a></li>    
        <li><a href="/wowsolusida">WoW Sölusíða</a>        
       </li>
       <li><a href="/twitch">Twitch</a>
        <ul><li><a href="/nixxiomT">Nixxiom</a></li>
        <li><a href="/eslcsgo">ESL CSGO</a></li>       
        <li><a href="/break">BreaK</a></li>
        </ul>         
       </li>
       <li><a href="/youtube">Youtube</a>
        <ul><li><a  href="/nixxiom">Nixxiom Myndband</a></li>
        <li><a  href="/markiplier">Markiplier Myndband</a></li>
		<li><a  href="/slightlyI">SlightlyImpressive Myndband</a></li>
        </ul>         
       </li>        
       </li>
      </ul>
</div><!--close menubar-->  
      </nav>         
	  <div id="content">
        <div class="content_item">
		  <h1>Myndband Hjá Markiplier</h1> 
          <p><iframe width="1280" height="720" src="https://www.youtube.com/embed/Kah-vLR82kk" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
		  </p>
	  
		  

    <footer>
    <a href="/heim">Heim</a> | <a href="http://mp3.com/">Mp3</a> | <a href="https://www.instagram.com/regnatrixx/">Instagram</a> | <a href="https://www.facebook.com/StrawberryRain92">Hafa samband</a><br/><br/>
</footer>
	
  </div><!--close main-->
  
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="{% static '/public/js/jquery.min.js' %}"></script>
  <script type="text/javascript" src="{% static '/public/js/image_slide.js' %}"></script>
 <style>
@font-face { 
  font-family: News Cycle; 
    src: url('../fonts/NewsCycle-Regular.eot'); 
    src: local("News Cycle"), url('../fonts/NewsCycle-Regular.ttf'); 
} 

html
{ height: 100%;}

*
{ margin: 0;
  padding: 0;}

body
{ font: normal 90% Arial, Helvetica, sans-serif;
  color: #000;
}

/* tell the browser to render HTML 5 elements as block */
article, aside, figure, footer, header, hgroup, nav, section { 
  display:block;
}

p
{ padding: 0 0 10px 0;
  line-height: 1.7em;
  font-size: 100% }

img
{ border: 0;}

h1, h2, h3, h4, h5, h6 
{ font: normal 175% 'News Cycle', Arial, sans-serif;
  color: #000;
  letter-spacing: -1px;
  margin: 0 0 10px 0;}

h2
{ font: normal 165% 'News Cycle', Arial, sans-serif;}

h3
{ font: normal 130% 'News Cycle', Arial, sans-serif;}

h4, h5, h6
{ margin: 0;
  padding: 0 0 0px 0;
  font: normal 150% 'News Cycle', Arial, sans-serif;
  color: #FFF;
  line-height: 1.5em;}

h5, h6
{ font: normal 95% 'News Cycle', Arial, sans-serif;
  color: #888;
  padding-bottom: 15px;}
  
span
{ color: #B1521A;
  text-shadow: none;}

a, a:hover
{ color: #000;
  background: transparent;
  font-weight: bold;
  outline: none;
  text-decoration: underline;}

a:hover
{ text-decoration: none;}

ul
{ margin: 2px 0 22px 30px;
  line-height: 1.7em;
  font-style: normal;
  font-size: 100%;}

ol
{ margin: 8px 0 22px 20px;}

ol li
{ margin: 0 0 11px 0;}

#main, header, #banner, #menubar, #site_content, footer, #content_grey, nav, #slideshow_container
{ margin-left: auto; 
  margin-right: auto;}
  
header
{ height: 100px;
  background: #000000;
  background: radial-gradient(#808080, #000000);
  font-size: 20px;
  padding-bottom: 20px;
  text-align: center;}

 
nav
{ height: 60px;}  
  
  
#welcome_slogan
{ width: 940px;
  float: left;
  height: 70px;
  padding-top: 10px;  
  margin: 0 auto;}    
  
#welcome_slogan H3
{ font: bold 300% 'News Cycle', Arial, sans-serif;
  letter-spacing: -3px;
  color: #FFF;} 
  
#menubar
{ width: 940px;
  height: 55px;
  padding-top: 10px;
  text-align: center; 
  margin: 0 auto;}    
  
ul#nav
{ margin:0;}

ul#nav li
{ padding: 0 0 0 0px;
  list-style: none;
  margin: 2px 0 0 0;
  display: inline;
  background: transparent;}

ul#nav li a
{ float: left;
  font: bold 130% 'News Cycle', Arial, sans-serif;
  height: 24px;
  margin: 8px 20px 0 0;
  text-shadow: 0px 1px 0px #000;
  padding: 0px 20px 10px 20px;
  background: transparent; 
  border-radius: 7px 7px 7px 7px;
  -moz-border-radius: 7px 7px 7px 7px;
  -webkit-border: 7px 7px 7px 7px;
  text-align: center;
  color: #FFF;
  text-decoration: none;} 
  
ul#nav li.current a, ul#nav li:hover a
{ color: #FFF;
  background: #0055D4;
  background: -moz-linear-gradient(#43A9FF, #0043A8);
  background: -o-linear-gradient(#43A9FF, #0043A8);
  background: -webkit-linear-gradient(#43A9FF, #0043A8);
  text-shadow: none;}
  
#slideshow_container
{ height: 270px;
  background: #0043A8;
  padding-top: 20px;}
  
.slideshow
{ width: 940px;
  height: 250px;
  margin: 0 auto;}  
  
/* styling for the slideshow on the homepage */
ul.slideshow {
  list-style: none;
  width: 940px;
  height: 250px;
  overflow: hidden;
  position: relative;}
  
ul.slideshow li {
  position: absolute;
  margin: 0;
  padding: 0;
  left: 0;
  right: 0;}
 
ul.slideshow li.show {
  z-index: 500;}
 
ul img {
  border: none;}
 
#slideshow-caption {
  width: 940px;
  height: 38px;
  position: absolute;
  bottom: 0;
  left: 0; 
  z-index: 500;}
 
#slideshow-caption .slideshow-caption-container {
  padding: 10px 25px 10px 25px; 
  background: transparent url(../images/transparent.png) repeat;  
  z-index: 1000;}
 
#slideshow-caption p {
  padding: 0;
  font: normal 130% arial, sans-serif;
  color: #FFF;
  text-shadow: 1px 1px #000;}  

#site_content
{ width: 940px;
  overflow: hidden;} 

.sidebar_container
{ float: right;
  margin: 20px 0 0 10px;
  width: 240px;}

.sidebar
{ float: left;
  width: 240px;
  margin-bottom: 10px;}

.sidebar_item
{ font: normal 100% Arial, Helvetica, sans-serif;
  width: 240px;}

.sidebar h2
{ padding: 5px 0 0 0;
  font: normal 140% 'News Cycle', Arial, sans-serif;
  height: 30px;}  

#content
{ width: 680px;
  margin: 0 0 20px 0;
  float: left;}

.content_item
{ width: 680px;
  margin-top: 20px;
  margin-bottom: 20px;}
  
.content_container
{ width: 330px;
  margin: 20px 10px 0 0;
  float: left;}
 
.content_container2
{ width: 200px;
  margin: 20px 10px 0 0;
  float: right;} 

footer
{ height: 100px;
  background: #000000;
  background: radial-gradient(#808080, #000000);
  font-size: 20px;
  padding-bottom: 20px;
  text-align: center;}

footer a, footer a:hover
{ text-shadow: 1px 1px #FFF;
  color: #1D1D1D;
  text-decoration: none;
  padding-bottom: 20px;}

footer a:hover
{ text-decoration: underline;}

footer a, footer a:hover
{ text-shadow: 1px 1px #000;
  color: #FFF;
  text-decoration: none;}

footer a:hover
{ text-decoration: underline;}
  
 .readmore a
{ color: #FFF;
  text-shadow: 1px 1px #004C8C;}
 
 .button_small
{ font: normal 110% Arial, Helvetica, sans-serif;
  float: left;
  height: 15px;
  padding: 5px 10px 7px 8px;
  background: #0043A8;
  background: -moz-linear-gradient(#43A9FF, #0043A8);
  background: -o-linear-gradient(#43A9FF, #0043A8);
  background: -webkit-linear-gradient(#43A9FF, #0043A8);
  border-radius: 15px 15px 15px 15px;
  -moz-border-radius: 15px 15px 15px 15px;
  -webkit-border: 15px 15px 15px 15px;
  -webkit-box-shadow: rgba(0, 0, 0, 0.5) 0px 0px 5px;
  -moz-box-shadow: rgba(0, 0, 0, 0.5) 0px 0px 5px;
  box-shadow: rgba(0, 0, 0, 0.5) 0px 0px 5px;}
  
.button_small a
{ color: #FFF;
  padding-left: 5px;
  text-shadow: 1px 1px #000;}

.form_settings
{ margin: 15px 0 0 0;}

.form_settings p
{ padding: 0 0 4px 0;}

.form_settings span
{ float: left; 
  width: 280px; 
  text-align: left;
  text-shadow: none;
  color: #000;}
  
.form_settings input, .form_settings textarea
{ padding: 2px; 
  width: 299px; 
  font: 100% arial; 
  border: 1px solid #E5E5DB; 
  background: #FFF; 
  color: #47433F;}
  
.form_settings input[type="checkbox"]
{ padding: 2px 0; 
  width: 15px; 
  font: 100% arial; 
  border: 0; 
  background: #FFF; 
  color: #47433F;
  margin: 28px 0;}

.form_settings .submit
{ font: 100% arial; 
  border: 1px solid; 
  width: 99px; 
  margin: 0 0 0 206px; 
  height: 26px;
  padding: 2px 0 3px 0;
  cursor: pointer; 
  background: #0043A8;
  background: -moz-linear-gradient(#43A9FF, #0043A8);
  background: -o-linear-gradient(#43A9FF, #0043A8);
  background: -webkit-linear-gradient(#43A9FF, #0043A8);
  color: #FFF;
  border-radius: 7px 7px 7px 7px;
  -moz-border-radius: 7px 7px 7px 7px;
  -webkit-border: 7px 7px 7px 7px;}

  /* Navbar */
#wrap   {
    width: 100%; /* Spans the width of the page */
    height: 50px; 
    margin: 0; /* Ensures there is no space between sides of the screen and the menu */
    z-index: 99; /* Makes sure that your menu remains on top of other page elements */
    position: relative; 
    background-color: #366b82;
    }
.navbar {
    height: 50px;
    padding: 0;
    margin: 0;
    position: absolute; /* Ensures that the menu doesn’t affect other elements */
    border-right: 1px solid #54879d; 
    }
.navbar li  {
    height: auto;
    width: 150px;  /* Each menu item is 150px wide */
    float: left;  /* This lines up the menu items horizontally */
    text-align: center;  /* All text is placed in the center of the box */
    list-style: none;  /* Removes the default styling (bullets) for the list */
    font: normal bold 12px/1.2em Arial, Verdana, Helvetica;  
    padding: 0;
    margin: 0;
    background-color: #366b82;
    }
.navbar a   {                           
    padding: 18px 0;  /* Adds a padding on the top and bottom so the text appears centered vertically */
    border-left: 1px solid #54879d; /* Creates a border in a slightly lighter shade of blue than the background.  Combined with the right border, this creates a nice effect. */
    border-right: 1px solid #1f5065; /* Creates a border in a slightly darker shade of blue than the background.  Combined with the left border, this creates a nice effect. */
    text-decoration: none;  /* Removes the default hyperlink styling. */
    color: white; /* Text color is white */
    display: block;
    }

.navbar li:hover, a:hover {background-color: #54879d;} 
.navbar li ul  {
    display: none;  /* Hides the drop-down menu */
    height: auto;                                   
    margin: 0; /* Aligns drop-down box underneath the menu item */
    padding: 0; /* Aligns drop-down box underneath the menu item */         
    }               
.navbar li:hover ul {
    display: block; /* Displays the drop-down box when the menu item is hovered over */
    }
.navbar li ul li {background-color: #54879d;} 
.navbar li ul li a     {
    border-left: 1px solid #1f5065; 
    border-right: 1px solid #1f5065; 
    border-top: 1px solid #74a3b7; 
    border-bottom: 1px solid #1f5065; 
    }
.navbar li ul li a:hover    {background-color: #366b82;}

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg .tg-xxs3{background-color:#32cb00}
.tg .tg-yw4l{vertical-align:top}
</style>  
</body>
</html>
