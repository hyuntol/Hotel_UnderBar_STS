<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관 동의</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/font.css" />
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

<style type="text/css">
* {
	font-family: 'twayair', 'Roboto', 'sans-serif';
}

#content.cols-d {
	width: 583px;
	min-width: 583px;
}

.f {
	position: relative;
	margin: 0;
	padding: 0;
	color: #666;
}

.f p {
	width: 100%;
	text-align: center;
}

p {
	width: 100%;
	text-align: center;
}

.f p:after {
	content: "";
	display: block;
	overflow: hidden;
	clear: both;
	height: 0;
}

.f textarea {
	width: 571px;
	height: 117px;
	padding: 3px 3px 3px 6px;
	border: 1px solid #ececec;
	border-top-color: #e1e1e1;
	border-left-color: #e1e1e1;
	background: #ececec;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
}

.scheme-g {
	margin: 26px 0 8px;
	padding: 0px;
	font-size: 15px;
	font-weight: 100;
}

.button_big {
	position: relative;
	top: 31px;
	width: 100%;
	border: 0;
	border-radius: 7px;
	cursor: pointer;
	display: inline-block;
	font-size: 15px;
	line-height: 24px;
	text-decoration: none;
	color: #fff;
	background: #0080ff;
	text-shadow: 1px 1px 1px #0066cc;
	-webkit-transition: all 0.2s ease-out;
}

#h {
	text-align: center;
}

textarea {
	font-weight: normal;
}

input {
	vertical-align: -3px;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		
		$("#nextBtn").click(function() {
			if ($("#check_1").is(":checked") == false) {
				alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
				return;
			} else if ($("#check_2").is(":checked") == false) {
				alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다..");
				return;
			} else {
				$("#terms_form").submit();
				console.log("클릭");
				var checkbox = opener.document.getElementsByName('check');
				$(checkbox).prop("checked", true);
				 window.close();	 
			}
		});
	});
</script>

</head>
<body>


	<article id="content" class="cols-d">
		<div>
			<h3 id="h">Hotel UnderBar 이용약관</h3>
			<form id="terms_form" class="f">
				<h4 class="scheme-g">●개인정보 수집∙이용 동의</h4>
				<textarea readonly="readonly" disabled
					style="font-size: 15px; resize: none;">
1. Hotel UnderBar는 개인정보의 수집 시 관련 법규에 따라 가입신청서 또는 이용약관에 그 수집 범위 및 목적을 사전 고지 합니다.
2. Hotel UnderBar는 고객의 기본적인 인권을 현저하게 침해할 우려가 있는 개인정보를 수집하지 않습니다.
3. Hotel UnderBar는 다음 각 호의 개인정보를 아래와 같은 목적을 위하여 수집하고 있습니다.

개인정보의 수집 항목
1. 필수 정보
- 아이디, 비밀번호,  이메일, 휴대폰번호, 전화번호


수집ㆍ이용목적
- 아이디, 비밀번호, 이메일, 휴대폰번호, 전화번호
: 서비스 이용에 따른 본인 식별 절차에 이용


* 위 정보는 가입 당시 정보 뿐만 아니라 정보 수정으로 변경된 정보를 포함합니다.

개인정보의 수집 방법
- Hotel UnderBar는 서면양식에 서명하거나, Hotel UnderBar에서 운영하는 홈페이지, 경품 행사 응모, 제휴사로 부터의 제공 등의 방법으로 개인정보를 수집합니다.

수집하는 개인정보의 보유 및 이용기간
회원님의 개인정보는 회원탈회시 까지 보유 및 이용하며, 개인정보 수집∙이용 목적이 달성된 후에는 재생할 수 없는 방법에 의하여 완전히 삭제하며, 추후 열람이나 이용이 불가능한 상태로 처리합니다.
※ 상기 개인정보 수집∙이용에 대하여 귀하는 동의하지 않을 수 있습니다. 단, 동의 거부 시 홈페이지 회원가입 불가합니다.
            </textarea>
				<p style="font-size: 12px;">
					※ 상기 개인정보 수집∙이용에 대하여 귀하는 동의하지 않을 수 있습니다.<br>단, 동의 거부 시 홈페이지
					회원가입 불가합니다.<br> <br> <input type="checkbox" id="check_1"
						class="check" name=""> 이용약관에 동의합니다.(필수)
				</p>
				<h4 class="scheme-g">●회원가입 약관</h4>
				<textarea readonly="readonly" disabled
					style="font-size: 15px; resize: none;">제1조(목적)
본 약관은 Hotel UnderBar(주)(이하 "회사"라고 한다)가 제공하는 홈페이지의 인터넷 회원 서비스(이하 "서비스"라 한다)의 이용 및 회원가입에 관련된 사항과 절차 그리고 기타 필요한 사항을 규정함을 목적으로 합니다.

