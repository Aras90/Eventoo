<%--
Views should be stored under the WEB-INF folder so that
they are not accessible except through controller process.

This JSP is here to provide a redirect to the dispatcher
servlet but should be the only JSP outside of WEB-INF.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <script src="http://connect.facebook.net/pl_PL/all.js"></script>
        <script>
            FB.init({
               appId  : '487331951334796',
               status : true, 
               cookie : true, 
               xfbml  : true  
             });
             
            <%--  FB.Event.subscribe('auth.login', function(response) {   
                window.location = "http://localhost:8080/Eventoo/logged.jsp";
            }); 
                 --%>
            FB.getLoginStatus(function(response){
                    if(response.session){
                         
                         top.location.href="http://localhost:8080/Eventoo/index.htm";
                    }
                    else{
                        // top.location.href="https://www.facebook.com/dialog/oauth?client_id=APP_ID&redirect_uri=redirect_url&scope=email,read_stream";
                        top.location.href="http://localhost:8080/Eventoo/logged.jsp";
                    }
                     
             });         
                     
             FB.getLoginStatus(function(response) {
                if (response.status === 'connected') {
                  // the user is logged in and has authenticated your
                  // app, and response.authResponse supplies
                  // the user's ID, a valid access token, a signed
                  // request, and the time the access token 
                  // and signed request each expire
                  
                    top.location.href="http://localhost:8080/Eventoo/logged.jsp";
                    
                  var uid = response.authResponse.userID;
                  var accessToken = response.authResponse.accessToken;
                } else if (response.status === 'not_authorized') {
                  // the user is logged in to Facebook, 
                  // but has not authenticated your app
                    top.location.href="http://localhost:8080/Eventoo/notAutorized.jsp";
                } else {
                  // the user isn't logged in to Facebook.
                  
                     top.location.href="http://localhost:8080/Eventoo/index.htm";
                }
             });
           
         
        </script>






   
  

