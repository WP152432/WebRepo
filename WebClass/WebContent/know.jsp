<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVo" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="/WebClass/css/footer.css">
<style>
div.container {
  padding-top: 30px;
  padding-bottom: 20px;
}
</style>

<script>
function menu_over(e) {
	e.setAttribute("class", "nav-item active");
}
function menu_out(e) {
	e.setAttribute("class", "nav-item");
}
</script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
  	<%@ include file="menu.jsp" %>
  	
    <%-- 세션이 없는 경우 --%>
    <%
    UserVo user = (UserVo)(session.getAttribute("user"));
    if(user==null) {
    %>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/login.jsp">Sign in</a>
    	<span class="text-bold text-white">&nbsp; or &nbsp;</span>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/signup2.jsp">Sign up</a>
    	</div>
    	</nav>
    	<%} else { %>
    <%-- 세션이 있는 경우 --%>
	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%=user.getName() %>님
	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      <form action="/WebClass/logout" method = "get">
	      	<button type="submit" class="dropdown-item">Sign out</button>
	       	</form><div class="dropdown-divider"></div>
	        <button type="button" class="dropdown-item">Action1</button>
	        <button type="button" class="dropdown-item">Action2</button>
	      </div>
	    </li>
	    </ul>
	    </div>
    	</nav>
	    <%} %>
  </div>
</nav>

        <div class="container" style = "margin-top : 70px">

          <div class="row row-offcanvas row-offcanvas-right">

            <div class="col-12 col-md-9">
              <p class="float-right d-md-none">
                <button type="button" class="btn btn-primary btn-sm" data-toggle="offcanvas">Toggle nav</button>
              </p>
              <div class="jumbotron">
                <br /><br />
                <h1>안녕, 세상!</h1>
                <p><strike>메뉴와 레이아웃이 바뀌지 않은건 기분탓이다.</strike></p>
                Hello World! 딱 보면 알듯이 프로그래밍이 주 할일이다.
              </div>
              <div class="row">
                <div class="col-6 col-lg-4" style = "background-color : #eeeeee; border : solid 2px black;">
                  <h2>프로그래밍</h2>
                  <ul>
                    <li>
                      C++
                    </li>
                    <li>
                      JAVA
                    </li>
                    <li>
                      Javascript
                    </li>
                    <li>
                      GM:S
                    </li>
                    <li>
                      Unity
                    </li>
                    <li>
                      Node.js
                    </li>
                    <li>
                      html / css
                    </li>
                  </ul>
                  <strong>특히 GM:S 와 Unity를 한다.</strong>
                  <p><a class="btn btn-secondary" href="http://blog.naver.com/PostList.nhn?blogId=jysa000&from=postList&categoryNo=44#" target = "_blank" role="button">게임 개발 일지 &raquo;</a></p>
                </div><!--/span-->
                <div class="col-6 col-lg-4"  style = "background-color : #eeeeee; border : solid 2px black;">
                  <h2>작곡 / 악기</h2>
                  <p>피아노, 오카리나, 단소 <small><strike>쳐 맞으면서 배웠다.</strike></small>, 리코더를 잘 다룬다. 가끔 새벽감성 돋으면 작곡을 하기도 한다.</p>
                  <p><a class="btn btn-secondary" href="http://blog.naver.com/PostList.nhn?blogId=jysa000&from=postList&categoryNo=42" role="button">작곡 &raquo;</a></p>
                </div><!--/span-->
                <div class="col-6 col-lg-4"  style = "background-color : #eeeeee; border : solid 2px black;">
                  <h2>소설 쓰기</h2>
                  <p>중학교때부터 꾸준히 해오던 활동이다. 지금은 맛탱이가 가신 노트북에 대략 20편의 작품이 있는데, 하나 같이 30페이지를 넘긴게 드물다. 쓰다보면 아이디어가 고갈되서 그렇다.<br />
                  요즘은 꾸준히 온라인 독스에 소설을 쓰고 있다. Google Docs는 최고다. Google 형님은 최고다. <small><strike>그러니까 내가 메인에 전 세계 구글을 박아놨지.</strike></small> </p>
                  <p><a class="btn btn-secondary" href="http://blog.naver.com/PostList.nhn?blogId=jysa000&from=postList&categoryNo=47&parentCategoryNo=47" role="button">중딩때 쓰던 소설 (항마력 주의) &raquo;</a></p>
                </div><!--/span-->
              </div><!--/row-->
            </div><!--/span-->

            <div class="col-6 col-md-3 sidebar-offcanvas" id="sidebar">
              <div class="list-group">
                <a href="http://www.google.ru" class="list-group-item">구글RU</a>
                <a href="http://www.google.uk" class="list-group-item">구글UK</a>
                <a href="http://www.google.jp" class="list-group-item">구글JP</a>
                <a href="http://www.google.kr" class="list-group-item">구글KR</a>
                <a href="http://www.google.in" class="list-group-item">구글IN</a>
                <a href="http://www.google.nz" class="list-group-item">구글NZ</a>
                <a href="http://www.google.au" class="list-group-item">구글AU</a>
                <a href="http://www.google.fr" class="list-group-item">구글FR</a>
                <a href="http://www.google.cn" class="list-group-item">구글CN</a>
              </div>
            </div><!--/span-->
          </div><!--/row-->

          <hr>

          <footer>
            <p>&copy; Company 2017</p>
          </footer>

        </div><!--/.container-->


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery.min.js"><\/script>')</script>
        <script src="../../../../assets/js/vendor/popper.min.js"></script>
        <script src="../../../../dist/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="../../../../assets/js/ie10-viewport-bug-workaround.js"></script>
        <script src="offcanvas.js"></script>
      </body>
    </html>
