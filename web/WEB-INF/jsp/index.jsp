<%@page import="model.Comment"%>
<%@page import="model.Picture"%>
<%@page import="model.Rating"%>
<%@page import="model.User"%>
<%@page import="java.util.List"%>
<%@page import="bean.MainClass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%
MainClass mc = new MainClass();
List<User> listaUsers = mc.getUserData();
List<Rating> listaRatings = mc.getRatingData();
List<Picture> listaPictures = mc.getPictureData();
List<Comment> listaComments = mc.getCommentData();
out.println("Userzy'" + listaUsers.size() + "':\n");
for(int i=0;i<listaUsers.size();i++){
out.println(listaUsers.get(i).getId_User() + " " + listaUsers.get(i).getPassword() + " " + listaUsers.get(i).getDescription()+"\n");
}
out.println("Ratingi:\n");
for(int i=0;i<listaRatings.size();i++){
out.println(listaRatings.get(i).getId_Rating() + " " + listaRatings.get(i).getValue() + " " + listaRatings.get(i).getCreatedAt()+"\n");
}
out.println("Pictures:\n");
for(int i=0;i<listaPictures.size();i++){
out.println(listaPictures.get(i).getId_Picture() + " " + listaPictures.get(i).getLink() + " " + listaPictures.get(i).getName()+"\n");
}
out.println("Comments:\n");
for(int i=0;i<listaComments.size();i++){
out.println(listaComments.get(i).getId_Comment() + " " + listaComments.get(i).getCreatedAt() + " " + listaComments.get(i).getDescription()+"\n");
}%>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://java.sun.com/jsf/html"
      xmlns:fb="http://www.facebook.com/2008/fbml">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eventoo-szykuj się na wielką imprezę</title>
        
        <link href="http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="style.css" />
        
        <script src="http://connect.facebook.net/pl_PL/all.js"></script>
        <script>
            
            window.onload = ustawPrzycisk;
            
            FB.init({
               appId  : '487331951334796',
               status : true, 
               cookie : true, 
               xfbml  : true  
             });
             
             // FB.Event.subscribe('auth.login', function(response) {   
            //    window.location = "http://localhost:8080/Eventoo/logged.jsp";
           // }); 
           
           FB.Event.subscribe('auth.authResponseChange', function(response) {
                if (response.status === 'connected') {
                     //window.top.location = 'http://localhost:8080/Eventoo/logged.jsp';
                     ustawPrzycisk();
                }
            });
                     
            function ustawPrzycisk() {
                var imie;
               // FB.api('/me', function(response) {
                 //               imie = response.name;
                 ///           });
                 FB.getLoginStatus(function(response) {
                        if (response.status === 'connected') {
                          // the user is logged in and has authenticated your
                          // app, and response.authResponse supplies
                          // the user's ID, a valid access token, a signed
                          // request, and the time the access token 
                          // and signed request each expire


                           
                          document.getElementById("fb-login").style.display = "none";
                        
                          document.getElementById("fb-logout").style.display = "inline";
                         
                           
                         
                        } else if (response.status === 'not_authorized') {
                          // the user is logged in to Facebook, 
                          // but has not authenticated your app
                        } else {
                          // the user isn't logged in to Facebook.
                          // alert('y');
                           document.getElementById("fb-logout").style.display = "none";
                           var x = document.getElementById("fb-login");
                           x.style.display = "inline";
                           
                            
                           // if(!imie.equals(null)) x.innerHTML = imie;
                        }
                   });      
            };
         
            function fbLogout() {
                FB.logout(function (response) {
                    //Do what ever you want here when logged out like reloading the page
                    alert('wylogowano');
                     window.location = "index.htm";
                });
             
            };   
         
        </script>
    </head>

    <body>
      
        <div id="bg">
            <div id="outer">
		<div id="header">
                    <div id="logo">
			<h1>
                            <a href="#">Eventoo</a>
                        </h1>
                    </div>
                    <div id="nav">
			<ul>
                            <li class="first active">
				<a href="index.htm">Home</a>
                            </li>
                            <li>
				<a href="mojeAlbumy.jsp">Moje albumy</a>
                            </li>
                            <li>
				<a href="mojeImprezy.jsp">Moje imprezy</a>
                            </li>
                            <li>
				<a href="poczekalnia.jsp">Poczekalnia</a>
                            </li>
                            <li>
				<a href="kalendarz.jsp">Kalendarz</a>
                            </li>
                            
                            <li id="fb-login" style="display: none">
                               
                                <fb:login-button>Zaloguj do fb</fb:login-button>
                               
                                
                            </li>
                            
                            <li id="fb-logout" style="display: none">
                            
                                <button onclick="fbLogout();" > Wyloguj sie</button>
                            </li>
			</ul>
			<br class="clear" />
                    </div>
		</div>
		<div id="main">
                        Baza bedzie na localu(poki co...) wiec instalujcie mysql i robcie usera 'root' i haslo 'sql' do niego.Zeby kazdy mial to samo.
                        <h1>Eventoo</h1>
                        <a href="http://facebook.com">zaloguj</a>
                        <h2 style="font-size: 100px; text-align: center">DO ROBOTY!</h2>

                        Baza: https://sql.uniainteractive.home.pl/sql/ <br>
                        login: uniainteractive107 <br>
                        hasło: Makarena444 <br> 

                        Login/logout + przekierowanie zrobione<br>

                        Dodalem przykladowy wyglad stronki, aby latwiej bylo funkcjonalnosci robic.<br>   
                        Przydaloby sie dorobic include naglowka i plikow js, aby kazda strona nie miala powtarzajacego sie kodu oraz dopracowac funkcje zmiany przyciskow. Bede wieczorem. Aras
                        <div id="fb-root">
                            <!-- <button id="fb-login">Zaloguj się do mojej aplikacji!</button>  -->
                        </div>
                         
         
		</div>
                <div id="copyright">
                    &copy; Eventoo </a>
		</div>
            </div>
        </div>
        
        
        
        
        
    </body>
</html>
