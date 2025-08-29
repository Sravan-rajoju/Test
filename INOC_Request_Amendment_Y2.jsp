<%@ page import = "com.cs.ce.core.helper.ScriptConvHelper"%>
<%@ taglib uri = "/EXIMTAGS" prefix = "EXIMTAGS"%>
<%@ taglib uri = "/CETAGS" prefix = "CETAGS"%>


<EXIMTAGS:IncludeFile filePath="../JS/INOC_Request_Amendment_Function.js"/>
<EXIMTAGS:IncludeFile filePath="../JS/INOC_Request_Amendment_Event.js"/>
<EXIMTAGS:IncludeFile filePath="../JS/INOC_BaseFunc.js"/>
<EXIMTAGS:IncludeFile filePath="../JS/INOC_Request_Amendment_bundle.js"/>





<EXIMTAGS:IncludeFile filePath="../SYS_JS/CSBaseFunc.js"/>
<EXIMTAGS:IncludeFile filePath="../JS/PastAmend.js"/>
<jsp:include  page="EEBranches.jsp"/>

<EXIMTAGS:IncludeFile filePath="../JS/IIND_Request_Amendment_bundle.js"/>
<EXIMTAGS:IncludeFile filePath="../JS/air-datepicker.js"/>


<link href="../theme/bundle.css" rel="stylesheet" type="text/css" />
<link href="../theme/air-datepicker.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript" src="../JS/jsencrypt.min.js"></script>
<script language="javascript" type="text/javascript" src="../JS/Publickey.js"></script>

<link href="../theme/OctLoader.css" rel="stylesheet" type="text/css" />


<style>

/* Wrapper div for stepper and buttons */


.goods{
    left: 5px;
    position: static;
    text-align: left;
    font-size: 15px;
    border-bottom: 1px solid #BCBEBF;
    border-left: none;
    border-right: none;
    border-top: none;
    color: #506070;
    width: 230px;
    outline: none;
    margin-left: 30px;
    max-width: 460px;
    max-height: 180px;
    margin-top: 35px;
}
.errorClass
{
    width: 332px;
    outline: none;
    border: none;
    color: red;
    font-weight: bold;
	font-style:italic;
    font-family: Roboto-Regular;
    margin-left: 27px;
    font-size: 13px;
	
	background-color: white;
	
}

#APPLNM {
	color: #506070;
	font-weight: bold;
	font-family:  Roboto-Regular;
	font-size: 15px;
}	
	
#APPL_NM::-webkit-scrollbar{
	display: none;
}

#APPL_NM{
	width: 100%;
	margin-top: 20px;
	margin-left: 0px;
	font-family: Roboto-Regular;
	font-size: 12px;
	border: none;
	overflow: hidden;
	outline: none;
	resize: none;
	color: #506070;
}

.meter
{
	height: 13px;
	position: relative;
	background: green;
	margin-top: -5px;
	border-radius: 35px;
	width: 99%;
}
.meter > span
{
	display: block;
	height: 100%;
	border-radius: 35px;
	background: #a9a9a9;
	position: relative;
	overflow: hidden;
}

#APPLADD {
    color: #506070;
    font-weight: bold;
    font-family: Roboto-Regular;
    font-size: 15px;
	padding-bottom: 20px;
}

#APPL_ADD{
	width: 100%;
	margin-top: 10px;
	margin-left: 0px;
	font-family: Roboto-Regular;
	font-size: 12px;
	border: none;
	outline: none;
	resize: none;
	color: #506070;
}

#APPL_ADD::-webkit-scrollbar{
	display: none;
}
.errorClass
{
    width: 332px;
    outline: none;
    border: none;
    color: red;
    font-weight: bold;
	font-style:italic;
    font-family:Roboto-Regular;
    margin-left: 27px;
    font-size: 13px;
	
	background-color: white;
	
}

.	.panel{
display:none;
transition: max-height 0.2s ease-out;
}

.tabContainer{
height: 15%;
background-color: white;
}

.tabContainer .buttonContainer{
width: 100%;
    height: 50px;
   background-image: linear-gradient(to left, #280071, #A5235A 55%, #C72153);
	opacity: 1;
	font-family:Roboto-Regular;
	
}

.tabContainer .buttonContainer button{
						width: 20%;
						height: 50px;
						float: left;
						border: none;
						cursor: pointer;
						padding: 10px;
						font-size: 16px;
						background-color: transparent;
						border: 3px 4px 7px 3px solid #d3d3d3;
						font-family: Roboto  !important;
						font-weight: bolder;
						color: white;
					}

.tabContainer .buttonContainer button:hover{
background-color: WHITE;
    width: 20%;
    height: 50px;
    color: #5b1d8d;
	position: relative;
	font-family:Roboto-Regular;
}
.tabContainer .buttonContainer button:hover::after
{
	content: "";
	position: absolute;
	right: 30%;
	width: 40%;
	bottom: 0;
	border-bottom: 2px solid #5b1d8d;  
	font-family:Roboto-Regular;
}
#B_CONTENT > div.dialog > div > div.wrapper > header > div > div.buttonContainer > button:nth-child(4):hover::after {
    content: "";
    position: absolute;
    right: 55px;
    width: 328px;
    bottom: 0;
    border-bottom: 2px solid #5b1d8d;
}

#abc {
    width: 100%;
	background-color: white;
}
#details1 {
    width: 100%;
    font-size: 13px;
}
#details1 > table > tbody > tr:nth-child(1) > td:nth-child(1) {
	color:#506070;
}
#details1 > table > tbody > tr:nth-child(2) > td:nth-child(1) {
	color:#506070;
}
#details2
{
	width: 100%;
	background-color: #f0f0f0;
}
div#details2a
{
	width: 150px;
	height: 105px;
}
#details2a > p
{
	font-size: 15px;
	color: #0095da;
	padding-left:20px;
	margin-top:10px;
}
div#details2b
{
	width:470px;
	height:105px;
	color:#506070;
}
div#details2b > p
{
	margin-left:170px;
	font-size:15px;
}
div#details2b > a:nth-child(3)
{
	margin-left:78px;
	font-size:15px;
	margin-right:218px;
}
div#details2b > a:nth-child(4)
{
	font-size:15px;
}
#details2c > input[type="text"]:nth-child(1)
{
	width:17px;
	margin-top:20px;
	margin-left:40px;
	background-color:green;
	border: 1px solid green;
	margin-right:10px;
	border-radius:2px;
	margin-bottom: 20px;
}
#details2c > label
{
	font-size:15px;
}
#details2c > input[type="text"]:nth-child(4)
{
	width:17px;
	margin-top:20px;
	margin-left:40px;
	background-color:gray;
	border: 1px solid #BCBEBF;
	margin-right:10px;
	border-radius:2px;
}
.meter
{
	height: 13px;
	position: relative;
	background: green;
	margin-top: -5px;
	border-radius: 35px;
	width: 99%;
	
}
.meter > span
{
	display: block;
	height: 100%;
	border-radius: 35px;
	background: #a9a9a9;
	position: relative;
	overflow: hidden;
}
#details3
{
	width: 100%;
	background-color: #f0f0f0;
}
div#details3a
{
	font-size: 15px;
	color: #0095da;
	margin-left: 10px;
}
div#details3b
{
	font-size: 15px;
	margin-top: 10px;
	margin-left: 15px;
	color:#506070
}
div#details3c
{
	font-size: 15px;
	margin-top:58px;
	margin-left: 10px;
}
div#details3c > a
{
	color: #0095da;
	text-decoration: underline;
}
#\30 _div > table > tbody > tr:nth-child(7) > td:nth-child(4) > textarea {
    border-bottom:  1px solid #BCBEBF;
    width: 300px;
	max-width:100%;
	resize:none;
	outline:none;
	border-left:none;
	border-right:none;
	border-top:none;
	margin-top:10px;
	overflow:hidden;
	margin-top: 30px;
}


#\34 _div > div:nth-child(2) > a
{
	color:#0095da;
	text-decoration: underline;
}
#\34 _div > div:nth-child(4) > a
{
	color:#0095da;
	text-decoration: underline;
}
#\34_div > div.undertaking > p
{
	color:#506070;
}
				#\34_div>div.undertaking2>p {
						color: #506070;
					}
#TOL_PER_PLUS {
    max-width: 28%;
    margin-left: 10px;
    margin-right: 8px;
}

