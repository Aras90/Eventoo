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
out.println("Ratingi'" + listaRatings.size() + "':\n");
for(int i=0;i<listaRatings.size();i++){
out.println(listaRatings.get(i).getId_Rating() + " " + listaRatings.get(i).getValue() + " " + listaRatings.get(i).getCreatedAt()+"\n");
}
out.println("Pictures'" + listaPictures.size() + "':\n");
for(int i=0;i<listaPictures.size();i++){
out.println(listaPictures.get(i).getId_Picture() + " " + listaPictures.get(i).getLink() + " " + listaPictures.get(i).getName()+"\n");
}
out.println("Comments'" + listaComments.size() + "':\n");
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
        <script src="js.js"></script>
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
                            
                                <!--button onclick="fbLogout();" >Wyloguj sie</button-->
                                <a onclick="fbLogout();">wyloguj sie</a>
                            </li>
			</ul>
			<br class="clear" />
                    </div>
		</div>
		<div id="main">
                        Kazdy robi baze localna mysql
                        User: root
                        haslo: sql
                        tworzycie schema(baze) o nazwie 'eventoo_db' wszystko z malej.
                        
                        na samej gorze na pasku jest napoisane cos tam w stylu Userzy'liczba' Comments'liczba' ... to te liczby to ilosc rekordow w danej tabelce.
                        w pliku index.jsp na samej gorze macie przyklad sciagniecia danych z bazy i uzywania ich jako lista obiektow. Czyli tworzenie klasy MainClass ktora ma w sobie zapytania sciagajce wszystkie dane z danych tabel.
                        w razie pytan piszcie gg(Zwolej).
                        <h1>Eventoo</h1>
                        <a href="http://facebook.com">zaloguj</a>
                        <h2 style="font-size: 100px; text-align: center">DO ROBOTY!</h2>

                        Baza: https://sql.uniainteractive.home.pl/sql/ <br>
                        login: uniainteractive107 <br>
                        hasło: Makarena444 <br> 

                                         
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
