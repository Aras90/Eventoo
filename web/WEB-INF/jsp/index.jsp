<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://java.sun.com/jsf/html"
      xmlns:fb="http://www.facebook.com/2008/fbml">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eventoo-szykuj się na wielką imprezę</title>
        Baza bedzie na localu(poki co...) wiec instalujcie mysql i robcie usera 'root' i haslo 'sql' do niego.Zeby kazdy mial to samo.
       
    </head>

    <body>
        
      
        <h1>Eventoo</h1>
        <a href="http://facebook.com">zaloguj</a>
        <h2 style="font-size: 100px; text-align: center">DO ROBOTY!</h2>
        
        Baza: https://sql.uniainteractive.home.pl/sql/ <br>
        login: uniainteractive107 <br>
        hasło: Makarena444 <br> 
       
        
        Login/logout + przekierowanie zrobione
        
        
        <div id="fb-root">
            <!-- <button id="fb-login">Zaloguj się do mojej aplikacji!</button>  -->
        </div>
         <fb:login-button>Zaloguj do fb</fb:login-button>
         
         
        <script src="http://connect.facebook.net/pl_PL/all.js"></script>
        <script>
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
                     window.top.location = 'http://localhost:8080/Eventoo/logged.jsp';
                }
            });

         
         
        </script>
       
      
        
        
        
        
        
    </body>
</html>