#TOL_PER_MINUS {
    max-width: 28%;
    margin-left: 10px;
}
#Special\  License
{
	padding-bottom: 23px;
	margin-left: -3px;
	border-left:none;
	border-right: none;
	border-top: none;
	color: gray;
	width: 200px;
}
					.req
					 {
						outline: none;
						border-right: none;
						border-left: none;
						border-top: none;
						border-bottom: 1px solid #BCBEBF;
						width: 500px;
						Margin-top: 15px;
						padding-left: 20px;
						BACKGROUND-COLOR: #fbfbfb !important;
						font-family:Roboto-Regular;
						font-size: 15px;
    						color: #506070;
						margin-right: -66px;
					}
					input#text01 {
							outline: none;
							border-right: none;
							border-left: none;
							border-top: none;
							border-bottom: 1px solid #BCBEBF;
							Margin-top: 14px;
							padding-left: 20px;
							BACKGROUND-COLOR: #fbfbfb !important;
							font-family:Roboto-Regular;
							width: 80%;
							margin-left: 15px;
						}
					input#text02
					 {
							outline: none;
							border-right: none;
							border-left: none;
							border-top: none;
							border-bottom: 1px solid #BCBEBF;
							width: 986px;
							BACKGROUND-COLOR: #fbfbfb !important;
							font-family:Roboto-Regular;
							padding-bottom: 15px;
							MARGIN-LEFT: 40px;
					}
				input#text03 {
							outline: none;
							border-right: none;
							border-left: none;
							border-top: none;
							border-bottom: 1px solid #BCBEBF;
							Margin-top: 14px;
							padding-left: 20px;
							BACKGROUND-COLOR: #fbfbfb !important;
							font-family:Roboto-Regular;
							width: 80%;
							margin-left: 15px;
						}
					input#text04
					 {
							outline: none;
							border-right: none;
							border-left: none;
							border-top: none;
							border-bottom: 1px solid #BCBEBF;
							width: 986px;
							BACKGROUND-COLOR: #fbfbfb !important;
							font-family:Roboto-Regular;
							padding-bottom: 15px;
							MARGIN-LEFT: 40px;
					}
					input#text05
					 {
							outline: none;
							border-right: none;
							border-left: none;
							border-top: none;
							border-bottom: 1px solid #BCBEBF;
							width: 986px;
							BACKGROUND-COLOR: #fbfbfb !important;
							font-family:Roboto-Regular;
							padding-bottom: 15px;
							MARGIN-LEFT: 40px;
					}
					p.FldLabel {
						margin-left: 90px;
						margin-top: 20px;
					}

					#GOODS_DESC {
						margin-left: 30px;
					}

					#DOCREQD1 {
						MARGIN-LEFT: 49PX;
						width: 60%;
						color: #506070;
						BACKGROUND-COLOR: #fbfbfb !important;
						font-family:Roboto-Regular;
						font-size: 15px;
					}
					.DOCSREQDTR{
						height: 60px;
						BACKGROUND-COLOR: #fbfbfb !important;
						font-family:Roboto-Regular;
						font-size: 15px;
						border-bottom: 5px solid white;
					}
					.DOCREQD {
						MARGIN-LEFT: 49PX;
						width: 60%;
						color: #506070;
						BACKGROUND-COLOR: #fbfbfb !important;
						font-family:Roboto-Regular;
						font-size: 15px;
						border-bottom: 1px solid #BCBEBF;
						border-left: none;
						border-right: none;
						border-top: none;
						outline: none;
					}
					#Copies1 {
						BACKGROUND-COLOR: #fbfbfb !important;
						font-family:Roboto-Regular;
						font-size: 15px;
						width: 35%;
						color: #506070;
						margin-left: 49px;
					}
					#Copies2 {
						BACKGROUND-COLOR: #fbfbfb !important;
						font-family:Roboto-Regular;
						font-size: 15px;
						width: 35%;
						color: #506070;
						margin-left: 49px;
					}
					#Copies3 {
						BACKGROUND-COLOR: #fbfbfb !important;
						font-family:Roboto-Regular;
						font-size: 15px;
						width: 35%;
						color: #506070;
						margin-left: 49px;
					}
					#Copies4 {
						BACKGROUND-COLOR: #fbfbfb !important;
						font-family:Roboto-Regular;
						font-size: 15px;
						width: 35%;
						color: #506070;
						margin-left: 49px;
					}
					#Copies5 {
						BACKGROUND-COLOR: #fbfbfb !important;
						font-family:Roboto-Regular;
						font-size: 15px;
						width: 35%;
						color: #506070;
						margin-left: 49px;
					}
					.Copies {
						BACKGROUND-COLOR: #fbfbfb !important;
						font-family:Roboto-Regular;
						font-size: 15px;
						width: 35%;
						color: #506070;
						margin-left: 49px;
						border-bottom: 1px solid #BCBEBF;
						border-left: none;
						border-right: none;
						border-top: none;	
					}
					

					#\35 _div>table>tbody>tr:nth-child(2)>td:nth-child(3)>a {
						margin-right: 151px;
						color: #0095da;
						margin-left: -212px;
						font-size: 15px;
					}

					#\35 _div>table>tbody>tr:nth-child(3)>td:nth-child(3)>a {
						margin-right: 150px;
						color: #0095da;
						margin-left: -212px;
						font-size: 15px;
					}

					#Special\ License {
						WIDTH: 55%;
					}

					#Special\ Licence {
						WIDTH: 55%;
					}

					#\35 _div>table>tbody>tr:nth-child(2)>td:nth-child(5) {
						font-style: italic;
					}

					#\35 _div>table>tbody>tr:nth-child(3)>td:nth-child(5) {
						font-style: italic;
					}

					#\36 _div>table>tbody>tr:nth-child(4)>td.FldLabel.star {
						margin-left: 3px;
						margin-right: 29px;
						padding-left: 2px;
						font-style: italic;
						color: #506070;
					}

					#\35 _div>table>tbody>tr:nth-child(4)>td>a {
						font-size: 15px;
						color: #0095da;
						margin-left: 70px;
					}

					#\33 _div>table>tbody>tr:nth-child(10)>td>a {
						font-size: 15px;
						color: #0095da;
						margin-left: 2px;
					}

					#\33 _div>table>tbody>tr:nth-child(11)>td.FldLabel {
						padding-left: 0px;
					}

					#\33 _div>table>tbody>tr:nth-child(5)>td:nth-child(1) {
						padding-left: 1px;
						padding-bottom: 6px;
						padding-top: 6px;
					}

					.Tab>table {
						border-collapse: collapse;
					}

					#\33 _div>table>tbody>tr:nth-child(5) {
						border-bottom: 5px solid white;
						background-color: #F7F8FB;
					}

					#\33 _div>table>tbody>tr:nth-child(6) {
						background-color: #F7F8FB;
						border-bottom: 5px solid white;
						height: 47px;
					}

					#\33 _div>table>tbody>tr:nth-child(7) {
						background-color: #F7F8FB;
						border-bottom: 5px solid white;
						height: 47px;
					}

					#\33 _div>table>tbody>tr:nth-child(8) {
						background-color: #F7F8FB;
						border-bottom: 5px solid white;
						height: 47px;
					}
#\33 _div > table > tbody > tr:nth-child(5) > td:nth-child(2) {
    padding-bottom: 6px;
    padding-top: 10px;
}
#\33 _div > table > tbody > tr:nth-child(5) > td:nth-child(3) {
    padding-bottom: 6px;
    padding-top: 10px;
}
					#\34 _div>div:nth-child(2)>label>a {
						color: #0095d9;
						text-decoration: underline;
						font-size: 14px;
					}

					#\34 _div>div:nth-child(4)>label>a {
						color: #0095d9;
						text-decoration: underline;
						font-size: 14px;
					}

.LABEL_CLASS{
    color: #506070;
    font-weight: bold;
    font-family:Roboto-Regular;
    font-size: 15px;
}

#APPL_NM{
	width: 100%;
	margin-top: 20px;
	margin-left: 0px;
	font-family:Roboto-Regular;
	font-size: 12px;
	border: none;
	overflow: hidden;
	outline: none;
	resize: none;
	color: #506070;
}
#APPL_ADD{
	width: 100%;
	margin-top: 10px;
	margin-left: 0px;
	font-family:Roboto-Regular;
	font-size: 12px;
	border: none;
	outline: none;
	resize: none;
	color: #506070;
}

#APPLNM {
	color: #506070;
	font-weight: bold;
	font-family:Roboto-Regular;
	font-size: 15px;
}

#APPLADD {
    color: #506070;
    font-weight: bold;
    font-family:Roboto-Regular;
    font-size: 15px;
	padding-bottom: 20px;
}
#APPL_ADD::-webkit-scrollbar{
	display: none;
}

