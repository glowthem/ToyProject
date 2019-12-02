<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import = "java.sql.*"%>
     <%
     Integer point = (Integer)session.getAttribute("point");
     %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
       <title>Map & Timer</title>

       <script src="jquery.js"></script>
       <script src="jquery-migrate-1.4.1.min.js"></script>
       <script type="text/javascript"
              src="//dapi.kakao.com/v2/maps/sdk.js?appkey=36fca8cafbf99badf929c42dc12aede3"></script>
       <script type="text/javascript" src="map.js"></script>
       <script type="text/javascript" src="timer.js"></script>
       <script type="text/javascript" src="animation.js"></script>
       <link rel="stylesheet" type="text/css" href="main_cs.css">
       <script>
       $(function(){
            $(".ghost-button3").on("click",function(){
                alert("운행이 시작됩니다."+'\n'+
                      "결제는 운행이 끝난 후 요금표를 확인해주세요.");
                });
        });
        </script>
</head>
<body>
       <div id="box_wrap">
              <div id="map">

                     <div id="button">
                            <button class="ghost-button2"><span style="color:black">QR코드</span></button>
                            <button class="ghost-button"><span style="color:black">Menu</span></button>
                     </div>

                     <!-- QR코드 -->
                     <div id="hide">
                            <button class="cancel1">취소</button>
                             <a class="ghost-button3" onclick="location.href='main_screen2.jsp'"><img src="QR.png" class="menu" alt="오류"></a>
                     </div>

                     <!-- 왼쪽메뉴 -->
                     <div id="hide2">
                     <button class="cancel2">취소</button>
                            <div class="menu2">
                        
                                   <!--<button class="ghost-button3" onclick="location.href='main_screen2.html'"><span style="color:black">결제</span></button>-->
                                   <button class="point_click"><span style="color:black">포인트</span></button>
                                   <button class="event_click"><span style="color:black">요금표</span></button>
                                   <input class="ghost-button4" type="button" style="color:black" value="로그아웃"
                                          onclick="location.href='DB_logout.jsp'"></span>
                                   <div id="hide3" class="point">
                                          <small>포인트: <%=point%>p</small>
                                   </div>
                                   <div id="hide4" class="event">
                                          <img src="price.png" class="event" alt="오류">
                                   </div>
                            </div>
                     </div>

                     <script>map_Initial();</script>
                     <div id="timer">
                            <!-- <script>timer();</script> -->
                     </div>
                     <div id="setCenter">
                            <button onclick="moveTo()"><img src="refresh.png" width="38" height="40" alt="내 위치로 이동 버튼"></button>
                     </div>
              </div>
       </div>
</body>
</html>