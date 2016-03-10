<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jstl/fn" prefix="fn" %>
<%@ taglib uri="http://www.unboundcommerce.com/jstl/uc" prefix="uc" %>
<%@ taglib uri="http://www.unboundcommerce.com/jstl/fl" prefix="fl" %>

<%-- set page name for omniture use --%>
<c:set var="pageName" value="Winners Circle: Landing Page" scope="request"/>
<c:set var="section" value="Winners Circle" scope="request"/>
<c:set var="subsection" value="Winners Circle: Landing" scope="request"/>
<c:set var="pageType" value="Winners Circle" scope="request"/>
<%-- Display page header --%>
<jsp:include page="misc_header.jsp" />
<style>
.modalWhite {
	background-color: #fff;
	position: relative;
	width: 82%;
	top: 50%;
	margin-top: -25%;
	padding: 6%;
	margin-left: 3%;
	border-radius: 4px;
}
.modalHeader {
	padding-bottom:10px;
}
</style>
<c:if test="${!empty error || !empty errorDetails}">
	<div class="error">
			<table><tr><td><img src="${siteProps.relativeSiteURL}/images/error.png" alt="error" /></td><td>
			<c:if test="${!empty error}">
					${error}
			</c:if>
			<c:if test="${!empty errorDetails}">
				<ul>
				<c:forEach var="errorEntry" begin="0" items="${errorDetails}" varStatus="sortStatus">
					<li>${errorEntry}</li>
				</c:forEach>
				</ul>
			</c:if>
			</td></tr></table>
	</div>
</c:if>