제2조(약관의 효력과 변경)
본 약관은 전기통신사업법 및 동법 시행령에 따라 홈페이지에 공시함으로서 효력을 발생합니다. 회사는 본 약관을 변경할 수 있으며, 변경된 약관은 공지함으로서 효력을 발생합니다.
본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법 및 기타 관련법령에 규정되어 있는 사항에 준합니다.

제3조(용어의 정의)
본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
① 회원: 홈페이지를 통해 인터넷회원서비스 이용약관에 동의하고 회원가입을 하신 고객.
② 아이디(ID): 회원의 식별과 서비스 이용을 위하여 회원이 선정하고 회사가 승인한 문자 와 숫자의 조합
③ 비밀번호: 회원의 비밀 유지를 위하여 회원 본인이 설정한 문자와 숫자의 조합
④ 회원탈퇴: 회사 또는 회원이 인터넷회원 서비스 제공의 중단을 요청하는 의사를 표현한 경우 자유롭게 탈퇴가 가능합니다.

제4조(이용계약의 성립)
① 서비스 이용 신청 시에 회원이 "동의" 버튼을 선택하면 이 약관에 동의하는 것으로 간주합니다.
② 이용계약의 성립시기는 서비스 이용 희망자의 이용약관 동의 후 신청에 대하여 회사의 승인이 회원에게 도달한 시점으로 합니다.

제5조(이용신청)
① 본 서비스를 이용하기 위해서는 소정의 가입신청 양식에서 요구하는 필수 이용자 정보를 기록하여 신청합니다.
② 실명인증확인절차를 거쳐 인증된 이용자만 가입이 가능하며 기재되는 이용자 정보는 실제 정보로 간주되며, 허위로 기입하는 내용에 대하여는 법적인 보호를 받을 수 없으며 서비스의 제한을 받을 수 있습니다.
③ 회원은 이용시 신청한 내용이 변경되었을 경우에는 온라인상에서 회원정보변경을 해야 합니다.

제6조(이용신청의 승낙)
회사는 회원이 제5조에서 정한 모든 사항을 정확히 기재하여 이용신청을 하였을 때 승낙합니다.
① 회사는 다음에 해당하는 경우에 승낙을 유보할 수 있습니다.
가.서비스 관련 설비에 여유가 없는 경우
나.기술상 지장이 있는 경우
다.기타 회사가 필요하다고 인정되는 경우
② 회사는 다음에 해당하는 경우에 이를 승낙하지 않거나 승인을 취소할 수 있습니다.
가.다른 사람의 명의를 사용하여 신청한 경우
나.이용자 정보를 허위로 기재하여 신청한 경우
다.사회의 질서 또는 미풍양속을 저해할 목적으로 신청한 경우
라.기타 회사가 정한 이용신청 요건이 미비되었을 경우

제7조(서비스 이용 및 제한)
① 서비스이용은 회사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 24시간 운영함을 원칙으로 합니다. 단, 시스템 정비를 위하여 부득이한 경우, 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지하는 경우, 회사가 서비스를 제공할 수 없는 사유가 발생할 경우에는 서비스 제공을 중지할 수 있습니다.
② 회사에서 제공하는 서비스 중 일부는 회원에 가입하여 회사에서 인정한 ID와 비밀번호를 통해서만 서비스를 받을 수 있습니다.
③ ID와 비밀번호에 관한 모든 관리책임은 회원에게 있습니다. 회원에게 부여된 ID와 비밀번호의 관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 책임은 회원에게 있습니다. 자신의 ID가 부정하게 사용된 경우 회원은 반드시 회사에 그 사실을 통보해야 합니다.

제8조(회사의 의무)
회사는 서비스 제공과 관련해서 알고 있는 회원의 신상정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다. 단, 전기통신 기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보통신 윤리위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우는 그러하지 않습니다.

제9조(회원의 의무)
① 회원은 관계법령, 이 약관의 규정, 이용안내 및 주의사항 등 회사가 통지하는 사항을 준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 안됩니다.
② 회원은 회사의 사전 동의 없이 서비스를 이용하여 어떠한 영리행위도 할 수 없습니다.
③ 회원은 서비스를 이용하여 얻은 정보를 회사의 사전 동의 없이 복사, 복제, 변경, 번역, 출판, 방송 기타의 방법으로 사용하거나 이를 타인에게 제공할 수 없습니다.
④ 회원은 서비스 이용과 관련하여 다음 각 호의 행위를 하여서는 안됩니다. 회사는 회원이 다음에 해당하는 행위를 하였을 경우 사전 통지 없이 이용계약을 해지하거나 또는 기간을 정하여 서비스 이용을 제한할 수 있습니다.
가. 다른 회원의 아이디(ID)를 부정 사용하는 경우
나. 범죄행위를 목적으로 하거나 기타 범죄행위와 관련된 행위
다. 미풍양속, 기타 사회질서를 해하는 경우
라. 타인의 명예를 훼손하거나 모욕하는 행위
마. 타인의 지적재산권 등의 권리를 침해하는 행위
바. 해킹행위 또는 컴퓨터 바이러스의 유포행위
사. 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 전송하는 행위
아. 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있는 일체의 행위
자. 기타 관계법령에 위배되는 행위
⑤ 회원은 회사의 게시물을 임의로 도용하여 타 사이트에 게시하거나 회사의 운영에 혼란을 초래하는 행위를 해서는 안됩니다.

