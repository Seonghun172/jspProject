<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Google</title>
 
<link rel="shortcut icon" href="https://www.google.com/favicon.ico">
<link rel="icon" href="https://www.google.com/favicon.ico">
 
<style type="text/css">
 
body{
     margin: 0px;                    /* margin 여백: 0px */
     min-width: 1050px;              /* 최소 너비: 1050px */
     min-height: 550px;              /* 최소 높이: 550px */
}
 
#top{
     margin: 5px 5px;            
     float: right;                   /* 오른쪽 정렬 */
}
 
a{
     text-decoration: none; 
     font-size: 10.5pt;          
     margin: 0px 10px;
     color: grey;                    /* 텍스트 색: 회색 */
}
 
a:hover{
     text-decoration: underline;     /* 마우스 오버시(hover) 텍스트 밑줄*/
}
 
img{
     margin: 10px 7px;               
     width: 20px;                    /* 이미지 너비: 20px */
     vertical-align: middle;              /* 세로정렬: 가운데 */
}
 
#login{
     background-color: #4485F3;      /* 배경색: #4485F3 */
     color: #FFFFFF;                      /* 글자색: #FFFFFF */
     width: 70px;                    
     height: 30px;
     border: none;                   /* 테두리: 없음 */
     vertical-align: middle;
     margin: 10px 12px 10px 7px;
     font-weight: bold;              /* 글씨 굵게 */
     font-size: 10pt;
     border-radius: 2px;                  /* 테두리 각을 둥그렇게 */
}

#register{
     background-color: #4485F3;      /* 배경색: #4485F3 */
     color: #FFFFFF;                      /* 글자색: #FFFFFF */
     width: 70px;                    
     height: 30px;
     border: none;                   /* 테두리: 없음 */
     vertical-align: middle;
     margin: 10px 12px 10px 7px;
     font-weight: bold;              /* 글씨 굵게 */
     font-size: 10pt;
     border-radius: 2px;                  /* 테두리 각을 둥그렇게 */
}
 
#google{
     display: block;                      /* 블록지정 */
     width: 260px;                   
     height: 90px;
     margin: 180px auto 20px;        /* margin 여백: 상(180px) 우(auto) 하(20px) 좌(auto) */
}
 
#search{
     display: block;                 
     margin: 0 auto;
     width: 550px;
     height: 40px;
     font-size: 12pt;
     box-shadow: 1px 1px 1px 1px 1px #C3C3C3;/* 박스 테두리 그림자: (오른쪽 위치) (아래 위치) (블러) (색상) */
     border: 1px solid #EAEAEA;           /* border: (선 굵기) (선 모양) (선 색) */
     text-indent : 50px;
     
     border-radius: 2em;
	border-top-left-radius: 2em;
	border-top-right-radius: 2em;
	border-bottom-left-radius: 2em;
	border-bottom-right-radius: 2em;
	outline:none;

}
 
#box{
     text-align: center;                       /* 중앙 정렬 */
}
 
#google_search{
     width: 135px;
     height: 40px;
     margin: 30px 3px;
     border: none;
     background-color: #F4F4F4;
     font-weight: bold;
     color: grey;
     
}
 
#Feeling_Lucky{
     width: 180px;
     height: 40px;
     margin: 30px 3px;
     border: none;
     background-color: #F4F4F4;
     font-weight: bold;
     color: grey;
}
 
#google_search:hover, #Feeling_Lucky:hover{
     border: 1px solid #C6C6C6;
     color: black;
}
 
#bottom{
     border:1px solid #E4E4E4;
      
     /* 테두리 오른쪽 왼쪽 선 때문에 전체화면에서 y축 스크롤이 생김 --> 테두리 왼쪽 오른쪽 박스선 제거 */
     border-right: none;
     border-left: none;
      
     /* 위치 맨 아래로 지정 */
     position:absolute;
     bottom: 0px;
      
     background-color: #F2F2F2;
     height: 50px;
     width: 100%;
     min-width: 1050px;
}
 
#bottom_left{
     float: left;                    /* 왼쪽 정렬 */
     padding: 15px;                       /* padding 여백: 15px */
}
 
#bottom_right{
     float: right;
     padding: 15px;
}
 
</style>
</head>
<body>
<% session.invalidate();%>
<div id="top">
     <a href="https://www.google.com/intl/ko/gmail/about/#">Gmail</a>
     <a href="https://www.google.co.kr/imghp?hl=ko&tab=wi&ei=s4dDWb7SFsmw0gTlr6eQBA&ved=0EKouCBUoAQ">이미지</a>
     <input id="register" type="button" value="회원가입" onclick="location.href='signup.html'">
     <input id="login" type="button" value="로그인" onclick="location.href='https://accounts.google.com/signin/v2/identifier?hl=ko&passive=true&continue=https%3A%2F%2Fwww.google.co.kr%2F&flowName=GlifWebSignIn&flowEntry=ServiceLogin'">
</div>
 
<br>
 
<div>
         <img id="google" src="4.png" title="Google">
</div>
 
<div>
         <input id="search" type="text" style="background:url(5.png), url(6.png); background-repeat: no-repeat; background-position: 88% 50%, 98% 50%;" title="검색">

</div>
 
<div id="box">
     <input id="google_search" type="button" value="Google 검색" onclick="location.href='#'">
     <input id="Feeling_Lucky" type="button" value="I'm Feeling Lucky" onclick="location.href='https://www.google.com/doodles'">
</div>
            
<div id="bottom">
 
     <div id="bottom_left">
         <a href="https://www.google.co.kr/intl/ko/ads/?fg=1">광고</a>
         <a href="https://www.google.co.kr/services/?fg=1#?modal_active=none">비즈니스</a>
         <a href="https://www.google.co.kr/intl/ko/about/">Google 정보</a>      
     </div>
 
     <div id="bottom_right">
         <a href="https://www.google.co.kr/intl/ko/policies/privacy/?fg=1">개인정보처리방침</a>
         <a href="https://www.google.co.kr/intl/ko/policies/terms/regional.html">약관</a>
         <a href="#">설정</a>
     </div>
</div>
</body>
</html>