<div id="draft_landing" class="tAlignC blackBG">
	<div class="draftLogo">
		<img src="${siteProps.relativeSiteURL}/images/DraftLogo.png"/>
	</div>
	<div>
		<p class="uppercase knockout whiteFont" style="font-size:45px;padding-bottom:20px;">Enter the draft</p>
	</div>
	<div>
		<img width="60px" src="${siteProps.relativeSiteURL}/images/JordanLogo.png">
		<p class="uppercase whiteFont knockout_light" style="font-size:20px;letter-spacing:0.09em;padding: 10px 0 25px 0;">Jordan Retro 11 "72-10"</p>
	</div>
	<%--WINNERS CIRCLE ACCOUNT CREATED--%>
	<div id="WinnerCircle">
		<%--USER LANDS ON PAGE FROM WC--%>
		<c:if test="${accountCreationSuccessful == true}">
			<p id="ConfirmInfo" class="uppercase knockout displaynone" style="font-size:30px;">Confirm Your Info</p>
			<p>Once you enter the Draft, you can use it to<BR>check your status or shop finishline.com</p>
		</c:if>
	</div>
	<div class="whiteFont">
		<div id="lineupDates">
			<div class="col-33 inlineB">
				<div class="circleBorder">
					<p class="datesLinedUp knockout uppercase blackFont">12/7</p>
				</div>
				<p class="datesLinedUpSubText">Opens 12/7</p>
				<p class="datesLinedUpSubText">Closes 12/9</p>
			</div>
			<div class="col-33 inlineB">
				<div class="circleBorder">
					<p class="datesLinedUp knockout uppercase blackFont">12/11</p>
				</div>
				<p class="datesLinedUpSubText">Ticket</p>
				<p class="datesLinedUpSubText">Selection</p>
			</div>
			<div class="col-33 inlineB">
				<div class="circleBorder">
					<p class="datesLinedUp knockout uppercase blackFont">12/19</p>
				</div>
				<p class="datesLinedUpSubText">Buy Your</p>
				<p class="datesLinedUpSubText">Jordans</p>
			</div>
			<div class="clear"></div>
			<a href="#" class="skyBlue" style="font-size:15px;display:block;padding:20px 0 30px 0;">Learn More</a>
		</div>
		<%--SIGNED IN STATE--%>
		<div id="SignedInState">
			<%--USER LANDS ON PAGE WHEN ALREADY SIGNED IN--%>
			<c:if test="${SignedinAlready == true}">
				<button id="GetStartedButton" class="uppercase knockout skyButton Signin">Get Started</button>
				<p>Not ${Name}? <a href="#" class"skyBlue">Sign in with another account.</a></p>
			</c:if>
		</div>
		<div class="StartHereSection">
			<table width="100%">
				<tr>
					<td><div class="hr" style="background-color:#45ACE2;"></div></td>
					<td class="StartHeader" width="50%">
						<p id="StartHereText" class="uppercase knockout" style="font-size:30px;">Start Here</p>
						<p id="SignInText" class="uppercase knockout displaynone" style="font-size:30px;">Sign In</p>
						<p id="ConfirmInfo" class="uppercase knockout displaynone" style="font-size:30px;">Confirm Your Info</p>
					</td>
					<td><div class="hr" style="background-color:#45ACE2;"></div></td>                
				</tr>
			</table>
			<div class="StartHere whiteFont">
				<%--SIGN IN FORM--%>
				<form id="SignInForm" class="displaynone" action="#" method="get">
					<%--EMAIL--%>
					<div class="checkoutInputWrap DraftInput paddingBottom-10">
						<span class="tAlignL">Email</span>
						<div id="eDemailId" class="red"><c:if test="${!empty errorMap}">${errorMap.formEmailAddress}</c:if></div>
						<input id="emailId" class="input req" type="email" name="formEmailAddress" value="${formEmailAddress != null ? formEmailAddress : cart.emailAddress}"
						autocorrect="off" autocapitalize="off">
					</div>
					<%--PASSWORD--%>
					<div class="checkoutInputWrap DraftInput paddingBottom-10">
						<span class="tAlignL">Password</span>
						<div id="eDpasswordId" class="red"><c:if test="${!empty errorMap}">${errorMap.formEmailAddress}</c:if></div>
						<input id="emailId" class="input req" type="password" name="formPassword" value="${formEmailAddress != null ? formEmailAddress : cart.emailAddress}"
						autocorrect="off" autocapitalize="off">
					</div>
					<button id="SignInFormButton" class="uppercase knockout skyButton Signin">Sign In</button>
				</form>
				<%--HIDE FOR SIGN IN FORM--%>
					<p id="EnterDraftSub" style="padding-bottom:30px;font-size:15px;">Enter the Draft or check your status</p>
				<%--SHOW FOR SIGN IN FORM--%>
					<button id="SignInDraft" class="uppercase knockout skyButton Signin">Sign In</button>
				<%--HIDE FOR SIGN IN FORM--%>
				<div id="SignInHide">
					<p style="padding:10px 0;font-size:15px;">or</p>
					<%--LINK TO CREATE WC ACCOUNT--%>
					<button id="CreateAccountWC" class="uppercase knockout skyButton" onClick="parent.location='/wc_createaccount">Create Account</button>
				</div>
				<%--SHOW FOR SIGN IN FORM--%>
				<div id="ForgetPass" class="displaynone">
					<a class="skyBlue" href="#">Forget Password?</a>
				</div>
			</div>
			<div id="CreateAccount" class="displaynone">
					<%--CREATE ACCOUNT FORM--%>
					<form id="SignInForm" action="#" method="get">
						<%--Phone Number--%>
						<div class="checkoutInputWrap DraftInput paddingBottom-10">
							<span class="inlineB tAlignL DraftPhoneNumber">Phone Number</span>
							<span id="optionPhone" class="inlineB">?</span>
							<div id="eDformContactPhoneNumber" class="red"><c:if test="${!empty errorMap}">${errorMap.formContactPhoneNumber}</c:if></div>
							<input type="tel" class="input req" pattern="(\+?\d[- .]*){7,13}" value="${formContactPhoneNumber != null ? formContactPhoneNumber : cart.shippingAddress.phoneNumber}" name="formContactPhoneNumber" id="formContactPhoneNumber" maxlength="10" placeholder="(optional)"/>
						</div>
						<%--State--%>
						<div class="checkoutInputWrap DraftInput paddingBottom-10">	
						   <span class="tAlignL">State</span>
						   <div id="eDformState" class="red"><c:if test="${!empty errorMap}">${errorMap.formState}</c:if></div>
						   <div class="styledSelectDraft">
						   <select name="formState" id="DraftSelect" class="input req">
								<option>Select State</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'AK'}"> selected </c:if> value="AK">Alaska</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'AL'}"> selected </c:if> value="AL">Alabama</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'AR'}"> selected </c:if> value="AR">Arkansas</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'AZ'}"> selected </c:if> value="AZ">Arizona</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'CA'}"> selected </c:if> value="CA">California</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'CO'}"> selected </c:if> value="CO">Colorado</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'CT'}"> selected </c:if> value="CT">Connecticut</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'DC'}"> selected </c:if> value="DC">District of Columbia</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'DE'}"> selected </c:if> value="DE">Delaware</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'FL'}"> selected </c:if> value="FL">Florida</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'GA'}"> selected </c:if> value="GA">Georgia</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'HI'}"> selected </c:if> value="HI">Hawaii</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'IA'}"> selected </c:if> value="IA">Iowa</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'ID'}"> selected </c:if> value="ID">Idaho</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'IL'}"> selected </c:if> value="IL">Illinois</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'IN'}"> selected </c:if> value="IN">Indiana</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'KS'}"> selected </c:if> value="KS">Kansas</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'KY'}"> selected </c:if> value="KY">Kentucky</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'LA'}"> selected </c:if> value="LA">Louisiana</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'MA'}"> selected </c:if> value="MA">Massachusetts</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'MD'}"> selected </c:if> value="MD">Maryland</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'ME'}"> selected </c:if> value="ME">Maine</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'MI'}"> selected </c:if> value="MI">Michigan</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'MN'}"> selected </c:if> value="MN">Minnesota</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'MO'}"> selected </c:if> value="MO">Missouri</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'MS'}"> selected </c:if> value="MS">Mississippi</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'MT'}"> selected </c:if> value="MT">Montana</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'NC'}"> selected </c:if> value="NC">North Carolina</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'ND'}"> selected </c:if> value="ND">North Dakota</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'NE'}"> selected </c:if> value="NE">Nebraska</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'NH'}"> selected </c:if> value="NH">New Hampshire</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'NJ'}"> selected </c:if> value="NJ">New Jersey</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'NM'}"> selected </c:if> value="NM">New Mexico</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'NV'}"> selected </c:if> value="NV">Nevada</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'NY'}"> selected </c:if> value="NY">New York</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'OH'}"> selected </c:if> value="OH">Ohio</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'OK'}"> selected </c:if> value="OK">Oklahoma</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'OR'}"> selected </c:if> value="OR">Oregon</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'PA'}"> selected </c:if> value="PA">Pennsylvania</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'RI'}"> selected </c:if> value="RI">Rhode Island</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'SC'}"> selected </c:if> value="SC">South Carolina</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'SD'}"> selected </c:if> value="SD">South Dakota</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'TN'}"> selected </c:if> value="TN">Tennessee</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'TX'}"> selected </c:if> value="TX">Texas</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'UT'}"> selected </c:if> value="UT">Utah</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'VA'}"> selected </c:if> value="VA">Virginia</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'VT'}"> selected </c:if> value="VT">Vermont</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'WA'}"> selected </c:if> value="WA">Washington</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'WI'}"> selected </c:if> value="WI">Wisconsin</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'WV'}"> selected </c:if> value="WV">West Virginia</option>
								<option <c:if test="${(formAddress != null ? formAddress.state : cart.shippingAddress.state) == 'WY'}"> selected </c:if> value="WY">Wyoming</option>
							   </select>
							</div>
						</div>
						<%--Store--%>
						<div class="checkoutInputWrap DraftInput paddingBottom-10">
							<span class="tAlignL">Choose Store</span>
							<div id="eDformStore" class="red"><c:if test="${!empty errorMap}">${errorMap.formState}</c:if></div>
						   <div class="styledSelectDraft">
							   <select name="formStore" id="DraftSelect" class="input req">
								   <option>Store Location</option>
							   </select>
							</div>
						</div>
						<%--Shoe Size--%>
						<div class="checkoutInputWrap DraftInput paddingBottom-10">
							<span class="tAlignL">Choose Men's Shoe Size</span>
							<div id="eDformShoesize" class="red"><c:if test="${!empty errorMap}">${errorMap.formState}</c:if></div>
						   <div class="styledSelectDraft">
							   <select name="formShoesize" id="DraftSelect" class="input req">
								   <option>--</option>
							   </select>
							</div>
						</div>
						<button style="width:100%;margin:5px 0 20px 0;" id="CreateAccountDraft" class="uppercase knockout skyButton">ENTER THE DRAFT</button>
					</form>
			</div>
	</div>