#APPL_NM::-webkit-scrollbar{
	display: none;
}


.box_style1{
	 width: 60%;
	 height: 1.3rem;
	 background-color: gray;
	 margin-top: 2%;
	 display: inline-block;
	 border-radius: 3px;
	 margin-right: 15%;
}

.box_style2{
	 width: 60%;
	 height: 1.3rem;
	 background-color:green;
	 margin-top: 2%;
	 display: inline-block;
	 border-radius: 3px;
	 margin-right: 10%;
}

#confirmAuthorise{
    height: 200px;
    width: 22%;
    position: fixed;
    top: 41%;
    left: 41%;
    background: white;
    border: 1px solid BLUEVIOLET;
}
.backdropAuthorise{
    position: fixed;
    z-index: 999;
    display: none;
    top: 0px;
    left: 0px;
    height: 100%;
    width: 100%;
    background: rgba(0,0,0,0.2);
}

#markdiv{
    height: 200px;
    width: 22%;
    position: fixed;
    top: 41%;
    left: 41%;
    background: white;
    border: 1px solid BLUEVIOLET;
}
.Marklien{
    position: fixed;
    z-index: 999;
    display: none;
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
    background: rgba(0,0,0,0.2);
	text-align: center;
	margin: auto;
	font-size: 15px;
    font-family:Roboto-Regular;
}

.Marklienpreview{
    position: fixed;
    z-index: 999;
    display: none;
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
    background: rgba(0,0,0,0.2);
	text-align: center;
	margin: auto;
	font-size: 15px;
    font-family:Roboto-Regular;
}

.lienmarkedpreview{
    position: fixed;
    z-index: 999;
    display: none;
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
    background: rgba(0,0,0,0.2);
	text-align: center;
	margin: auto;
	font-size: 15px;
    font-family:Roboto-Regular;
}

.closeIcon{
		position: absolute;
		
		width: 32px;
		height: 32px;
		opacity: .3;
	}
	.closeIcon:hover{
		opacity: 1;
	}
	.closeIcon:before, .closeIcon:after{
		position: absolute;
		
		content: '';
		width: 2px;
		height: 33px;
		background-color: #333;
	}
	.closeIcon:before{
		transform: rotate(45deg);
	}
	.closeIcon:after{
		transform: rotate(-45deg);
	}
	

#rejectAuthorise {
    width: 33%;
    HEIGHT: 38%;
    background: white;
    margin: auto;
    vertical-align: middle;
	margin-top: 10%;
}

.rejtext {
    width: 95%;
    height: 5vw;
    border-bottom: 1px solid gray;
    border-left: none;
    border-right: none;
    border-top: none;
    background-color: #f7f8fb;
    resize: none;
    font-size: 14px;
}
.rejectbtns {
    WIDTH: 200px!important;
    height: 30px;
    background-color: #E6F6FC;
    border-radius: 7px 7px 7px 7px;
    border: 1px solid #0095DA;
    color: #0095DA;
    margin-top: 25px;
	outline: none;
}
	
.backdropReject{
    position: fixed;
    z-index: 999;
    display: none;
    top: 0px;
    left: 0px;
    height: 100%;
    width: 100%;
    background: rgba(0,0,0,0.2);
}
#confirmDocDelete{
    height: 200px;
    width: 22%;
    position: fixed;
    top: 41%;
    left: 41%;
    background: white;
    border: 1px solid BLUEVIOLET;
}
.backdropDelete{
    position: fixed;
    z-index: 999;
    display: none;
    top: 0px;
    left: 0px;
    height: 100%;
    width: 100%;
    background: rgba(0,0,0,0.2);
}


#REJ
{ 
  FONT-WEIGHT:BOLD;
  color:black;
  PADDING-RIGHT: 15vw;
  FONT-SIZE: 130%;
  font-family:Roboto-Regular;
}


#unicross
{
    content: '\2573';
    position: absolute;
    font-style: bold;
    color: white;
    BORDER: 0px solid black;
    border-radius: 50%;
    background-color: black;
    font-weight: bold;
    left: 27vw;
    top: -0.5vw;
}
#ip
{
	height: 100px;
    width: 90%;
    border: 1px solid black;
	PADDING-BOTTOM: 8%;

}
.rejectdiv
{
    width: 100%;
}

.FLD_LABEL_NEW{
	color: #506070;
    font-size: 15px;
    font-weight: normal;    
    text-align: left;   
    white-space: nowrap;
	padding-left: 40px;
}
.FldLabelDoc
{
color:#506070;
font-family:Roboto-Regular;
font-size:15px;
font-weight: bold;
}

.adjustDocumentIcon{
	font-size:14px;
	font-family:Tahoma;
	width:150px;
	padding-top:35px;
	padding-bottom:4px;
	margin-top: 10px !important;
}
/*START OF CR 23050133*/
/*
.goods{
    left: 5px;
    position: static;
    text-align: left;
    font-size: 15px;
    border-bottom: 1px solid #BCBEBF;
    border-left: none;
    border-right: none;
    border-top: none;
    color: #506070;
    width: 230px;
    outline: none;
    margin-left: 30px;
    max-width: 460px;
    max-height: 180px;
    margin-top: 35px;
}
*/
.accordion1
{
color: black;
}

/*END OF CR 23050133*/

.prim_back{
	WIDTH: 200px!important;
    height: 30px;
    background-color: #E6F6FC;
    border-radius: 7px 7px 7px 7px;
    border: 1px solid #0095DA;
    color: #0095DA;
    margin-top: 40px;
}



#backButtonid
{
	WIDTH: 200px!important;
    height: 30px;
    background-color: #E6F6FC;
    border-radius: 7px 7px 7px 7px;
    border: 1px solid #0095DA;
    color: #0095DA;
    margin-top: 40px;
}
#backButtonid:hover
{
	background-color: #0095D9;
    color: white;
    border-radius: 7px 7px 7px 7px;
    border: 1px solid #0095D9;
}
#submitButtonid
{
	WIDTH: 200px!important;
    height: 30px;
    background-color: #E6F6FC;
    border-radius: 7px 7px 7px 7px;
    border: 1px solid #0095DA;
    color: #0095DA;
    margin-top: 40px;
}
#submitButtonid:hover
{
	background-color: #0095D9;
    color: white;
    border-radius: 7px 7px 7px 7px;
    border: 1px solid #0095D9;
}
#confirmButtonid
{
	WIDTH: 200px!important;
    height: 30px;
    background-color: #E6F6FC;
    border-radius: 7px 7px 7px 7px;
    border: 1px solid #0095DA;
    color: #0095DA;
    margin-top: 40px;
}
#confirmButtonid:hover
{
	background-color: #0095D9;
    color: white;
    border-radius: 7px 7px 7px 7px;
    border: 1px solid #0095D9;
}
	
	.faqbtn
{
	width: 10%;
    height: 34px;
    border-radius: 10px 10px 0px 0px;
    border-width: 0 0 0 0;
    background-color:#ffffff ;
    color:#506070;
	white-space: nowrap;
	font-family:Roboto-Regular;
	font-weight: bold;
	font-size: 15px;
}
.faqbtn:hover
{
	width: 10%;
    height: 34px;
    border-radius: 10px 10px 0px 0px;
    border-width: 2px 1px 1px 2px;
    background-color: #0095da;
	color: #ffffff;
}

.ui-autocomplete{
max-height: 100px;
overflow-y: auto;
}

.buttonClass
{
	width: 10%;
    height: 34px;
    border-radius: 10px 10px 0px 0px;
    border-width: 0 0 0 0;
    background-color:#ffffff ;
	color:#506070;
	outline: none;
}

#records_table{   
	color: BLACK;
	font-family:Roboto-Regular;
	font-size: 15px;
}

.records_table_modal-content 
{
    background-color: #ffffff;
    margin: auto;
    padding: 3px;
    border: none;
    width: 40%;
    min-height: 133px;
    text-align: center;
    font-size: 18px;
    color: #506070;
	font-family:Roboto-Regular;
	max-height: 370px;
	overflow: auto;
}

#CNTY_NM option{
	text-transform: uppercase;
}

#CNTY_NM, #CNTY_NM option:checked{
	text-transform: uppercase;
}




