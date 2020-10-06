<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>펀딩 진행 중</title>
  <link rel="stylesheet" href="/resources/css/funding.css">
  <link rel="stylesheet" href="https://schools.firstnews.co.uk/wp-content/themes/firstnews_timber/assets/css/site.css?1528204338" />
  <script src="/resources/js/funding.js"></script>
  <script type="application/x-javascript">
	
    addEventListener("load", function() {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  
</script>
  <script>
    $(function() {
    	var start = '<fmt:formatNumber value="${(fundnow.money_temp / fundnow.don_attainment) * 100}" pattern="#" type="number" />';
    	var check = 1;
    	if(start > 100){
    		  start = 100;
    		}
    	'<sec:authorize access="isAuthenticated()">'
    	for(var i = 0; i < 1; i++) {
    		'<c:forEach items="${bmkcheck}" var="bmkcheck" varStatus="status">'
    		'${bmkcheck.bookmark}';
    		'${bmkcheck.userid}';
    		if('${bmkcheck.bookmark}' == 1 && '${bmkcheck.userid}' == '<sec:authentication property = "principal.username"/>') {
    			$("#bmkinsert").hide();
    		}
    		'</c:forEach>'
    	}
    	'</sec:authorize>'
      $('.count').each(function() {
        $(this).prop('Counter', 0).animate({
          Counter: $(this).text()
        }, {
          duration: 1000,
          easing: 'swing',
          step: function(now) {
            $(this).text(Math.ceil(now));
          }
        });
      });
      window.runCircle = function() {
        $('.progress-circle').attr('data-progress', start);
      }
      setTimeout(window.runCircle, 100);

      $('.funding__option').click(function() {
        $('.funding__option.selected').removeClass('selected');
        $(this).addClass('selected');
      })
    });

    $(document).ready(function(){
    	var bt1 = '<fmt:formatNumber value="${(fundnow.money_temp) + 10000}" type="number" />';
    	var bt2 = '<fmt:formatNumber value="${(fundnow.money_temp) + 30000}" type="number" />';
    	var bt3 = '<fmt:formatNumber value="${(fundnow.money_temp) + 50000}" type="number" />';
    $("#btn1").click(function(){
        $("#amount").html("후원할 금액<br>10,000원");
        $("input[name=money_temp]").val(bt1);
        $("#pay").val(10000);
    });
    $("#btn2").click(function(){
        $("#amount").html("후원할 금액<br>30,000원");
        $("input[name=money_temp]").val(bt2);
        $("#pay").val(30000);
    });
    $("#btn3").click(function(){
        $("#amount").html("후원할 금액<br>50,000원");
        $("input[name=money_temp]").val(bt3);
        $("#pay").val(50000);
    });
    $("#pay").click(function(){
    	if($("input[name=money_temp]").val() == 0) {
    		alert("금액을 설정해주세요.");
    		return false;
    	}
    	else {
    		alert("펀딩되었습니다.");
    	}
    });
});

  </script>
</head>

<body>
	<div>
		<jsp:include page="/WEB-INF/views/include/header-for_front(nobg).jsp"
			flush="false" />
	</div>
	<div class="funding">
	<br><a href="/fund_main" style="float: left; width: 10%;"><h3>펀딩 메인</h3></a><h3 style="float: left; width: 10%;"> > ${fundnow.title}</h3>
	<br><div><c:out value="${fundnow.title}"/></div>
	
	<sec:authorize access="isAuthenticated()">
	<div class="funding__payment">
	<form role ="form" action = "/bmkInsert" method = "post">
	<input type="hidden" name="content_id"
                        value="${fundnow.content_id}" />
    <input type="hidden" name="userid"
                        value = "<sec:authentication property = "principal.username"/>" />                    
	<input type="hidden" name="${_csrf.parameterName}"
                        value="${_csrf.token}" /> 
    <div style="float: left; width: 50%;"><button type="submit" class="funding__option" id = "bmkinsert"><em><h3>즐겨찾기 등록</h3></em></button></div>                   
                        
	</form>
	<form role ="form" action = "/bmkDelete" method = "post">
	<input type="hidden" name="content_id"
                        value="${fundnow.content_id}" />
    <input type="hidden" name="userid"
                        value = "<sec:authentication property = "principal.username"/>" />                    
	<input type="hidden" name="${_csrf.parameterName}"
                        value="${_csrf.token}" /> 
    <div style="float: left; width: 50%;"><button type="submit" class="funding__option" id = "bmkdelete"><em><h3>즐겨찾기 해제</h3></em></button></div>                     
                        
	</form>
	</div>
	</sec:authorize>
	
	<br><br><div class="funding__total">등록일자 : <fmt:formatDate value="${fundnow.reg_date}"/> 등록자 : <c:out value="${fundnow.userid}"/></div><br>
	<div class="funding__total">태그 및 장르 : <c:out value="${fundnow.tag}"/></div>
	<div class="funding__total"><br>목표 펀딩금액<br>￦<fmt:formatNumber value="${fundnow.don_attainment}" type="number" maxFractionDigits="3"/></div><br>
	<div><img src="<c:out value="${fundnow.media2}"/>"></div><br>
	</div>
  
  
  <div class="funding">
  <div class="funding__total">간단한 소개<br><c:out value="${fundnow.content_intro }"/></div><br>
  <div class="funding__total">연령제한 : <c:out value="${fundnow.age_rate }"/>세 이상</div><br>
  <div class="funding__total">게임 실행<br><a href="${fundnow.game_launch }"></a></div><br>
  <div class="funding__total">실행가능 환경 : <c:out value="${fundnow.platform }"/></div><br>
  <div class="funding__total">지원 언어 : <c:out value="${fundnow.languages }"/></div><br>
  </div>
  
  <div class="progress-circle" data-progress="0">
    <div class="circle">
      <div class="full progress-circle__slice">
        <div class="progress-circle__fill"></div>
      </div>
      <div class="progress-circle__slice">
        <div class="progress-circle__fill"></div>
        <div class="progress-circle__fill progress-circle__bar"></div>
      </div>
    </div>
    <div class="progress-circle__overlay"></div>
    <div class="progress-count"><span class="count"><fmt:formatNumber value="${fundnow.money_temp / fundnow.don_attainment}" type="percent"/></span>%</div>
  </div>
  <div class="funding">
    <div class="funding__total">현재 모인 펀딩금액<br>￦<fmt:formatNumber value="${fundnow.money_temp}" type="number" maxFractionDigits="3"/></div><br>
  </div>
  <sec:authorize access="isAuthenticated()">
  <div class="funding">
    <div class="funding__amount" id="amount">후원할 금액<br> 0원</div>
  </div>
	<form role ="form" action = "/fund_now" method = "post">
	
	
	<input type="hidden" name='money_temp' value='<c:out value="0"/>' />   
  	<input type="hidden" name="userid"
                        value = "<sec:authentication property = "principal.username"/>" /> 
  	<input type="hidden" name="content_id"
                        value="${fundnow.content_id}" />
  	<input type="hidden" name="${_csrf.parameterName}"
                        value="${_csrf.token}" />  
  <div class="funding__payment">
    <div style="float: left; width: 32%;"><button type="button" class="funding__option" id="btn1"><em>10,000</em></button></div>
    <div style="float: left; width: 32%;"><button type="button" class="funding__option" id="btn2"><em>30,000</em></button></div>
    <div style="float: left; width: 32%;"><button type="button" class="funding__option" id="btn3"><em>50,000</em></button></div>
    
    <div class="payment" ><button id="pay" value="0" type="submit" name="donation" data-oper='modify'>펀딩하기</button></div><br>
    
  </div>
  
                                                     
  </form>
	</sec:authorize>
  <div class="social">
    <div class="social-share facebook">
      <ion-icon name="logo-facebook"></ion-icon><span>Facebook</span>
    </div>
    <div class="social-share twitter" >
      <script src="http://www.twitter.com"></script>
      <ion-icon name="logo-twitter"></ion-icon><span>Twitter</span>
    </div>
  </div>

  <script src="https://unpkg.com/ionicons@4.1.2/dist/ionicons.js"></script>
	<div>
		<jsp:include page="/WEB-INF/views/include/footer_mp.jsp" flush="false" />
	</div>
	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
</body>

</html>
