

<HTML>
<HEAD>
	<link rel=StyleSheet HREF='/css/haksa.css' type='text/css' title='css'>
	<script language="javascript" src="/js/ctrl.js"></script>
	<script language="javascript" src="/js/util.js"></script>
	<TITLE>::학기성적조회::</TITLE>

<script>


	var browserCheckText = new Array('iPhone', 'iPod', 'BlackBerry', 'Android', 'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson');
	 var mobile = 0;
	 for (var word in browserCheckText){
	  if (navigator.userAgent.toUpperCase().match(browserCheckText[word].toUpperCase()) != null){
	  	mobile++;
	   	alert('모바일 접근은 차단합니다');
	   	location.href = "https://portal.kau.ac.kr/sugang/tmpl/login_session.jsp";
	   	System.out.println("GradHakList.jsp : session fail ");
	   	session = request.getSession(true);
	   	session.invalidate();
	   	break;
	  }
	 }
</script>

	<script language=javascript>
<!--
	function GradTotList(){
		document.myform.action="GradTotList.jsp";
		document.myform.submit();
	}

	function lst(){
	  document.myform.action="TeachStuRateList.jsp";
	  document.myform.submit();
	}

	function just(){
	  document.myform.action="PersStuInfoFr.jsp";
	  document.myform.submit();
	}

	function back(){
		history.back(-1);
	}

	function sinChung(yy,hg,jogb,gmno, gaesulJungong, insEmailYn){
			if(gaesulJungong=="01012" || gaesulJungong=="01013" || gaesulJungong=="01014"  ) {
				alert("사이버강좌는 해당 대학으로 문의하시기 바랍니다");
			} else if(insEmailYn == 'N' ) {
				alert("교과목 담당 교수님의 이메일주소가 미등록되어 있으므로 개별 신청하시기 바랍니다.");
			} else {
				centerNewWin4('../buss/mybsvr_plus/view.jsp?fileNm=GRADHAKSANG01&arg1='+yy+'&arg2='+hg+'&arg3='+jogb+'&arg4='+gmno,'manual', '780','640');
				document.myform.action="GradHakList.jsp";
				document.myform.submit();

		  }
	}

	function sinChungChk(yy,hg,jogb,gmno, gaesulJungong, insEmailYn){
			centerNewWin4('../buss/mybsvr_plus/view.jsp?fileNm=GRADHAKSANG02&arg1='+yy+'&arg2='+hg+'&arg3='+jogb+'&arg4='+gmno,'manual', '780','640');
	}

-->

	</script>
</HEAD>



<body>





<table width="635">
	<tr height="23" valign="middle">
		<td width="23" rowspan="2">
		<img src="/images/title_icon.gif" border="0" align="middle"></td>
		<td width="576" valign="middle">
		<div align="left" valign="middle">&nbsp;&nbsp;<B>2017년 겨울학기 성적</B></div></td>
	</tr>
	<tr height="1">
		<td width="576" valign=bottom><div align="left">
		<img src="/images/title_bar.gif" border="0"  height="1"></div></td>
	</tr>
	<tr height="1"><td colspan="2"></tr>
</table>



<FORM name="myform" method="post">
<table border=0 width=800 cellspacing=0 cellpadding=0 >
	<tr >
		<td width="100%" align = left>&nbsp;&nbsp;성명 : 김보원</td>
  </tr>

	<tr>
		<td class="tr_0">
			<table width=790 border=0 cellpadding="0" cellspacing="0" class="table1"  >
  			<tr height="27">
					<td>
						<table border=0 cellpadding="0" cellspacing="1" width=790 >

  						<tr height="27" class="tr">
					  	  <td width="50" align="center">학수코드<BR>(Course Number)</td>
    						<td align="center">교과목명<BR>(Course Title)</td>
    						<td width="50" align="center">이수구분<BR>(Major)</td>
    						<td width="50" align="center">학점<br>(Credits)</td>
    						<td width="50" align="center">성적<br>(Grade)</td>
    						<td width="60" align="center">재수강여부<br>(Retake)</td>
    						<td align="center">비고<br>(Remarks)</td>
    						<td width="60" align="center">강의평가<br>(Evaluation)</td>
    						<td width="60" align="center">포트폴리오<br>(Portfolio)</td>
	   					</tr>

							<%-- <tr height="25" colspan="6" class="tr_0">
	  						<td align="center" colspan="8"> <font color="red">데이터 없음</font></td>
   						</tr> --%>

							<tr height="25" class="tr_1">
							  <td width="50" align="center">RC7104</td>
							  <td align="left">&nbsp;&nbsp;물리및실험II</td>
							  <td width="50" align="center">기필</td>
							  <td width="50" align="center">3</td>
							  <td width="50" align="center">A0</td>
							  <td width="60" align="center">재수강</td>
							  <td width="100" align="center"></td>
							  <td width="60" align="center">완료</td>
							  <td width="60" align="center">완료</td>
							  <td width="60" align="center"><input name="prmIn" class="button" onclick="javascript:sinChung('2017','25','A0000','0024','A3000','Y' )" type="button" value=" 신    청 "></td>
							 </tr>

						</table>
					</td>
				</tr>
			</table>
<br>
			<table border=0 cellpadding="0" cellspacing="1" width=790 class="table1">

  			<tr height="27" class="tr">
  				<td width="110" align="middle" rowspan=2><B> 총 계 </td>
    			<td width="110" align="middle"><B>신청학점<br>(Registered Credits)</td>
    			<td width="110" align="middle"><B>취득학점<br>(Acquired Credits)</td>
    			<td width="110" align="middle"><B>평점합<br>(Total Grades)</td>
    			<td width="110" align="middle"><B>평점평균<br>(GPA)</td>
    			<td width="110" align="middle"><B>학기석차<br>(Semester Ranking)</td>
    			<td width="130" align="middle"><B>비고<br>(Remarks)</td>
				</tr>
  			<tr height="27" class="tr">
    			<td 	align="middle" class="tr_1" ></td>
    			<td 	align="middle" class="tr_1" ></td>
    			<td 	align="middle" class="tr_1" ></td>
    			<td 	align="middle" class="tr_1" ></td>
    			<td 	align="middle" class="tr_1" ></td>
    			<td 	align="middle" class="tr_1" ></td>
				</tr>

    	</table>
  	</td>
	</tr>

</table>



</table>
  	</td>
	</tr>

	<tr>
	  <td>
	    <table border=0 cellpadding="0" cellspacing="1" width=790 >
  	    <tr height="27" class="tr_a1">
  	      <td>
  	         ■ 강의평가 관련 문의 : 일반 02-300-0015 / 공학인증 : 02-300-0451 <br>
  	         ■ 포트폴리오 입력 문의 : 학생지원팀 02-300-0022,0023,0025<br>
  	         ■ 대학원생 강의평가,포트폴리오 관련문의 : 대학원행정실 02-300-0302,0303
  	      </td>
  		</tr>
      </table>
	  </td>
	</tr>





</table>



<table width="790" align="left">
	<tr>
		<td>
		<font color="red">#.</font>&nbsp;&nbsp;대학원 학생의 학부 선수과목은 신청및취득학점, 평점합, 평점평균에서 제외된 상태에서 조회 됩니다.<br>
		</td>
	</tr>
</table>




</FORM>
</CENTER>

</BODY>
</HTML>