<%--END OF STARTHERESECTION--%>
	<div id="CreateAccountPaddingBottom" class="displaynone"></div>
		<div id="HowitWorks" class="HowitWorks">
			<p class="uppercase knockout" style="font-size:30px;padding:20px 0;">How the draft works</p>
			<div class="circleBorder">
				<p class="datesLinedUp knockout uppercase blackFont">12/7</p>
			</div>
			<p class="HowitWorksSub">You can enter The Finish Line Draft<BR>starting 12/7 and have until 12/9 at<BR>11:59pm EST. After that, it will be<BR>closed. Better sign up now<BR>so you don't forget.</p>
			<div class="circleBorder">
				<p class="datesLinedUp knockout uppercase blackFont">12/11</p>
			</div>
			<p class="HowitWorksSub">After you enter, we'll send<BR>you an email on 12/11 to let you<BR>know if you've been selected<BR>to buy the Air Jordan Retro<BR>11 "72-10."</p>
			<div class="circleBorder">
				<p class="datesLinedUp knockout uppercase blackFont">12/19</p>
			</div>
			<p class="HowitWorksSub">If you're selected, you will receive a<BR>ticket via email and on the Finish<BR>Line app. On 12/19, bring the ticket<BR>and a valid ID to the Finish Line<BR>store indicated on your ticket<BR>to buy your Jordans.</p>
			<p class="HowitWorksSub" style="margin:0px 0;">Check your status anytime on the<BR><a href="#" class="skyBlue">Finish Line - Winners Circle App.</a></p>
			<a href="#top" class="DraftBacktoTop">Back to Top</a>
			<a href="#" class="HowitWorksSub skyBlue" style="padding:25px 0 55px 0;display:block;">Draft Rules and Regulations</a>
		</div>
	</div>
