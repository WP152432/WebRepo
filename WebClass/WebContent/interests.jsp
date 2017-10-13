
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
                <br />
                <strong>기분탓이라고!</strong>
              </div>
              <div class="row">
                <div class="col-6 col-lg-4" style = "background-color : #eeeeee; border : solid 2px black;">
                  <h2>프로그래밍</h2>
                  프로그래밍은 사랑이다.
                  <p><a class="btn btn-secondary" href="http://blog.naver.com/PostList.nhn?blogId=jysa000&from=postList&categoryNo=44#" target = "_blank" role="button">게임 개발 일지 &raquo;</a></p>
                </div><!--/span-->
                <div class="col-6 col-lg-4"  style = "background-color : #eeeeee; border : solid 2px black;">
                  <h2>작곡 / 악기</h2>
                  <strong>뭔가 할줄 아는 것과 좋아하는 것이 비슷하다고 생각한다면, 아니다. 완전히 똑같다.</strong>
                  <p><a class="btn btn-secondary" href="http://blog.naver.com/PostList.nhn?blogId=jysa000&from=postList&categoryNo=42" role="button">작곡 &raquo;</a></p>
                </div><!--/span-->
                <div class="col-6 col-lg-4"  style = "background-color : #eeeeee; border : solid 2px black;">
                  <h2>소설 쓰기</h2>
                  창작욕을 불태운다.
                  <p><a class="btn btn-secondary" href="http://blog.naver.com/PostList.nhn?blogId=jysa000&from=postList&categoryNo=47&parentCategoryNo=47" role="button">중딩때 쓰던 소설 (항마력 주의) &raquo;</a></p>
                </div><!--/span-->
                <div class="col-6 col-lg-4"  style = "background-color : #eeeeee; border : solid 2px black;">
                  <h2>애니 보기</h2>
                  야레야레, 초6? 중1때 정도 이후로 애니와는 연을 끊었던 닝겐이었는데, 저번 여름방학때<br />
                  <h3>코노스바</h3> <a href = "https://en.wikipedia.org/wiki/KonoSuba">위키피디아 'Konosuba 문서 참조'</a>
                  를 보는 것으로 2년간의 <small><strike>무의식적</strike></small> 금욕 수련이 끝나버렸다.
                  이후로 성수가 추천해준
                  <h3>Re : Zero</h3> <a href = "https://en.wikipedia.org/wiki/Re:Zero_%E2%88%92_Starting_Life_in_Another_World">Re : Zero kara hajimeru lisekai segachu. 위키 문서 참조</a>
                  를 보고나서 리미트가 완전히 풀려버렸다.<br />
                  그래도 요즘은 좀 제정신을 차린편.
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
