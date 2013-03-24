<%@ include file="header.jsp" %>

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
List<Picture> listaPictures2 = mc.getUserPicturesData(1);
List<Comment> listaComments = mc.getCommentData();

out.println("zdjecia dziwne '" + listaPictures2.size() + "':\n");
for(int i=0;i<listaPictures2.size();i++){
out.println(listaPictures2.get(i).getName() + " " + listaPictures2.get(i).getId_User());
}
%>
<!out.println("Userzy'" + listaUsers.size() + "':\n");
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
}>

		<div id="main">
                    <div style="font-size: 20px; color: white; margin-bottom:20px;">Uporządkowałem trochę kod. Poprawiłem header, dodałem footer, zmieniłem pozycję loginu do fejsa, żeby nie skakało. No i teraz strona główna to index.jsp (znajduje się w tym samym folderze, co reszta podstron).
                        <div style="text-align: right">Mular</div></div>
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
                <%@ include file="footer.jsp" %>