.TIME_M, .CHAR_M, .DATE_M, .SEARCH_M {


    left: 5px;
    position: static;
    text-align: left;
    font-size: 15px;
   
	border-bottom:  1px solid #BCBEBF;
    border-left: none;
    border-right: none;
    border-top: none;
   
    color:#506070;
	width: 40%;
	outline: none;
	margin-left:30px;
	max-width: 460px;
    max-height: 180px;
	margin-top:35px;
}
 .red-message {
            color: red;
            font-weight: bold;
        }
			<!--Date CSS Added Started-->
			
        .datepicker-container {
            max-width: 300px;
            margin: auto;
            position: relative;
        }

        input[type="text"] {
            border: 1px solid #673390;
            border-radius: 5px;
            padding: 10px;
            width: 100%;
            box-sizing: border-box;
            font-size: 16px;
            cursor: pointer;
            background-color: white;
        }

        .calendar {
            display: none;
            position: absolute;
            top: 50px;
            width: 100%;
            background-color: white;
            border: 1px solid #673390;
            border-radius: 5px;
            padding: 10px;
            z-index: 10;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /*.active {
            display: block;
        }*/

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #F7F7F7;
            color: black;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .header .selector {
            cursor: pointer;
            user-select: none;
            display: flex;
            align-items: center;
        }

        .header .selector span {
            margin-right: 0px;
        }

        .header .dropdown-icon {
            font-size: 12px;
            margin-left: 5px;
            transition: transform 0.3s ease;
        }

        .header .icon-up {
            transform: rotate(180deg);
        }

        .content {
            margin-top: 10px;
            height: 220px;
            display: flex;
            flex-direction: column;
        }

        .days, .months, .years {
            display: none;
            grid-template-columns: repeat(7, 1fr);
            gap: 5px;
            height: 100%;
            overflow: hidden;
        }

        .active-content {
            display: grid;
            flex: 1;
        }

        .day, .month, .year {
            padding: 10px;
            text-align: center;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.2s;
            user-select: none;
        }

        .day:hover, .month:hover, .year:hover {
            background-color: #673390;
            color: white;
        }

        .selected {
            background-color: #673390;
            color: white;
        }

        .months {
            grid-template-columns: repeat(3, 1fr);
        }

        .years {
            grid-template-columns: repeat(3, 1fr);
            overflow-y: scroll;
            height: 220px;
            scrollbar-width: none;
        }

        .years::-webkit-scrollbar {
            display: none;
        }

.auth_button {
  
    justify-content: center !important;
    align-items: center !important;
    width: 200px !important;
    height: 40px !important;
    border-radius: 8px !important;
    background: #FFFFFF !important;
    border: 1px solid #673391 !important;
    color: #673391 !important;
    cursor: pointer !important;
    font-size: 14px !important;
    font-family: "Roboto", sans-serif !important;
    transition: background-color 0.3s ease !important;
    margin-left: auto !important;
    margin-top: auto !important;
    margin-right: 22px;
    padding: 0px 24px 0px 16px;
    gap: 8px !important;
}

.auth_button:hover {
    background-color: #f1f1f1 !important; 
}


.sec_cancel1 {
   
    justify-content: center !important;
    align-items: center !important;
    width: 200px !important;
    height: 40px !important;
    border-radius: 8px !important;
    background: #FFFFFF !important;
    border: 1px solid #673391 !important;
    color: #673391 !important;
    cursor: pointer !important;
    font-size: 14px !important;
    font-family: "Roboto", sans-serif !important;
    transition: background-color 0.3s ease !important;
    margin-left: auto !important;
    margin-top: auto !important;
    margin-right: 22px;
    padding: 0px 24px 0px 16px;
    gap: 8px !important;
}


.sec_cancel1:hover {
    background-color: #f1f1f1 !important; 
}

</style>

<script type="text/javascript">

$(document).ready(function(){
debugger;
   	$('.subbacbutton').hide();
   	$('.dialog').css('marginLeft', '0px');
   	$('.content').css('padding', '0px');
   	$("#B_CONTENT").css("background-color", "#FFFFFF");
   	$('.hd').hide();
   	$('#TrxTabs').hide();
   	$('#TrxSysBtnsDiv').hide();
   	$('.b').hide();
   
   	
   	setTimeout(function(){
   		$('#prim_print').hide();
   	},300);
   	
   	setTimeout(function(){
   		if(sessionStorage.getItem('SingleAuthEA') == "Y"){
   			sessionStorage.setItem('SingleAuthEA','N');
   			singleAuthorizeEA();
   			$("#IINDmainDiv").show();
   		}
   	},500);
   	
   	if(sessionStorage.getItem('role')=='M'){
   		
   		//$('#TEMP_BT').hide();
   		$('#editbtn').hide();
   		$('#SavedActTrx').hide();
   		
   		$('#save_tab').hide(); 
   		$('#btnChecker').hide();
   	}
       	
   	if(sessionStorage.getItem('role')=='C'){
   	$('#btnChecker').show();
   	$('#SavedActTrx').hide();
   	
   	}
   		
   });
   
   
   
   function hidePageFields(){
   	$("#IINDmainDiv").hide();
   }
   



function callMe(elem) {
	debugger;
    // Get the panel ID and panel element associated with the clicked accordion
    var panelId = elem.getAttribute('data-target');
    var panel = document.getElementById(panelId);

    // Get stepId from the 'data-target' attribute and find the step element
    var stepId = elem.getAttribute('data-target');
    var stepElement = document.getElementById(stepId);
    
    // Check if the clicked element is already active
    var isActive = elem.classList.contains("active");

    // Hide all other accordions
    hideall();

    // If the clicked element was already active, no need to open it again (it stays closed)
    if (isActive) {
        elem.classList.remove("active");
        return;
    }

    // Toggle 'active' class for the clicked accordion
    elem.classList.add("active");

    // Activate the step
    if (stepElement) {
        $(stepElement).removeClass('inactive').addClass('active');
		activeStep = stepElement;
    }

    // Show the panel
    if (panel) {
        panel.style.display = "block";

        if (panel.firstElementChild) {
            panel.firstElementChild.style.display = "block";
        }

        // Resize panel based on doName attribute if applicable
        var doName = panel.getAttribute("doName");
        if (doName) {
            resizeDoPanel(doName);
        }

        // Update arrow display for the current accordion
        $("#" + elem.id + "_UpArrow").show();
        $("#" + elem.id + "_DownArrow").hide();
    }

    // Handle session storage logic for specific role
    if (sessionStorage.getItem('role') === 'C') {
        if ($("#APPL_ID").val().indexOf("00000080875812998") === -1) {
            $("#Id_DocUpload, #Id_AddDocUpload").hide();
            $("#Id_ImageTable, #Id_renderIcon, #Id_renderName").show();
        } else {
            $("#Id_DocUpload").hide();
            $("#Id_AddDocUpload").show();
            $("#Id_ImageTable").hide();
            document.getElementById('tick5').style.display = "inline";
            isPCDA = true;
        }
		
    }
	
}
function hideall(elem) {
    var accordion = document.getElementsByClassName("accordion");
    for (var i = 0; i < accordion.length; i++) {
        // Remove 'active' class from all accordion elements
        accordion[i].classList.toggle("active", false);
		
		// Get the container ID based on accordion element's ID
        const newElemId = accordion[i].id + "_container";
        
        // Get the container element
        const newElem = document.getElementById(newElemId);
		
        if (newElem) {
            // Get the panel ID from the 'data-target' attribute
            var panelId = newElem.getAttribute('data-target');
            
            // Get the panel using the panelId
            var panel = document.getElementById(panelId);

            // Get stepId from the same 'data-target' attribute
            var stepId = panel.getAttribute('data-target');
            var stepElement = document.getElementById(stepId);

            if (panel && panel.style.display === "block") {
                console.log("Hiding panel: " + panelId);
                
                // Hide the panel
                panel.style.display = "none";
                
                // Hide the step if it exists
                if (stepElement) {
                    $(stepElement).removeClass('active').addClass('inactive');
                }

                // Also hide the first child if it exists
                if (panel.firstElementChild) {
                    panel.firstElementChild.style.display = "none";
                    console.log("Hiding child of panel: " + panelId);
                }
            }
        }
    }

    // Show DownArrows and hide UpArrows
    $("[id$='DownArrow']").show();
    $("[id$='UpArrow']").hide();
}

	

</script>


<input name ="HOME_BRANCH_CODE" type="hidden" class="CHAR_O" id="HOME_BRANCH_CODE" title="HOME BRANCH CODE">
<input name ="COMPANY_UNIT_CODE" type="hidden" class="CHAR_O" id="COMPANY_UNIT_CODE" title="COMPANY UNIT CODE">
<input name="C_UNIT_CODE" type="hidden" id="C_UNIT_CODE" title="Unit Code" size="35" maxlength="35">
<input name ="ORGN_BR_CODE" type="hidden" class="CHAR_O" id="ORGN_BR_CODE" title="ORIGINATING BRANCH CODE">
<input name="STATUS" type="hidden" class="CHAR_O" id="STATUS" title="Status" value="19">
<input name="EMAIL_SUBJECT" type="hidden" class="CHAR_O"id="EMAIL_SUBJECT" title="Email Subject" value="">
<input name="EMAIL_TO" type="hidden" class="CHAR_O"id="EMAIL_TO" title="Email Send to" value="">

<input name="BENE_ADD" type="hidden" class="CHAR_O"id="BENE_ADD" title="Benificiary Address" value="">
<input name="REPO_STATUS" type="hidden" class="CHAR_O" id="REPO_STATUS" title="Report Status" value="2">
<input name="SOC_CODE" type="hidden" class="CHAR_O" id="SOC_CODE" title="SOC Code" value="">
<input name="CPC_CODE" type="hidden" class="CHAR_O" id="CPC_CODE" title="CPC Code" value="">
<input name="MT_OG_MSG" type="hidden" class="CHAR_O" id="MT_OG_MSG" >
<input name="BENE_BK_ID" type="hidden" class="CHAR_O" id="BENE_BK_ID" >
<input name="BENE_BK_NM" type="hidden" class="CHAR_O" id="BENE_BK_NM" >
<input name="BENE_BK_ADD" type="hidden" class="CHAR_O" id="BENE_BK_ADD" >
<input name="COLL_REG_DT" type="hidden" class="CHAR_O" id="COLL_REG_DT" >
<input name="COLL_CCY" type="hidden" class="CHAR_O" id="COLL_CCY">
<input name="DRAFT_CCY" type="hidden" class="CHAR_O" id="DRAFT_CCY" value="INR">
<input name="DRWR_ID" type="hidden" class="CHAR_O" id="DRWR_ID">
<input name="DRWR_NM" type="hidden" class="CHAR_O" id="DRWR_NM">
<input name="DRWR_ADD" type="hidden" class="CHAR_O" id="DRWR_ADD">
<input name="ETRADE_FLAG" type="hidden" class="CHAR_O" id="ETRADE_FLAG" value="1">
<input name="EMAIL_TEMP" type="hidden" class="CHAR_O" id="EMAIL_TEMP" title="Temporary EMAIL" value="">
<input name="TEMP_BILL_AMT" type="hidden" class="AMT_O" id="TEMP_BILL_AMT" title="TEMP_BILL_AMT" value="" />
<input name="TEMP_NEW_BILL_DUE_DT" type="hidden" class="DATE_O" id="TEMP_NEW_BILL_DUE_DT" title="TEMP_NEW_BILL_DUE_DT" value="" />
<input name="ACPT_REJ" type="hidden" class="CHAR_O" id="ACPT_REJ" title="ACPT_REJ" />

<input name="TEMP_ORG_FUNC_ID" type="hidden" class="CHAR_O" id="TEMP_ORG_FUNC_ID" title="TEMP_ORG_FUNC_ID" value="">
<input name="OLD_PART_PYMT" type="hidden" class="CHAR_O" id="OLD_PART_PYMT" title="OLD_PART_PYMT" value="">
<input name="NEW_PART_PYMT" type="hidden" class="CHAR_O" id="NEW_PART_PYMT" title="NEW_PART_PYMT" value="">
<input type="hidden" class="CHAR_O" id="C_TRX_STATUS"/>
<input name="TRX_DT" type="hidden" class="DATE_O" id="TRX_DT">
<input name="DRAFT_AMT_LC_CCY" type="hidden" class="AMT_O" id="DRAFT_AMT_LC_CCY" title="DRAFT_AMT_LC_CCY" value="">

<div id="Octloader" style="display:none"></div>
<div id="mainDiv" style="display:;"> 

<table id="outwardMainDiv" style="background-color: #e4e4e4; width: 101%; border: 0px; border-spacing: 0px; border-collapse: collapse; margin: auto;padding: 0px;">	
	<jsp:include  page="IIND_Buttons.jsp"/>
	<tr>
		<td id="viewAndManageEdits" style="display:none;">
			<table style="width: 100%; padding: 0px; margin: 0px;">
				<tr>
					<td style="height: 40px; width: 10%; text-align: right; white-space: nowrap;">
							<div class="editbtn">
							
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									
									<span style="color: #0374A9;font-size: 16px;font-weight: bold;vertical-align: super; cursor: pointer;" onclick="onExportAs();">Export As</span>
									<img src="/CEWeb/Images/icons/export as pdf.svg" id="expportAsid" style="cursor: pointer;" onclick="onExportAs();"/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									
									<span id="editspan" style="color: #0374A9;font-size: 16px;font-weight: bold;vertical-align: super; cursor: pointer;" onclick = "enablefields()">Edit</span>
									
									<img src="/CEWeb/Images/icons/Edit.svg" alt="EDIT" id="editid" style="cursor: pointer;" onclick = "enablefields()"/>
							
							</div>
						</td>		
					</tr>
					<tr>
						
						<td class="rejectdiv" style="background-color: #FFFFFF; border: 0px; border-spacing: 0px; border-collapse: collapse; margin: auto;padding: 10px; box-shadow: 0px 3px 6px #b9b9b9;">
						
							<div class="rejectdiv">
								<table style="width:100%; height:100%;">
									<tbody>
										<tr>
											<td class="FldLabel" style="padding-top: 20px;">Status:</td>
											<td style="padding-left: 30px;"><input type="text" class="CHAR_O" style="margin-top: 0px; width: 230px;" id="makerrejstatus"></td>
										</tr>
										<tr>
											<td class="FldLabel" style="padding-top: 20px;">Rejection Reason:</td>
											<td style="padding-left: 30px;"><input type="text" class="CHAR_O" style="margin-top: 0px; width: 230px;" id="makerrejreason"></td>
										</tr>
										
											<tr>
											<td class="FldLabel" style="padding-top: 20px;">Last Action Taken By:</td>
											<td style="padding-left: 30px;"><input type="text" class="CHAR_O" style="margin-top: 0px; width: 230px;" id="LastAction"></td>
										</tr>
										 
									</tbody>
								</table>				
							</div>									
						</td>
					</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="3">&nbsp;</td>
	</tr>	
	<tr id="templateTr">
		<td style="background-color: white">
				<table style="width: 100%;">
				<tr >	
					<td style="text-align: left; width: 50%;">
						<h2 id="vmPreview1" style="color: #0095da; font-size: 16px;">PREVIEW</h2>
					</td>					
					<td id="stepBystep" style="text-align: right; width: 50%;" class="TEMPLATE_ID">
						<span style="cursor: pointer;">
					</td>	
				</tr>
			</table>
		</td>
				
	</tr>
	<tr>
		<td colspan="3">&nbsp;</td>
	</tr>
			<tr>
				<td style="padding: 0px; border: 0px; margin: 0px;">
					<table style="width: 100%; padding: 0px; border: 0px; margin: 0px;">
						<tr id="TabRow">
					<td style="width: 100%; padding: 0px; border: 0px; margin: 0px;">
						<button type="button" class="faqbtn" style="outline:none;background-color:#0095da;color: white;width: 282px;" onclick="getFuncIdOnClick_n('F05030701647');" id="activeTab">Request to Amendment for NON-LC</button>
						<button type="button" class="faqbtn" style="outline:none;width: 292px;" onclick="getFuncIdOnClick_n('F05030701648');" id="pastTab">Request to Amendment for LC</button>
						
					</td>
						</tr>
					</table>
				</td>
			</tr>
<!--NEW-->
<tr>
	<td id="IINDmainDiv1" style="background-color: white;width:100%">
	
		<div style="padding: 10px; padding-bottom: 2px;">
			<table style="width: 100%;">
				<tr>
					<td>
						<div class="accordion" id="mainTab" title="Main Tab">
						<table style="width: 100%;">
							<tr>
								<td style="text-align: left;">
									<img src="/CEWeb/Images/icons/Tick.svg" href="#" id="tick1" style="margin-bottom: -2px; margin-right: 7px; display:none;"/>
								</td>
								<td style="text-align: right;">
									<img src="/CEWeb/Images/icons/arrow_accor.svg" id="mainTab_UpArrow" href="#" style="margin-bottom: -2px;margin-right: 7px;"/>
									<img src="/CEWeb/Images/icons/arrow_accor1.svg" id="mainTab_DownArrow" href="#" style="margin-bottom: -2px;margin-right: 7px; display: none;"/>
								</td>
								<div id="messageDisplaymobil" class="red-message"></div>
							</tr>
						</table>
						</div>
						<br>
						<div id="mainTab_panel" class="panel" style="display:block" >
						<div id="0_div" class="Tab" title="Main Tab">
							<table>
								<tbody>
									<tr>
										<td colspan="3">&nbsp;</td>
									</tr>
									<tr>
										<td width="23%" class="FldLabel">CE Reference</td>
										<td width="27%"><input name="C_MAIN_REF" type="text" class="CHAR_P" id="C_MAIN_REF" title="Our Reference" size="25" maxlength="17"></td>
										<td class="FldLabel">Bill Reference Number</td>
										<td><input type="text" class="CHAR_P" name="LC_ORDER_NO1" id="LC_ORDER_NO1" title="Bill Reference Number" size="20" maxlength="16"></td>
									</tr>
									<tr>
										<td class="FldLabel">Bill Amount</td>
										<td><input id="BILL_AMT" class="CHAR_P" maxlength="15" size="15" name="BILL_AMT"   style="width: 250px;resize:none;padding-right: 1px;"  title="Bill Amount" ></input></td>
										<td class="FldLabel">Tenor type</td>
										<td >
											<select name="NATURE_OF_BILLS" id="NATURE_OF_BILLS" class="CHAR_P" title="Tenor Type">
												<option value="1">Sight</option>
												<option value="2" selected="">Usance</option>
												<option value="3">Mixed Payment</option>
												<option value="4">Deferred Payment</option>
												<option value="" selected="">PLEASE SELECT</option>
											</select>
										</td>
									</tr>
									<tr>
										<td class="FldLabel ">Bill Due Date</td>
										<td><input id="BILL_DUE_DT" class="DATE_P" maxlength="10" size="10" name="BILL_DUE_DT"   style="width: 250px;resize:none;padding-right: 1px;"  title="Bill Due Date" /></td>
									</tr>
								</tbody>
							</table>
						</div>
						</div>
					</td>
				</tr>
			</table>
		</div>







		<div style="padding: 10px; padding-bottom: 2px;">
			<table style="width: 100%;">
				<tr>
					<td>
						<div class="accordion" id="party" title="Party Details">
						<table style="width: 100%;">
							<tr>
								<td style="text-align: left;">
									<img src="/CEWeb/Images/icons/Tick.svg" href="#" id="tick2" style="margin-bottom: -2px; margin-right: 7px; display:none;"/>
								</td>
								<td style="text-align: right;">
									<img src="/CEWeb/Images/icons/arrow_accor.svg" id="party_UpArrow" href="#" style="margin-bottom: -2px;margin-right: 7px;"/>
									<img src="/CEWeb/Images/icons/arrow_accor1.svg" id="party_DownArrow" href="#" style="margin-bottom: -2px;margin-right: 7px; display: none;"/>
								</td>
								<div id="messageDisplaymobil" class="red-message"></div>
							</tr>
						</table>
						</div>
						<br>
						<div id="party_panel" class="panel" style="display:block" >
						<div id="1_div" class="Tab" title="Party Details">
							<table>
								<tbody>
									<tr>
										<td class="FldLabel">Drawee ID</td>
										<td><input name="APPL_ID" type="text" class="CHAR_P" id="APPL_ID" title="Drawee ID" size="25" maxlength="35">
											<input name="BENE_ID_BT" type="button" class="search" id="BENE_ID_BT" title="Drawee ID Button">
										</td>
									</tr>
									<tr>
										<td class="FldLabel">Drawee GSTN Available </td>
										<td>
											<select name="GSTN_AVAL" id="GSTN_AVAL" class="CHAR_P" title="Drawee GSTN Available" style="
												margin-left: 30px; margin-top:15px;
												width: 150px;
												">
												<option value="yes" >Yes</option>
												<option value="no">No</option>
												<option value="" selected="">PLEASE SELECT</option>
											</select>
										</td>
									</tr>

									<tr>
										<td class="FldLabel">Drawee Name</td>
										<td>
											<input name="APPL_NM" type="text" class="CHAR_P" id="APPL_NM" title="Drawee Name" size="25" maxlength="35" >
										</td>
										<td class="FldLabel"><label for="Drawee GSTN" id="benegstn" > Drawee GSTN</label></td>
										<td><input name="GSTN" type="text" class="CHAR_P" id="GSTN" title="Drawee GSTN" size="20" maxlength="15" oninput='convertToUpperCase(this)' ></td>
									</tr>
									<tr>
										<td class="FldLabel">Drawee Address 1</td>
										<td><input id="DRWE_ADD1" class="CHAR_P" maxlength="35" name="DRWE_ADD1"   style="width: 250px;resize:none;padding-right: 1px;"  title="Applicant /Drawee Address 1" ></input></td>
										<td class="FldLabel"><label for="Drawee PAN" id="benepan" >Drawee PAN</label></td>
										<td><input name="PAN" type="text" class="CHAR_P" id="PAN" title="Drawee PAN" size="20" maxlength="10" oninput='convertToUpperCase(this)'></td>
									</tr>
									<tr>
										<td class="FldLabel">Drawee Address 2</td>
										<td><input id="DRWE_ADD2" class="CHAR_P" maxlength="35" name="DRWE_ADD2"   style="width: 250px;resize:none;padding-right: 1px;"  title="Applicant /Drawee Address 2" ></input></td>
										
										<td class="FldLabel"><label for="Applicant /Drawee LEI Code" id="benelei" >Drawee LEI Code</label></td>
										<td><input id="DRWE_LEI" class="CHAR_P" maxlength="20" name="DRWE_LEI"   style="width: 250px;resize:none;padding-right: 1px;"  title="Applicant /Drawee LEI Code" ></input></td>
										
									</tr>
									<tr>
										<td class="FldLabel">City</td>
										<td><input id="DRWE_CITY" class="CHAR_P" maxlength="35" name="DRWE_CITY"  style="width: 250px;resize:none;padding-right: 1px;"  title="City" ></input></td>
										<td class="FldLabel">Drawee Email</td>
										<td><input id="DRWE_EMAIL" class="CHAR_P" name="DRWE_EMAIL"  style="width: 250px;resize:none;padding-right: 1px;"  title="Drawee Email" ></input></td>
									</tr>
									<tr>
										<td class="FldLabel">State</td>
										<td>
											<select name="DRWE_STATE" id="DRWE_STATE" type="text" class="CHAR_P" title="State" maxlength="35">
												<option value="01">JAMMU AND KASHMIR</option>
												<option value="02">HIMACHAL PRADESH</option>
												<option value="03">PUNJAB</option>
												<option value="04">CHANDIGARH</option>
												<option value="05">UTTARAKHAND</option>
												<option value="06">HARYANA</option>
												<option value="07">DELHI</option>
												<option value="08">RAJASTHAN</option>
												<option value="09">UTTAR PRADESH</option>
												<option value="10">BIHAR</option>
												<option value="11">SIKKIM</option>
												<option value="12">ARUNACHAL PRADESH</option>
												<option value="13">NAGALAND</option>
												<option value="14">MANIPUR</option>
												<option value="15">MIZORAM</option>
												<option value="16">TRIPURA</option>
												<option value="17">MEGHALAYA</option>
												<option value="18">ASSAM</option>
												<option value="19">WEST BENGAL</option>
												<option value="20">JHARKHAND</option>
												<option value="21">ODISHA</option>
												<option value="22">CHATTISGARH</option>
												<option value="23">MADHYA PRADESH</option>
												<option value="24">GUJARAT</option>
												<option value="25">DAMAN AND DIU</option>
												<option value="26">DADRA AND NAGAR HAVELI</option>
												<option value="27">MAHARASTRA</option>
												<option value="28">ANDHRA PRADESH</option>
												<option value="29">KARNATAKA</option>
												<option value="30">GOA</option>
												<option value="31">LAKSHADWEEP</option>
												<option value="32">KERALA</option>
												<option value="33">TAMILNADU</option>
												<option value="34">PONDICHERRY</option>
												<option value="35">ANDAMAN AND NICOBAR</option>
												<option value="36">TELANGANA</option>
												<option value="99">MISC STATE</option>
												<option value="" selected=""></option>
											</select>
										</td>
										<td class="FldLabel">Drawee Contact</td>
									
										<td><input id="DRWE_CONTACT" class="CHAR_P" name="DRWE_CONTACT"  style="width: 250px;resize:none;padding-right: 1px;"  title="Drawee Contact" maxlength='10'></input></td>
										
									</tr>
									<tr>
										<td class="FldLabel">Pin code</td>
										<td><input id="DRWE_PIN" class="INT_P" maxlength="6" name="DRWE_PIN" type="text" style="width: 250px;resize:none;padding-right: 1px;"  title="Pin code" ></input></td>
										<td class="FldLabel">Collecting Bank ID</td>
										<td ><input name="ISSUE_BK_ID" type="text" class="CHAR_P" id="ISSUE_BK_ID" title="Collecting Bank ID" size="20" maxlength="35">
											<input name="BANK_ID_BT" type="button" class="search" id="BANK_ID_BT" title="Collecting Bank ID Button">
										</td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td class="FldLabel">Collecting Bank Name</td>
										<td><input id="ISSUE_BK_NM" class="CHAR_P" maxlength="35" name="ISSUE_BK_NM"   style="width: 250px;resize:none;padding-right: 1px;"  title="State" ></input></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td class="FldLabel">Collecting Bank address</td>
										<td> <textarea name="ISSUE_BK_ADD" rowspan='2' cols="35" rows="3" class="CHAR_P" id="ISSUE_BK_ADD" title="Collecting Bank Address" style="height:100px" charset="SX"></textarea></td>
									</tr>
								</tbody>
							</table>
						</div>
						</div>
					</td>
				</tr>
			</table>
		</div>










		<div style="padding: 10px; padding-bottom: 2px;">
			<table style="width: 100%;">
				<tr>
					<td>
						<div class="accordion" id="AmendmentRequest" title="Amendment Request Details">
						<table style="width: 100%;">
							<tr>
								<td style="text-align: left;">
									<img src="/CEWeb/Images/icons/Tick.svg" href="#" id="tick3" style="margin-bottom: -2px; margin-right: 7px; display:none;"/>
								</td>
								<td style="text-align: right;">
									<img src="/CEWeb/Images/icons/arrow_accor.svg" id="AmendmentRequest_UpArrow" href="#" style="margin-bottom: -2px;margin-right: 7px;"/>
									<img src="/CEWeb/Images/icons/arrow_accor1.svg" id="AmendmentRequest_DownArrow" href="#" style="margin-bottom: -2px;margin-right: 7px; display: none;"/>
								</td>
								<div id="messageDisplaymobil" class="red-message"></div>
							</tr>
						</table>
						</div>
						<br>
						<div id="AmendmentRequest_panel" class="panel" style="display:block" >
						<div id="2_div" class="Tab" title="Amendment Request Details">
							<table>
								<tbody>
									<tr>
										<td class="FldLabel">Bill amount</td>
										<td><input id="COLL_AMT1" class="AMT_P" maxlength="6" name="COLL_AMT1"  style="width: 250px;resize:none;padding-right: 1px;"  title="Bill amount" ></input></td>
									</tr>
									<tr>
										<td class="FldLabel">New Bill Amount</td>
										<td><input id="NEW_COLL_AMT" class="AMT_O" maxlength="20" name="NEW_COLL_AMT"   style="width: 250px;resize:none;padding-right: 1px;"  title="New Bill Amount" onchange='newBillAmt();'></input></td>
									</tr>
									<tr style="height:30px">
										<td class="FldLabel" style="visibility:hidden"></td>
										<td><input name="" type="text"  id="" title="" size="25" maxlength="16" style="width: 180px;margin-left: 0px;disabled:true; display:none" ></td>			
									</tr>
									<tr>											
										<td class="FldLabel">Bill Due Date</td>
										<td><input name="BILL_DUE_DT1" type="text" class="DATE_P" id="BILL_DUE_DT1" title="Bill Due Date" size="10" maxlength="35"></td>
									</tr>
									<tr>
										<td class="FldLabel">New Bill Due Date</td>
										<td> <input name="NEW_BILL_DUE_DT"  class="DATE_O" id="NEW_BILL_DUE_DT" title="New Bill Due Date" size="10" maxlength="10" onchange='ExpDate();'  charset="SX"></td>  
									</tr>
									<tr style="height:30px">
										<td class="FldLabel" style="visibility:hidden"></td>
										<td><input name="" type="text"  id="" title="" size="25" maxlength="16" style="width: 180px;margin-left: 0px;disabled:true; display:none" ></td>			
									</tr>									 
									<tr>
										<td class="FldLabel">Operative Account No.(Debit)</td>
										<td><input id="OPERA_ACC_NO" class="CHAR_P" maxlength="11" name="OPERA_ACC_NO"  style="width: 250px;resize:none;padding-right: 1px;"  title="Operative Account No.(Debit)" ></input></td>
									</tr>
									<tr>
										<td class="FldLabel">New Operative Account No.(Debit)</td>
										<td><input id="NEW_OPERA_DEBIT_AC" class="CHAR_O" maxlength="11" name="NEW_OPERA_DEBIT_AC"  style="width: 250px;resize:none;padding-right: 1px;"  title="New Operative Account No.(Debit)" ></input></td>
									</tr>
									<tr style="height:30px">
										<td class="FldLabel" style="visibility:hidden"></td>
										<td><input name="" type="text"  id="" title="" size="25" maxlength="16" style="width: 180px;margin-left: 0px;disabled:true; display:none" ></td>			
									</tr>	
									<tr>
										<td class="FldLabel">Operative Account No.(Credit)</td>
										<td><input id="OPR_ACC_CRDT" class="CHAR_P" maxlength="11" name="OPR_ACC_CRDT"  title="Operative Account No.(Credit)" ></input></td>
									</tr>
									<tr>
										<td class="FldLabel">New Operative Account No.(Credit)</td>
										<td><input id="NEW_OPR_ACC_CRDT" class="CHAR_O" maxlength="11" name="NEW_OPR_ACC_CRDT"  title="New Operative Account No.(Credit)" ></input></td>
									</tr>
									<tr style="height:30px">
										<td class="FldLabel" style="visibility:hidden"></td>
										<td><input name="" type="text"  id="" title="" size="25" maxlength="16" style="width: 180px;margin-left: 0px;disabled:true; display:none" ></td>			
									</tr>
									<tr>											
										<td class="FldLabel star">Amendment Remarks</td>
										<td><textarea name="AMD_REMARKS" type="text" class="CHAR_M" id="AMD_REMARKS" title="Amendment Remarks" cols="100" rows="3"></textarea></td>
									</tr>
									<tr>
										<td class="FldLabel">Part Payment</td>
										<td colspan="3" style="padding-left:16px; padding-right:25px; padding-top:27px;">
											<input id="PART_PYMT_Y" type="radio" name="PART_PYMT" value="1">
											<label for="PART_PYMT_Y" style="font-size:15px;color:#506070;padding-right: 50px;"><span></span>YES</label>
											
											<input id="PART_PYMT_N" type="radio" name="PART_PYMT" value="2">
											<label for="PART_PYMT_N" style="font-size:15px; color:#506070;"><span></span>NO</label>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						</div>
					</td>
				</tr>
			</table>
		</div>





		<div style="padding: 10px; padding-bottom: 2px;" >
			<table style="width: 100%;">
				<tr>
					<td>
						<div id="DocumentsUpload" title="Documents Upload" class="accordion">
						<table style="width: 100%;">
							<tr>
								<td style="text-align: left;">
									<img src="/CEWeb/Images/icons/Tick.svg" href="#" id="tick4" style="margin-bottom: -2px; margin-right: 7px; display:none;">&nbsp;Documents Upload
								</td>
								<td style="text-align: right;">
									<img src="/CEWeb/Images/icons/arrow_accor.svg" id="DocumentsUpload_UpArrow" href="#" style="margin-bottom: -2px;margin-right: 7px;  display: none;"/>
									<img src="/CEWeb/Images/icons/arrow_accor1.svg" id="DocumentsUpload_DownArrow" href="#" style="margin-bottom: -2px;margin-right: 7px;"/>
								</td>
							</tr>
						</table>
						</div>
						<br>
						<div id="DocumentsUpload_panel" class="panel" style="display:block" >
						<div id="3_div" class="Tab" title="Documents Upload">
							<table id="1_table" style="width: 95%;">
								<input type="hidden" name="imgType" id="Id_imgType">
								<input type="hidden" name="EEFlag" id="Id_docEEFlag">
								<input type="hidden" name="DOC_NAME" id="DOC_NAME">
								<input name="PCDA_FLAG" type="hidden" id="PCDA_FLAG" value="">
								<input name="TEMP_ROW_COUNT" type="hidden" class="CHAR_M" id="TEMP_ROW_COUNT" title="Document Upload" onchange="checkDocsUpload();">
								<input name="DOCS_TICK" type="hidden" class="CHAR_O" id="DOCS_TICK" title="Document Upload">
								<div style="text-align:left" class="UploadImageLink" id="viewImgLinkDiv">
									<a href="#" onClick="setDocsTick();SYS_Upload_Image()" style="font-size: 15px;">Upload / View Document (s)</a>
									<p style="margin-left:40px; color: #010101; font-style: italic;background-color: #f7f8fb; width:580px">
									<label style="color:red;font-size:20px;padding-right:5px">*</label>
									One document is mandatory.
									</p>
								</div>
							</table>
						</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
<!--Doc_upload-->




		<div style="padding: 10px; padding-bottom: 2px;">
			<table style="width: 100%;">
				<tr>
					<td>
						<div class="accordion" id="communication" title="Communication Tab">
						<table style="width: 100%;">
							<tr>
								<td style="text-align: left;">
									<img src="/CEWeb/Images/icons/Tick.svg" href="#" id="tick5" style="margin-bottom: -2px; margin-right: 7px; display:none;"/>
								</td>
								<td style="text-align: right;">
									<img src="/CEWeb/Images/icons/arrow_accor.svg" id="communication_UpArrow" href="#" style="margin-bottom: -2px;margin-right: 7px;"/>
									<img src="/CEWeb/Images/icons/arrow_accor1.svg" id="communication_DownArrow" href="#" style="margin-bottom: -2px;margin-right: 7px; display: none;"/>
								</td>
								<div id="messageDisplaymobil" class="red-message"></div>
							</tr>
						</table>
						</div>
						<br>
						<div id="communication_panel" class="panel" style="display:block" >
						<div id="4_div" class="Tab" title="Communication Tab">
							<table>
								<tbody>
									<tr>
										<td class="FldLabel">Correspondence Between User & Supervisor :</td>
										<td style="width: 80%;">
											<textarea name="MSG_BOX_BET_MAKER_CHECKER" cols="100" rows="100" style="height:100px; width: 85% !important; max-width: 100% !important; border: none; outline: none; resize: none; border-bottom: 1px solid #bcbebf;margin-top:35px;"  class="CHAR_O" id="MSG_BOX_BET_MAKER_CHECKER" title="Message to Supervisor " maxlength="350" ></textarea>
										</td>
									</tr>
									<tr>
										<td class="FldLabel">Correspondence with Bank</td>
										<td style="width: 80%;">
											<textarea name="NOTES" cols="100" rows="100" style="height:100px; width: 85% !important; max-width: 100% !important; border: none; outline: none; resize: none; border-bottom: 1px solid #bcbebf;margin-top:35px;"  class="CHAR_O" id="NOTES" title="Message to Bank" maxlength="390"></textarea>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						</div>
					</td>
				</tr>
			</table>
		</div>

			



<div id="TrxSysBtnsDiv1" style="width: 100%;">
								<table id="TrxSysBtns1" style="width: 100%;">
									<tbody>
										<tr id="TrxSysBtnsRow1">
											<td id="tdcancel1" nowrap="nowrap" style="text-align: left;">
											
												<input type="button" id="sec_cancel" class="sec_cancel" value="Cancel" onclick="getFuncIdOnClick_n('F13502875218')">
											</td>										
											<td id="tdsave1" nowrap="nowrap" style="text-align: right;">
											
											
												
												<input type="button" id="prim_save" class="prim_save" value="Save as Draft" onclick="saveAsDraft()">
												<input type="button" id="NEXT_BT" class="next-button" value="Next" onclick="handleNextButtonClick()">
												<input type="button" id="PRE_BT" class="prim_next" value="Preview &amp; Submit" style="display: none;" onclick="submitTab();">
											</td>
										
										</tr>
									</tbody>
								</table>
							</div>
							
							
							
							<div id="TrxSysBtnsDivChecker" style="display: none;">
								<table id="TrxSysBtnsChecker">
									<tbody>
										<tr id="TrxSysBtnsRowChecker">
											<td id="tdcancelChecker" nowrap="nowrap" width="1%">
												<input type="button" id="sec_cancel" class="sec_cancel" onclick="CancelTransaction()" value="CANCEL">
											</td>
											<td nowrap="nowrap" width="100%"></td>
											<td id="tdconfirmChecker" nowrap="nowrap" width="1%">
												
												<input type="button" id="prim_release" class="prim_release" onclick="RejectConfirm();" name="REJECT" value="REJECT">
												<input type="button" id="prim_release" class="prim_release" onclick="ReleasEConfirm()" name="AUTHORISE" value="AUTHORISE">	
											</td>
										</tr>
									</tbody>
								</table>
							</div>

<!--Rejecting trx in checker-->							
<div class = "backdropReject">
 <table id="rejectAuthorise" style="display: table;">
		<tbody>
		  <tr>
			<td>
			  <table style="width: 100%;top: 0px;">
				<tbody>
					<tr>
						<td style="text-align: -webkit-right;top: 0px;">
						  <img src="/CEWeb/Images/icons/cancel.svg" style="cursor: pointer;" onclick="cancelRejectNo(); $('#C_REFUSE').val('');"/>
						</td>
			  		</tr>
			  <tr>
				<td style="text-align: -webkit-center;">
				  <img src="/CEWeb/Images/icons/Reject.PNG" style="height: 55px;">
				</td>
			  </tr>
			  <tr>
				  <td style=" text-align: -webkit-center; ">
				<label id="rejectRefNoSet" style="  color: #506070; font-weight: bolder; font-size: 16px; ">Bill Reference No. </label>
				</td>
			</tr>
			  
			  <tr>
				<td class="FldLabel star" style="  font-weight: bold; padding-left: 30px;">Enter reason for rejection</td>
			  </tr>	  
			 <tr>	
				 <td style=" padding-left: 30px;">	
				<textarea rows="4" cols="50" class="rejtext" maxlength="100" name="C_REFUSE" id="C_REFUSE"></textarea>
			  </td></tr>
		  <tr>
			<td style="text-align: -webkit-center; ">
			  <input type="button"  id="P_UM" class="rejectbtns" onclick="cancelRejectNo(); $('#C_REFUSE').val('');" value="CLOSE" style="cursor: pointer;">
			  <input type="button"  id="P_UM" class="rejectbtns" onclick="cancelRejectYes()" value="SUBMIT" style="cursor: pointer;">
		  </td>
	 	 </tr>
				</tbody>
			  </table>
			</td>
		  </tr>
		  </tbody>
		</table> 
	</div>							
<!--Authorising div-->
	<div class = "backdropAuthorise" style="display: none">
	<div id="confirmAuthorise" style="display: none">
	<div style="transform:translateY(60%)">
		<div style="text-align: center;">
		<span style="font-weight: bold; color: black;">Are you sure you want to Authorize the LC</span>
			<br><br><br>
			<div>
				
					<input type="button" id="P_UC" class="addCSS" value="No" onclick="cancelAuthoriseNo();"/>&nbsp &nbsp &nbsp &nbsp
				
				<input type="button" id="P_UM" class="addCSS" value="Yes" onclick="cancelAuthoriseYes();"/>
			</div>
		</div>
	</div>
	</div>
</div>
<!--save confirming div(active trx)-->
<div class="subbacbutton" style="text-align: center;">
                            <button type="button" id="sec_cancel" class="sec_cancel" onclick="CancelTransaction();" >BACK</button>
                            <button type="button" class="addCSS" id="submitButtonid" onclick="submitTab();">SUBMIT</button>
	                        <button type="button" class="addCSS" id="confirmButtonid" onclick="ConfirmTransaction();">CONFIRM</button>	
</div>			
								
							
		<div id="records_table" class="modal" style="display: none;">
	<div class="records_table_modal-content">
	<table style="width: 100%; border: 0px; border-spacing: 0px; border-collapse: collapse; text-align: center; margin: auto;" id="exportReportNames">
		<tr>
			<td>
				<img src="/CEWeb/Images/icons/cancel.svg" class="close" id="exportAsCloseBtn" onclick="exportAsClose();" style="padding-bottom: 20px;text-align: right;">
			</td>
		</tr>
  </table>
  
 </div>	 		
</td>		
</tr>
</div>

</td>
</tr>
</table>
</div>					
<%if("TRUE".equals(ScriptConvHelper.declareScriptVar(request.getParameter("VIEWHISTORY")))){%>
<CETAGS:ViewReport />
<%}%>
