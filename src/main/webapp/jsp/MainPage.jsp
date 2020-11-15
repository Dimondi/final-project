<%@ page import="models.Club" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="models.Event" %>
<%@ page import="models.News" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: didef
  Date: 14.11.2020
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/MainPage_css.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Title</title>
</head>

<%
//       if(session.getAttribute("username")==null) {
//            response.sendRedirect("../auth.jsp");
//       }
       ArrayList<Club> clubs = new ArrayList<>();
       ArrayList<Event> events = new ArrayList<>();
       ArrayList<News> news = new ArrayList<>();
%>

<body>
<div class="wrapper">
    <aside class="sidebar">
        <div class="logotype">NewsApp</div>
        <ul class="sidebar-list">
<%--            sb active        --%>
            <a id="news"><li class="sidebar-item"><i class="fa fa-newspaper-o">NEWS</i></li></a>
            <a id="clubs"><li class="sidebar-item"><i class="fa fa-th">Clubs</i></li></a>
            <a id="events"><li class="sidebar-item"><i class="fa fa-picture-o">Events</i></li></a>
        </ul>
    </aside>
    <main class="content">
        <div class="feed-grid">

            <% for(News paper : news){%>
            <div class="card-half wide" id="newsInfo">
                <div class="card-text">
                    <h4><%=paper.getName()%></h4>
                    <p><%=paper.getDescription()%></p>
                </div>
            </div>
            <%}%>

            <% for(Club club : clubs){%>
            <div class="card-half wide" id="clubsInfo">
                <div class="card-img"><span class="label"> <i class="fa fa-star"></i></span><img src="<%=club.getImage()%>" alt="img"/></div>
                <div class="card-text">
                    <h4><%=club.getName()%></h4>
                    <p><%=club.getDescription()%></p>
                </div>
            </div>
            <%}%>

            <% for(Event event : events){%>
            <div class="card-half wide close" id="eventsInfo">
                <div class="card-img"><span class="label"> <i class="fa fa-star"></i></span><img src="<%=event.getImage()%>" alt="img"/></div>
                <div class="card-text">
                    <h4><%=event.getName()%></h4>
                    <p><%=event.getDescription()%></p>
                </div>
            </div>
            <%}%>

        </div>
    </main>
</div>
<script src="${pageContext.request.contextPath}/js/MainPage_js.js"></script>
</body>