제10조(탈퇴)
회원에 의한 계약해지는 탈퇴라 칭하며, 회원탈퇴는 신분확인 등의 문제로 본인이 ID, 비밀번호를 입력하여 로그인 후 회원탈퇴 절차를 밟거나, E-mail(so699@naver.com)로 신청하시면 회사가 메일을 접수하는 데로 탈퇴 결과를 메일로 통보해드립니다. ID 변경은 불가하며 부득이하게 ID를 변경하고자 하신다면 탈퇴를 하신 후 재가입하셔야 합니다.

제11조(손해배상)
회사는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 그 손해가 회사의 중대한 과실에 의한 경우를 제외하고 이에 대하여 책임을 부담하지 아니합니다.

제12조(면책, 배상)
① 회사는 회원이 서비스에 게재한 정보, 자료, 사실의 정확성, 신뢰성 등 그 내용에 관하여는 어떠한 책임을 부담하지 아니하고 회원은 자기의 책임아래 서비스를 이용하며, 서비스를 이용하여 게시 또는 전송한 자료 등에 관하여 손해가 발생하거나 자료의 취사선택, 기타 서비스의 이용과 관련하여 어떠한 불이익이 발생하더라도 이에 대한 모든 책임은 회원에게 있습니다.
② 회사는 제 10조의 규정에 위반하여 회원간 또는 회원과 제 3자간에 서비스를 매개로 하여 물품거래 등과 관련하여 어떠한 책임도 부담하지 아니하고, 회원이 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다.
③ 회원 아이디(ID)와 비밀번호의 관리 및 이용상의 부주의로 인하여 발생되는 손해 또는 제 3자에 의한 부정사용 등에 대한 책임은 모두 회원에게 있습니다.
④ 회원이 제 10조, 기타 이 약관의 규정을 위반함으로 인하여 회사가 회원 또는 제3자에 대하여 책임을 부담하고 되고, 이로써 회사에게 손해가 발생하게 되는 경우, 이 약관을 위반한 회원은 회사에게 발생하는 모든 손해를 배상하여야 하며, 동 손해로부터 회사를 면책시켜야 합니다.

제13조(계약해지 및 이용제한)
회사와 회원은 서비스와 관련하여 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 합니다. 그럼에도 불구하고, 동 분쟁으로 인하여 소송이 제기될 경우 동 소송은 회사의 본사 소재지 관할 법원으로 합니다.

부 칙
본 약관은 2021년 5월 25일부터 시행합니다.
부 칙
본 약관은 2021년 5월 25일부터 시행합니다.
            </textarea>
				<p style="font-size: 12px;">
					<input type="checkbox" id="check_2" class="check" name="">
					이용약관에 동의합니다.(필수)
				</p>
				<h4 class="scheme-g">●마케팅/홍보의 수집 및 이용 동의</h4>
				<textarea readonly="readonly" disabled
					style="font-size: 15px; resize: none;">
1. 개인정보의 수집 및 이용 목적
신규 서비스 개발 및 마케팅ㆍ광고에의 활용
- 신규 서비스 개발, 이벤트 및 광고성 정보 제공 및 참여기회 제공, 접속 빈도 등 회원의 서비스 이용에 대한 통계

2. 수집하는 개인정보의 항목
필수항목 : 이름
선택항목 : 이메일, 핸드폰 번호

3. 개인정보의 보유 및 이용기간
이용목적의 달성 후 지체없이 파기

4. 동의거부권 및 불이익
개인정보의 마케팅/홍보의 수집 및 이용 동의를 거부하시더라도 회원 가입 시 제한은 없습니다. 다만, 마케팅 활용 서비스 안내 및 참여에 제한이 있을 수 있습니다.
            </textarea>
				<p style="font-size: 12px;">
					<input type="checkbox" id="check_3" class="check" name="">
					마케팅/홍보를 위하여 귀하의 개인정보를 이용하는데 동의합니다.(선택)
				</p>
				<input type="button" id="nextBtn" class="button_big"
					style="padding: 0 10px 10px 10px; height: 24px;" value="동의함" />
			</form>
		</div>
	</article>

</body>
</html>