</div>

<%--MODALS--%>
<div id="OptionNumber" class="modalBG displaynone">
	<div class="modalWhite">
		 <a class="boxclose" id="boxclose"></a>
		<span class="block knockout uppercase modalHeader">OPTIONAL PHONE NUMBER</span>
		<span class="block modalParagraph">Your number is safe with us. If provided, we will only use your phone number to call or send you a text message if you are selected.</span>
	</div>
</div>

<script>
$( document ).ready(function(){
	//SCROLL INTO VIEW//
	$.fn.scrollView = function () {
		return this.each(function () {
			$('html, body').animate({
				scrollTop: $(this).offset().top
			}, 500);
		});
	}
	//SIGN IN TAPPED//
	$('#SignInDraft').click(function(){
		$('#StartHereText, #SignInHide, #EnterDraftSub, #SignInDraft').fadeOut('slow', function(){
			$('#SignInText, #SignInForm, #ForgetPass').fadeIn('slow', function() {
				//SCROLL FORM INTO VIEW//
				$('.StartHeader').scrollView();
				//FOCUS ON FIRST INPUT AND BRING UP KEYBOARD//
				$('#SignInForm input[type="email"]').first().focus();
			});
		});
	});
	//IF SIGN IN FORM IS VALIDATED THEN SHOW CONFIRM INFO//
	$('#SignInDraft2').click(function(){
		$('.StartHere, #HowitWorks, #lineupDates, #StartHereText, #EnterDraftSub, #SignInDraft, #SignInHide').fadeOut('slow', function(){
			$('#CreateAccount, #ConfirmInfo').fadeIn('slow' , function() {
				//SCROLL FORM INTO VIEW//
				$('.StartHeader').scrollView();
				//FOCUS ON FIRST INPUT AND BRING UP KEYBOARD//
				$('#SignInForm input[type="tel"]').first().focus();
			});
			$('.StartHeader').css('width' , '70%');
			$('#CreateAccountPaddingBottom').removeClass('displaynone');
		});
	});
	//TAPPED ON OPTIONAL PHONE NUMBER//
	$('#optionPhone').click(function(){
		$('#OptionNumber').removeClass('displaynone');
	});
	//CLOSE MODALS//
	$('#boxclose').click(function(){
		$('#OptionNumber').addClass('displaynone');
	});
});
</script>

<%-- Display page footer --%>
<jsp:include page="misc_footer.jsp" />
