<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
<%@page import="com.cisco.legal.map.valueObject.TemplateQuestions"%>
<%@page import="java.math.BigInteger"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.HashMap"%>
<%@ page import="com.cisco.legal.map.valueObject.RequestDetails"%>
<%@ page import="com.cisco.legal.map.valueObject.TemplateDetails"%>
<%@ page import="com.cisco.legal.map.dao.MapPkgDao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Document Assembly And Routing Tool</title>
	
		<%-- <script type="text/javascript" language="javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script> --%>
		<script type="text/javascript" language="javascript" src="<%=request.getContextPath()%>/js/jquery.js"></script> 
		<script type="text/javascript"	src="<%=request.getContextPath()%>/js/bootstrap-datepicker.js"></script>
		 <%-- <script type="text/javascript" language="javascript" src="<%=request.getContextPath()%>/js/JdataTables.js"></script>--%>
	 	<script type="text/javascript" language="javascript"  src="<%=request.getContextPath()%>/js/jquery.dataTables.min.js"></script>
		<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
      	<script src="<%=request.getContextPath()%>/js/jquery.highlight-4.js"></script>
      <script src="<%=request.getContextPath()%>/js/bootstrap-select.js"></script>
      	<!-- css -->
      	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap-select.css"> 
      		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/datepicker.css">
      	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/dataTables.jqueryui.css">
  		 <link href="<%=request.getContextPath()%>/css/bootstrap-combined.min.css" rel="stylesheet">	
		<%--<link href="<%=request.getContextPath()%>/css/bootstrap-select.css" rel="stylesheet"> --%>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap.css" id="bootstrapCss"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap-theme.css"/>
	  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/cisco_loading.css"/>
		
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap-glyphicons.css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/font-awesome.min.css" />
	
		<!-- <style type="text/css" title="currentStyle">
		@import url("http://netdna.bootstrapcdn.com/bootstrap/3.0.0-rc2/css/bootstrap-glyphicons.css");
		</style> -->
				
		<!-- include application css - start -->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/ciscoBanner.css">
		<%-- <link href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet"> --%>
	
	<style type="text/css">
	
	/* bootstrap code changes */
	.glyphicon-plus-sign,.glyphicon-minus-sign {
  		display: table-cell;
  		top:0;
  } 
  .panel-heading {
    padding: 4px 15px;
}
  .btn{
  font-size: 12px;
  }
  
  .nav {
  margin-bottom: 16px;
  }
  .nav > li > a:hover,
.nav > li > a:focus {
  color: #ffffff;				
  background-color: #428bca;	
}
  .alert {
  margin-bottom: 9px;
  }
  .panel {
  margin-bottom: 0px;
  }
  
  .well {
  margin-bottom: 2px;
  margin-top: 2px;
  }
	/* bootstrap code changes end */
.panel-heading
{
 cursor: pointer; cursor: hand;
}

 .open > .dropdown-menu {
    display: block;
    width:auto;
    font-size:13px;
 }

.btn{
 width: 100%;
}

.dropdown-toggle {   
    overflow: hidden;
    padding-right: 24px /* Optional for caret */;
    text-align: left;
    text-overflow: ellipsis;    
    width: 56%;
}

/* Optional for caret */
.dropdown-toggle .caret {
    position: absolute;
    right: 12px;
    top: calc(50% - 2px);
}

.body-section {
  width: 99%;
  height: 99%;
  /* left: 25%; */ /* uncomment if you want to center horizontally */
  /* top: 25%; */ /* uncomment if you want to center vertically */
   margin:0 auto;
}
.formerrors{
margin: 1%;
}
table
{
font: 90%/1.45em "Helvetica Neue",HelveticaNeue,Verdana,Arial,Helvetica,sans-serif;
}
/* for table header icon */
table.dataTable thead .sorting {
  background: url("<%=request.getContextPath()%>/images/sort_both.png") no-repeat center right;
}
table.dataTable thead .sorting_asc {
  background: url("<%=request.getContextPath()%>/images/sort_asc.png") no-repeat center right;
}
table.dataTable thead .sorting_desc {
  background: url("<%=request.getContextPath()%>/images/sort_desc.png") no-repeat center right;
}
table.dataTable thead .sorting_asc_disabled {
  background: url("<%=request.getContextPath()%>/images/sort_asc_disabled.png") no-repeat center right;
}
table.dataTable thead .sorting_desc_disabled {
  background: url("<%=request.getContextPath()%>/images/sort_desc_disabled.png") no-repeat center right;
}
/* for table header icon end */
.child-row-wrapper-odd{
 background-color: #f9f9f9 !important;
}
.child-row-wrapper-even {
 background-color: white !important;
}
 .child-row-wrapper-odd #inner_table tbody tr{
 background-color: #f9f9f9 !important;
}
.child-row-wrapper-even #inner_table tbody tr{
 background-color: white !important;
} 
/* #inner_table{
 background-color: #f1f1f1 !important;
}
#inner_table tbody tr{
background-color: #f1f1f1 !important;
} */

inner_table table {display: table;}

.status-color{
color: #fff;
    display: block;
    padding: 5px 12px !important;
     margin-left:0px !important;
   /* margin-top:3px; */
    margin-left:5px;
   /*  width:40%; */
    text-align:center;
}
.cust-active{
	background: none repeat scroll 0 0 #39B3D7;
}

.cust-partial{
	background: none repeat scroll 0 0 #ED9C28;
}

.cust-inreview{
 background: none repeat scroll 0 0 #F6D907;
}

.cust-void{
background: none repeat scroll 0 0 #FA3031;
}

.cust-completed{
 background: none repeat scroll 0 0 #43c83c;
}



.btn-disble:hover{
background-color:#d2322d;
color:#ffffff;
background-image: none;
text-shadow:none;
}

.highlight {
 background-color: yellow ;
 color:#000000;
 }

table#example th{
border: 1px solid #dddddd;
border-bottom-width: 3px;
}

table#example td{
border: 1px solid #dddddd;
}

table#inner_table td
{
border: none ;

}
/* .tr-selected{
background-color: #EEEEEE !important;
} */
/*  tr.shown td.details-control{
background: url('../images/details_close.png')no-repeat center center;



} */

/* td.details-control
{
background: url('../images/details_open.png')no-repeat center center;
}
 */
.glyphicon

{ text-align: center !important; }

.glyph-icon{
color: #15addd;
font-size: 18px;
-webkit-transition-property: font-size; /* Safari */
    -webkit-transition-duration: 2s; /* Safari */
    transition-property: font-size;
    transition-duration: 0.1s;
}
.glyph-icon:hover{
color: #15addd;
font-size: 23px;
}

.panel-group{

	border-radius: 0 0px 8px 8px;
    border-style: none solid solid;
    border-width: 0 1px 1px;
    border-color: #dddddd;
    padding:14px;

}
.tab-content{
	overflow:visible;
}
.selectpicker {
    padding-bottom: 3px;
    padding-top: 1px;
}

#myTab{
margin-bottom: 0px;
}
#mytable td:nth-child(1){
vertical-align:bottom;
}
#advance-wrapper-tab form {
    margin: 0;
}

/* Scroll Image */
.scroll-to-top {
			position: fixed;
			background: url(<%=request.getContextPath()%>/images/scroll-to-top.png) no-repeat;
			cursor: pointer;
			bottom: 1em;
			right: 0px;
			width:55px;
			height: 55px;
			padding-right: 1em;
			display: none;
			z-index: 999;
		}
.dataTables_filter{
float:left !important;
}

.dataTables_length{
float:right !important;
}
.alert {
    padding: 7px;
}
#example_wrapper{
	padding-top:20px;
}
form .panel-group{
	margin-bottom:0;
}

/* for two links in nav tab create request and edit new links */
#create_entry, #mytable, #edit_entry ,#reports_link{
    display: inline;
    float: right;
    font-size: 13px;
}
.question_td {
width: 9% !important;
min-width: 9% !important;
max-width: 9% !important;
word-wrap: break-word;
}

.spacer_td {
width: 4% !important;
min-width: 4% !important;
max-width: 4% !important;
}

.answer_td {
width: 20% !important;
min-width: 20% !important;
max-width: 20% !important;
word-wrap: break-word;
}

.colon_td{
width: 1% !important;
min-width: 1% !important;
max-width: 1% !important;
}


</style>


	 <style type="text/css">
		 /* 
		input[type="button"], input[type="submit"]
		 { background-color: hsl(201, 100%, 30%) !important; 
		 background-repeat: repeat-x; 
		 filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#00a5ff", endColorstr="#006399"); 
		 background-image: -khtml-gradient(linear, left top, left bottom, from(#00a5ff), to(#006399)); 
		 background-image: -moz-linear-gradient(top, #00a5ff, #006399); background-image: -ms-linear-gradient(top, #00a5ff, #006399); background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #00a5ff), color-stop(100%, #006399)); background-image: -webkit-linear-gradient(top, #00a5ff, #006399); background-image: -o-linear-gradient(top, #00a5ff, #006399); background-image: linear-gradient(#00a5ff, #006399); border-color: #006399 #006399 hsl(201, 100%, 25%); color: #fff !important; text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.33); -webkit-font-smoothing: antialiased; 
		 !important;}
		  */
		 .tag2 {
    background-color: #E0E0E0;
    border-radius: 5px;
    box-shadow: 0 1px rgba(0, 0, 0, 0.3);
    display: inline-block;
    font-size: 11px;
    height: 30px;
    padding: 9px 10px 2px 10px;
    
}
/* bootstrap changes
 .nav {
  margin-bottom: 16px;
  }
  .nav > li > a:hover,
.nav > li > a:focus {
  color: #ffffff;				
  background-color: #428bca;	
}
.alert {
  margin-bottom: 9px;
}
.panel {
  margin-bottom: 0px;
  }
  .panel-heading {
  padding: 9px 15px;
  }
  
  .well {
  margin-bottom: 2px;
  margin-top: 2px;
} 
 bootstrap changes */

 	</style>
		
		<script type="text/javascript" charset="utf-8">
		
		$(document).ready(function() {
			document.getElementById("ManagerSearch").checked = false;
			var a="";
			var templateId1="<%=(String)request.getAttribute("templateId")%>";
			var searchVisibility="<%=(String)request.getAttribute("searchVisibility")%>";
			var  kioskName="<%=(String)request.getAttribute("kioskName")%>";
			var userId="<%=(String)session.getAttribute("userId")%>";
			var customMessage="<%=(String)request.getAttribute("customMessage")%>";
			var templateNameVariable="<%=(String)request.getAttribute("templateName")%>";
			var flag=0;
			var bubbleSearch = [];
			//changes by kabhardw for phase 3.5
			var basicSearchtype1="<%=basicSearchtype%>";
			var showAdvancedSearch="<%=(String)request.getAttribute("showAdvancedSearch")%>";
			var showClientSearchFilter = "true";
			var isSuperUser="<%=(String)request.getAttribute("isSuperUser")%>";
			var basicSearch=<%=(((String)request.getAttribute("basicSearchQuestion")).equalsIgnoreCase("NoQuestionSelected"))%>
			//added by gaurav.....for generalising the changes made for CMT template to all route 3 templates
			var  routeType1="<%=(String)request.getAttribute("routeType1")%>";
			//added by gaurav.....for generalising the changes made for CMT template to all route 3 templates...end
			
			//Added by muttappa ---reset search fields after page refresh
			$("#othrPartyNameSearch3").val('');
			$('#templateNameSearch').val('Please select a value');
	   	    $('#templateNameSearch').selectpicker('refresh');
		
		$('#ManagerSearch').click(function() {
	        if ($(this).is(':checked')) {
	        	
	        	 table.ajax.url("<%=request.getContextPath()%>"+"/templateSearch.do?value=AjaxRequest&managerSearch=YES&templateID="+templateId1).load();
	        }
	        else{
	        	location.reload();
	        }
	    });
		if(showAdvancedSearch=="NO"){
			$('#myTab a:last').hide();
			$("#advance-wrapper-tab").hide();
			}
		if(basicSearch)
				{
				$('#myTab a:first').hide();
				$("#basic-wrapper-tab").hide();
				/* $("#basic-wrapper-tab").addClass("active"); */
				}

		
			if((showAdvancedSearch=="NO")&& (basicSearch)){
					$("#myTab").hide();
					$("#horiz_line").hide(); 
			}


			if(basicSearchtype1=="date")
			{
				/* $( "#basicSearchContent").datepicker({ dateFormat: 'yyyy-mm-dd' }); */
			}
			
			
			 $('#ProgressBarDiv').ajaxStart(function () {
			        $(this).show();
			    }).ajaxStop(function () {
			        $(this).hide();
			        
					 
			    });
			
			
			
			var offset = 70;
			var duration = 500;
			jQuery(window).scroll(function() {
			if (jQuery(this).scrollTop() > offset) {
			jQuery('.scroll-to-top').fadeIn(duration);
			} else {
			jQuery('.scroll-to-top').fadeOut(duration);
			}
			});

			jQuery('.scroll-to-top').click(function(event) {
			event.preventDefault();
			jQuery('html, body').animate({scrollTop: 0}, duration);
			return false;
			});
			/* var rows = []; */
           
			
			
			/* for Accordion caret */
			$('.panel-collapse').on('hidden.bs.collapse', function () {
				$(this).parent("div").find(".fa-angle-down").removeClass("fa-angle-down").addClass("fa-angle-right");
			    
			});
			
			$('.panel-collapse').on('shown.bs.collapse', function () {
				
				$(this).parent("div").find(".fa-angle-right")
		           .removeClass("fa-angle-right").addClass("fa-angle-down");
			});
			/* for Accordion caret */
				
				
   	/* for textfield drop down change */
			 $( "#templateNameSearch").change(function fn()
			 {
			 	$("#othrPartyNameSearch3").prop("value","");
			 	document.getElementById('templateNameSearch4').style.display='none';
			 	$('#templateNameSearch4').selectpicker('hide');			 	
			 	document.getElementById('othrPartyNameSearch3').style.display='block';
			 	
			 	if(routeType1 == "3"){
			 		document.getElementById('templateNameSearch5').style.display='none';
				 	$('#templateNameSearch5').selectpicker('hide');
				 	
				 	$('#templateNameSearch6').selectpicker('hide');			 	
					document.getElementById('templateNameSearch6').style.display='none'; 
					 	
				    $('#templateNameSearch7').selectpicker('hide');			 	
					document.getElementById('templateNameSearch7').style.display='none'; 
				    
				    /* Added by Gaurav --To display dropdown for Category in Advanced search --start   */
			 		document.getElementById('templateNameSearch8').style.display='none';
				 	$('#templateNameSearch8').selectpicker('hide');
				 	/* Added by Gaurav --To display dropdown for Category in Advanced search --end   */
				 	/* Added by Gaurav --To display dropdown for Geography in Advanced search --start   */
			 		document.getElementById('templateNameSearch9').style.display='none';
				 	$('#templateNameSearch9').selectpicker('hide');
				 	/* Added by Gaurav --To display dropdown for Geography in Advanced search --end   */
			 	
				 	/*  dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit start */
				 
				 	 $('#templateNameSearch10').selectpicker('hide');			 	
					 document.getElementById('templateNameSearch10').style.display='none'; 
					    
				     $('#templateNameSearch11').selectpicker('hide');			 	
			    	 document.getElementById('templateNameSearch11').style.display='none'; 
												
				     $('#templateNameSearch12').selectpicker('hide');			 	
					 document.getElementById('templateNameSearch12').style.display='none'; 
					 
					 $('#templateNameSearch13').selectpicker('hide');			 	
					 document.getElementById('templateNameSearch13').style.display='none'; 
					 
					 $('#templateNameSearch14').selectpicker('hide');			 	
					 document.getElementById('templateNameSearch14').style.display='none'; 
					 
					 $('#templateNameSearch15').selectpicker('hide');			 	
					 document.getElementById('templateNameSearch15').style.display='none'; 
					 
					 $('#templateNameSearch16').selectpicker('hide');			 	
					 document.getElementById('templateNameSearch16').style.display='none'; 
					 
					 $('#templateNameSearch17').selectpicker('hide');			 	
					 document.getElementById('templateNameSearch17').style.display='none'; 
					 
					 $('#templateNameSearch18').selectpicker('hide');	
					 document.getElementById('templateNameSearch18').style.display='none'; 
					
					 $('#templateNameSearch19').selectpicker('hide');			 	
					 document.getElementById('templateNameSearch19').style.display='none'; 
					 
					 $('#templateNameSearch20').selectpicker('hide');			 	
					 document.getElementById('templateNameSearch20').style.display='none'; 
					 					    
					 /*  dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit start */
					 		 	
			 	
			 	}
			 	
			 	
			   
				//	alert("hello");
			 	//alert($("#templateNameSearch").val());
			 	var str1 = $( "#templateNameSearch").val();
				var str2 = "date";
				
				if(str1=="map_req_status")
				{		
						/* document.getElementById('templateNameSearch4').style.display='block'; */
						$('#templateNameSearch4').selectpicker({
				    	    style: 'btn-default', 
				    	    liveSearch:true, 
				    	    size: 4,
				    	    width:'auto'
				    	    
				    	    });
						$('#templateNameSearch4').selectpicker('show');
						document.getElementById('othrPartyNameSearch3').style.display='none';
						if(routeType1 == "3"){
							document.getElementById('templateNameSearch5').style.display='none';
							document.getElementById('templateNameSearch6').style.display='none';
							document.getElementById('templateNameSearch7').style.display='none';
							
							/* Added by Gaurav --To display dropdown for Category in Advanced search --start   */
					 		document.getElementById('templateNameSearch8').style.display='none';
						 	/* Added by Gaurav --To display dropdown for Category in Advanced search --end   */
						 	/* Added by Gaurav --To display dropdown for Geography in Advanced search --start   */
					 		document.getElementById('templateNameSearch9').style.display='none';
						 	/* Added by Gaurav --To display dropdown for Geography in Advanced search --end   */

					 		/*  dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit start */
						 	document.getElementById('templateNameSearch10').style.display='none';
					 		document.getElementById('templateNameSearch11').style.display='none';
					 		document.getElementById('templateNameSearch12').style.display='none';
					 		document.getElementById('templateNameSearch13').style.display='none';
					 		document.getElementById('templateNameSearch14').style.display='none';
					 		document.getElementById('templateNameSearch15').style.display='none';
					 		document.getElementById('templateNameSearch16').style.display='none';
					 		document.getElementById('templateNameSearch17').style.display='none';
					 		document.getElementById('templateNameSearch18').style.display='none';
					 		document.getElementById('templateNameSearch19').style.display='none';
					 		document.getElementById('templateNameSearch20').style.display='none';
					 		/*  dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit end */				
						
						}
										}
				/* Added by Muttappa --Check whether "Assigned To" is selected in Advanced search --start */
				if(str1=="request_assigned_to")
				{								
						$('#templateNameSearch5').selectpicker({
				    	    style: 'btn-default', 
				    	    liveSearch:true, 
				    	    size: 4,
				    	    width:'auto'
				    	    
				    	    });
						$('#templateNameSearch5').selectpicker('show');
						document.getElementById('othrPartyNameSearch3').style.display='none';
						document.getElementById('templateNameSearch4').style.display='none';
						document.getElementById('templateNameSearch6').style.display='none';
						document.getElementById('templateNameSearch7').style.display='none';
						
						/* Added by Gaurav --To display dropdown for Category in Advanced search --start   */
				 		document.getElementById('templateNameSearch8').style.display='none';
					 	/* Added by Gaurav --To display dropdown for Category in Advanced search --end   */
					 	/* Added by Gaurav --To display dropdown for Geography in Advanced search --start   */
				 		document.getElementById('templateNameSearch9').style.display='none';
					 	/* Added by Gaurav --To display dropdown for Geography in Advanced search --end   */
				   
				 		document.getElementById('templateNameSearch10').style.display='none';
				 		document.getElementById('templateNameSearch11').style.display='none';
				 		document.getElementById('templateNameSearch12').style.display='none';
				 		document.getElementById('templateNameSearch13').style.display='none';
				 		document.getElementById('templateNameSearch14').style.display='none';
				 		document.getElementById('templateNameSearch15').style.display='none';
				 		document.getElementById('templateNameSearch16').style.display='none';
				 		document.getElementById('templateNameSearch17').style.display='none';
				 		document.getElementById('templateNameSearch18').style.display='none';
				 		document.getElementById('templateNameSearch19').style.display='none';
				 		document.getElementById('templateNameSearch20').style.display='none'; 
				
				
				}
				/* Added by Muttappa --Check whether "Assigned To" is selected in Advanced search --end */
				 
				if(str1=="FY")
				{								
						$('#templateNameSearch6').selectpicker({
				    	    style: 'btn-default', 
				    	    liveSearch:true, 
				    	    size: 4,
				    	    width:'auto'
				    	    
				    	    });
						$('#templateNameSearch6').selectpicker('show');
						document.getElementById('othrPartyNameSearch3').style.display='none';
						document.getElementById('templateNameSearch4').style.display='none';
						document.getElementById('templateNameSearch5').style.display='none';
						document.getElementById('templateNameSearch7').style.display='none';
						/* Added by Gaurav --To display dropdown for Category in Advanced search --start   */
				 		document.getElementById('templateNameSearch8').style.display='none';
					 	/* Added by Gaurav --To display dropdown for Category in Advanced search --end   */
					 	/* Added by Gaurav --To display dropdown for Geography in Advanced search --start   */
				 		document.getElementById('templateNameSearch9').style.display='none';
					 	/* Added by Gaurav --To display dropdown for Geography in Advanced search --end   */
				
				 		document.getElementById('templateNameSearch10').style.display='none';
				 		document.getElementById('templateNameSearch11').style.display='none';
				 		document.getElementById('templateNameSearch12').style.display='none';
				 		document.getElementById('templateNameSearch13').style.display='none';
				 		document.getElementById('templateNameSearch14').style.display='none';
				 		document.getElementById('templateNameSearch15').style.display='none';
				 		document.getElementById('templateNameSearch16').style.display='none';
				 		document.getElementById('templateNameSearch17').style.display='none';
				 		document.getElementById('templateNameSearch18').style.display='none';
				 		document.getElementById('templateNameSearch19').style.display='none';
				 		document.getElementById('templateNameSearch20').style.display='none';
				   
				
				}
				
				if(str1=="quarter")
				{								
						$('#templateNameSearch7').selectpicker({
				    	    style: 'btn-default', 
				    	    liveSearch:true, 
				    	    size: 5,
				    	    width:'auto'
				    	    
				    	    });
						$('#templateNameSearch7').selectpicker('show');
						document.getElementById('othrPartyNameSearch3').style.display='none';
						document.getElementById('templateNameSearch4').style.display='none';
						document.getElementById('templateNameSearch5').style.display='none';
						document.getElementById('templateNameSearch6').style.display='none';
						/* Added by Gaurav --To display dropdown for Category in Advanced search --start   */
				 		document.getElementById('templateNameSearch8').style.display='none';
					 	/* Added by Gaurav --To display dropdown for Category in Advanced search --end   */
					 	/* Added by Gaurav --To display dropdown for Geography in Advanced search --start   */
				 		document.getElementById('templateNameSearch9').style.display='none';
					 	/* Added by Gaurav --To display dropdown for Geography in Advanced search --end   */
				
				 		document.getElementById('templateNameSearch10').style.display='none';
				 		document.getElementById('templateNameSearch11').style.display='none';
				 		document.getElementById('templateNameSearch12').style.display='none';
				 		document.getElementById('templateNameSearch13').style.display='none';
				 		document.getElementById('templateNameSearch14').style.display='none';
				 		document.getElementById('templateNameSearch15').style.display='none';
				 		document.getElementById('templateNameSearch16').style.display='none';
				 		document.getElementById('templateNameSearch17').style.display='none';
				 		document.getElementById('templateNameSearch18').style.display='none';
				 		document.getElementById('templateNameSearch19').style.display='none';
				 		document.getElementById('templateNameSearch20').style.display='none';
								
				
				}
				


				/* Added by Gaurav --To check if "Category" is selected in Advanced search --start   */
				if(str1=="category")
					{
					$('#templateNameSearch8').selectpicker({
			    	    style: 'btn-default', 
			    	    liveSearch:true, 
			    	    size: 4,
			    	    width:'auto'
			    	    
			    	    });
					$('#templateNameSearch8').selectpicker('show');
					document.getElementById('othrPartyNameSearch3').style.display='none';
					document.getElementById('templateNameSearch4').style.display='none';
			 		document.getElementById('templateNameSearch5').style.display='none';
			 		document.getElementById('templateNameSearch6').style.display='none';
					document.getElementById('templateNameSearch7').style.display='none';
			 		document.getElementById('templateNameSearch9').style.display='none';
					
			 		document.getElementById('templateNameSearch10').style.display='none';
			 		document.getElementById('templateNameSearch11').style.display='none';
			 		document.getElementById('templateNameSearch12').style.display='none';
			 		document.getElementById('templateNameSearch13').style.display='none';
			 		document.getElementById('templateNameSearch14').style.display='none';
			 		document.getElementById('templateNameSearch15').style.display='none';
			 		document.getElementById('templateNameSearch16').style.display='none';
			 		document.getElementById('templateNameSearch17').style.display='none';
			 		document.getElementById('templateNameSearch18').style.display='none';
			 		document.getElementById('templateNameSearch19').style.display='none';
			 		document.getElementById('templateNameSearch20').style.display='none';
					}
				/* Added by Gaurav --To check if "Category" is selected in Advanced search --end   */

				/* Added by Gaurav --To check if "geography" is selected in Advanced search --start   */
				if(str1=="geos")
					{
					$('#templateNameSearch9').selectpicker({
			    	    style: 'btn-default', 
			    	    liveSearch:true, 
			    	    size: 4,
			    	    width:'auto'
			    	    
			    	    });
					$('#templateNameSearch9').selectpicker('show');
					document.getElementById('othrPartyNameSearch3').style.display='none';
					document.getElementById('templateNameSearch4').style.display='none';
			 		document.getElementById('templateNameSearch5').style.display='none';
			 		document.getElementById('templateNameSearch6').style.display='none';
					document.getElementById('templateNameSearch7').style.display='none';
			 		document.getElementById('templateNameSearch8').style.display='none';
					
			 		document.getElementById('templateNameSearch10').style.display='none';
			 		document.getElementById('templateNameSearch11').style.display='none';
			 		document.getElementById('templateNameSearch12').style.display='none';
			 		document.getElementById('templateNameSearch13').style.display='none';
			 		document.getElementById('templateNameSearch14').style.display='none';
			 		document.getElementById('templateNameSearch15').style.display='none';
			 		document.getElementById('templateNameSearch16').style.display='none';
			 		document.getElementById('templateNameSearch17').style.display='none';
			 		document.getElementById('templateNameSearch18').style.display='none';
			 		document.getElementById('templateNameSearch19').style.display='none';
			 		document.getElementById('templateNameSearch20').style.display='none';
					}
				/* Added by Gaurav --To check if "geography" is selected in Advanced search --end   */
				
				/*  dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit start */
				if(str1=="region")
					{
					$('#templateNameSearch10').selectpicker({
			    	    style: 'btn-default', 
			    	    liveSearch:true, 
			    	    size: 4,
			    	    width:'auto'
			    	    
			    	    });
					$('#templateNameSearch10').selectpicker('show');
					
					document.getElementById('othrPartyNameSearch3').style.display='none';
					document.getElementById('templateNameSearch4').style.display='none';
			 		document.getElementById('templateNameSearch5').style.display='none';
			 		document.getElementById('templateNameSearch6').style.display='none';
					document.getElementById('templateNameSearch7').style.display='none';
			 		document.getElementById('templateNameSearch8').style.display='none';
			 		document.getElementById('templateNameSearch9').style.display='none';
					document.getElementById('templateNameSearch11').style.display='none';
			 		document.getElementById('templateNameSearch12').style.display='none';
			 		document.getElementById('templateNameSearch13').style.display='none';
			 		document.getElementById('templateNameSearch14').style.display='none';
			 		document.getElementById('templateNameSearch15').style.display='none';
			 		document.getElementById('templateNameSearch16').style.display='none';
			 		document.getElementById('templateNameSearch17').style.display='none';
			 		document.getElementById('templateNameSearch18').style.display='none';
			 		document.getElementById('templateNameSearch19').style.display='none';
			 		document.getElementById('templateNameSearch20').style.display='none';
					}
				
				if(str1=="territory")
				{
				$('#templateNameSearch11').selectpicker({
		    	    style: 'btn-default', 
		    	    liveSearch:true, 
		    	    size: 4,
		    	    width:'auto'
		    	    
		    	    });
				$('#templateNameSearch11').selectpicker('show');
				
				document.getElementById('othrPartyNameSearch3').style.display='none';
				document.getElementById('templateNameSearch4').style.display='none';
		 		document.getElementById('templateNameSearch5').style.display='none';
		 		document.getElementById('templateNameSearch6').style.display='none';
				document.getElementById('templateNameSearch7').style.display='none';
		 		document.getElementById('templateNameSearch8').style.display='none';
		 		document.getElementById('templateNameSearch9').style.display='none';
				document.getElementById('templateNameSearch10').style.display='none';
		 		document.getElementById('templateNameSearch12').style.display='none';
		 		document.getElementById('templateNameSearch13').style.display='none';
		 		document.getElementById('templateNameSearch14').style.display='none';
		 		document.getElementById('templateNameSearch15').style.display='none';
		 		document.getElementById('templateNameSearch16').style.display='none';
		 		document.getElementById('templateNameSearch17').style.display='none';
		 		document.getElementById('templateNameSearch18').style.display='none';
		 		document.getElementById('templateNameSearch19').style.display='none';
		 		document.getElementById('templateNameSearch20').style.display='none';
				}
				
				if(str1=="cisco_entity")
				{
				$('#templateNameSearch12').selectpicker({
		    	    style: 'btn-default', 
		    	    liveSearch:true, 
		    	    size: 4,
		    	    width:'auto'
		    	    
		    	    });
				$('#templateNameSearch12').selectpicker('show');
				
				document.getElementById('othrPartyNameSearch3').style.display='none';
				document.getElementById('templateNameSearch4').style.display='none';
		 		document.getElementById('templateNameSearch5').style.display='none';
		 		document.getElementById('templateNameSearch6').style.display='none';
				document.getElementById('templateNameSearch7').style.display='none';
		 		document.getElementById('templateNameSearch8').style.display='none';
		 		document.getElementById('templateNameSearch9').style.display='none';
				document.getElementById('templateNameSearch10').style.display='none';
		 		document.getElementById('templateNameSearch11').style.display='none';
		 		document.getElementById('templateNameSearch13').style.display='none';
		 		document.getElementById('templateNameSearch14').style.display='none';
		 		document.getElementById('templateNameSearch15').style.display='none';
		 		document.getElementById('templateNameSearch16').style.display='none';
		 		document.getElementById('templateNameSearch17').style.display='none';
		 		document.getElementById('templateNameSearch18').style.display='none';
		 		document.getElementById('templateNameSearch19').style.display='none';
		 		document.getElementById('templateNameSearch20').style.display='none';
				}
				
				if(str1=="vertical")
				{
				$('#templateNameSearch13').selectpicker({
		    	    style: 'btn-default', 
		    	    liveSearch:true, 
		    	    size: 4,
		    	    width:'auto'
		    	    
		    	    });
				$('#templateNameSearch13').selectpicker('show');
				
				document.getElementById('othrPartyNameSearch3').style.display='none';
				document.getElementById('templateNameSearch4').style.display='none';
		 		document.getElementById('templateNameSearch5').style.display='none';
		 		document.getElementById('templateNameSearch6').style.display='none';
				document.getElementById('templateNameSearch7').style.display='none';
		 		document.getElementById('templateNameSearch8').style.display='none';
		 		document.getElementById('templateNameSearch9').style.display='none';
				document.getElementById('templateNameSearch10').style.display='none';
		 		document.getElementById('templateNameSearch11').style.display='none';
		 		document.getElementById('templateNameSearch12').style.display='none';
		 		document.getElementById('templateNameSearch14').style.display='none';
		 		document.getElementById('templateNameSearch15').style.display='none';
		 		document.getElementById('templateNameSearch16').style.display='none';
		 		document.getElementById('templateNameSearch17').style.display='none';
		 		document.getElementById('templateNameSearch18').style.display='none';
		 		document.getElementById('templateNameSearch19').style.display='none';
		 		document.getElementById('templateNameSearch20').style.display='none';
				}
				
				
				if(str1=="organization")
				{
				$('#templateNameSearch14').selectpicker({
		    	    style: 'btn-default', 
		    	    liveSearch:true, 
		    	    size: 4,
		    	    width:'auto'
		    	    
		    	    });
				$('#templateNameSearch14').selectpicker('show');
				
				document.getElementById('othrPartyNameSearch3').style.display='none';
				document.getElementById('templateNameSearch4').style.display='none';
		 		document.getElementById('templateNameSearch5').style.display='none';
		 		document.getElementById('templateNameSearch6').style.display='none';
				document.getElementById('templateNameSearch7').style.display='none';
		 		document.getElementById('templateNameSearch8').style.display='none';
		 		document.getElementById('templateNameSearch9').style.display='none';
				document.getElementById('templateNameSearch10').style.display='none';
		 		document.getElementById('templateNameSearch11').style.display='none';
		 		document.getElementById('templateNameSearch12').style.display='none';
		 		document.getElementById('templateNameSearch13').style.display='none';
		 		document.getElementById('templateNameSearch15').style.display='none';
		 		document.getElementById('templateNameSearch16').style.display='none';
		 		document.getElementById('templateNameSearch17').style.display='none';
		 		document.getElementById('templateNameSearch18').style.display='none';
		 		document.getElementById('templateNameSearch19').style.display='none';
		 		document.getElementById('templateNameSearch20').style.display='none';
				}
				
				if(str1=="signature execution type")
				{
				$('#templateNameSearch15').selectpicker({
		    	    style: 'btn-default', 
		    	    liveSearch:true, 
		    	    size: 4,
		    	    width:'auto'
		    	    
		    	    });
				$('#templateNameSearch15').selectpicker('show');
				
				document.getElementById('othrPartyNameSearch3').style.display='none';
				document.getElementById('templateNameSearch4').style.display='none';
		 		document.getElementById('templateNameSearch5').style.display='none';
		 		document.getElementById('templateNameSearch6').style.display='none';
				document.getElementById('templateNameSearch7').style.display='none';
		 		document.getElementById('templateNameSearch8').style.display='none';
		 		document.getElementById('templateNameSearch9').style.display='none';
				document.getElementById('templateNameSearch10').style.display='none';
		 		document.getElementById('templateNameSearch11').style.display='none';
		 		document.getElementById('templateNameSearch12').style.display='none';
		 		document.getElementById('templateNameSearch13').style.display='none';
		 		document.getElementById('templateNameSearch14').style.display='none';
		 		document.getElementById('templateNameSearch16').style.display='none';
		 		document.getElementById('templateNameSearch17').style.display='none';
		 		document.getElementById('templateNameSearch18').style.display='none';
		 		document.getElementById('templateNameSearch19').style.display='none';
		 		document.getElementById('templateNameSearch20').style.display='none';
				}
				
				if(str1=="currency")
				{
				$('#templateNameSearch16').selectpicker({
		    	    style: 'btn-default', 
		    	    liveSearch:true, 
		    	    size: 4,
		    	    width:'auto'
		    	    
		    	    });
				$('#templateNameSearch16').selectpicker('show');
				
				document.getElementById('othrPartyNameSearch3').style.display='none';
				document.getElementById('templateNameSearch4').style.display='none';
		 		document.getElementById('templateNameSearch5').style.display='none';
		 		document.getElementById('templateNameSearch6').style.display='none';
				document.getElementById('templateNameSearch7').style.display='none';
		 		document.getElementById('templateNameSearch8').style.display='none';
		 		document.getElementById('templateNameSearch9').style.display='none';
				document.getElementById('templateNameSearch10').style.display='none';
		 		document.getElementById('templateNameSearch11').style.display='none';
		 		document.getElementById('templateNameSearch12').style.display='none';
		 		document.getElementById('templateNameSearch13').style.display='none';
		 		document.getElementById('templateNameSearch14').style.display='none';
		 		document.getElementById('templateNameSearch15').style.display='none';
		 		document.getElementById('templateNameSearch17').style.display='none';
		 		document.getElementById('templateNameSearch18').style.display='none';
		 		document.getElementById('templateNameSearch19').style.display='none';
		 		document.getElementById('templateNameSearch20').style.display='none';
				}
					
				
				if(str1=="rating")
				{
				$('#templateNameSearch17').selectpicker({
		    	    style: 'btn-default', 
		    	    liveSearch:true, 
		    	    size: 4,
		    	    width:'auto'
		    	    
		    	    });
				$('#templateNameSearch17').selectpicker('show');
				
				document.getElementById('othrPartyNameSearch3').style.display='none';
				document.getElementById('templateNameSearch4').style.display='none';
		 		document.getElementById('templateNameSearch5').style.display='none';
		 		document.getElementById('templateNameSearch6').style.display='none';
				document.getElementById('templateNameSearch7').style.display='none';
		 		document.getElementById('templateNameSearch8').style.display='none';
		 		document.getElementById('templateNameSearch9').style.display='none';
				document.getElementById('templateNameSearch10').style.display='none';
		 		document.getElementById('templateNameSearch11').style.display='none';
		 		document.getElementById('templateNameSearch12').style.display='none';
		 		document.getElementById('templateNameSearch13').style.display='none';
		 		document.getElementById('templateNameSearch14').style.display='none';
		 		document.getElementById('templateNameSearch15').style.display='none';
		 		document.getElementById('templateNameSearch16').style.display='none';
		 		document.getElementById('templateNameSearch18').style.display='none';
		 		document.getElementById('templateNameSearch19').style.display='none';
		 		document.getElementById('templateNameSearch20').style.display='none';
				}
				
				if(str1=="sow_type")
				{
				$('#templateNameSearch18').selectpicker({
		    	    style: 'btn-default', 
		    	    liveSearch:true, 
		    	    size: 4,
		    	    width:'auto'
		    	    
		    	    });
				$('#templateNameSearch18').selectpicker('show');
				
				document.getElementById('othrPartyNameSearch3').style.display='none';
				document.getElementById('templateNameSearch4').style.display='none';
		 		document.getElementById('templateNameSearch5').style.display='none';
		 		document.getElementById('templateNameSearch6').style.display='none';
				document.getElementById('templateNameSearch7').style.display='none';
		 		document.getElementById('templateNameSearch8').style.display='none';
		 		document.getElementById('templateNameSearch9').style.display='none';
				document.getElementById('templateNameSearch10').style.display='none';
		 		document.getElementById('templateNameSearch11').style.display='none';
		 		document.getElementById('templateNameSearch12').style.display='none';
		 		document.getElementById('templateNameSearch13').style.display='none';
		 		document.getElementById('templateNameSearch14').style.display='none';
		 		document.getElementById('templateNameSearch15').style.display='none';
		 		document.getElementById('templateNameSearch16').style.display='none';
		 		document.getElementById('templateNameSearch17').style.display='none';
		 		document.getElementById('templateNameSearch19').style.display='none';
		 		document.getElementById('templateNameSearch20').style.display='none';
				}
				
				if(str1=="workshop_ms")
				{
				$('#templateNameSearch19').selectpicker({
		    	    style: 'btn-default', 
		    	    liveSearch:true, 
		    	    size: 4,
		    	    width:'auto'
		    	    
		    	    });
				$('#templateNameSearch19').selectpicker('show');
				
				document.getElementById('othrPartyNameSearch3').style.display='none';
				document.getElementById('templateNameSearch4').style.display='none';
		 		document.getElementById('templateNameSearch5').style.display='none';
		 		document.getElementById('templateNameSearch6').style.display='none';
				document.getElementById('templateNameSearch7').style.display='none';
		 		document.getElementById('templateNameSearch8').style.display='none';
		 		document.getElementById('templateNameSearch9').style.display='none';
				document.getElementById('templateNameSearch10').style.display='none';
		 		document.getElementById('templateNameSearch11').style.display='none';
		 		document.getElementById('templateNameSearch12').style.display='none';
		 		document.getElementById('templateNameSearch13').style.display='none';
		 		document.getElementById('templateNameSearch14').style.display='none';
		 		document.getElementById('templateNameSearch15').style.display='none';
		 		document.getElementById('templateNameSearch16').style.display='none';
		 		document.getElementById('templateNameSearch17').style.display='none';
		 		document.getElementById('templateNameSearch18').style.display='none';
		 		document.getElementById('templateNameSearch20').style.display='none';
				}
				
				if(str1=="as_rev_criteria")
				{
				$('#templateNameSearch20').selectpicker({
		    	    style: 'btn-default', 
		    	    liveSearch:true, 
		    	    size: 4,
		    	    width:'auto'
		    	    
		    	    });
				$('#templateNameSearch20').selectpicker('show');
				
				document.getElementById('othrPartyNameSearch3').style.display='none';
				document.getElementById('templateNameSearch4').style.display='none';
		 		document.getElementById('templateNameSearch5').style.display='none';
		 		document.getElementById('templateNameSearch6').style.display='none';
				document.getElementById('templateNameSearch7').style.display='none';
		 		document.getElementById('templateNameSearch8').style.display='none';
		 		document.getElementById('templateNameSearch9').style.display='none';
				document.getElementById('templateNameSearch10').style.display='none';
		 		document.getElementById('templateNameSearch11').style.display='none';
		 		document.getElementById('templateNameSearch12').style.display='none';
		 		document.getElementById('templateNameSearch13').style.display='none';
		 		document.getElementById('templateNameSearch14').style.display='none';
		 		document.getElementById('templateNameSearch15').style.display='none';
		 		document.getElementById('templateNameSearch16').style.display='none';
		 		document.getElementById('templateNameSearch17').style.display='none';
		 		document.getElementById('templateNameSearch18').style.display='none';
		 		document.getElementById('templateNameSearch19').style.display='none';
				}
								
				/*  dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit end */
				if(str1.indexOf(str2) != -1){
					 
					$( "#othrPartyNameSearch3").datepicker({format: "yyyy-mm-dd"}); 
				//	$( "#othrPartyNameSearch3").attr("data-provide","datepicker");
					
				}
				else {
           			 	 $("#othrPartyNameSearch3").datepicker('remove');
           			  
      				 }  
			 });			
			
			
			
			
			
			var bubbleSearch = [];
			$("#addButton").click(function() {
				
				//changes by kabhardw
				var value=$('#othrPartyNameSearch3').val();
				var str1 = $( "#templateNameSearch").val();
				if(str1=='Please select a value')
				{
				$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> Please Select a Question/Display Name.</div>").appendTo(".formerrors").trigger('showalert');
				return;
				}
				/* Added by Gaurav --condition for "category" and "geography" is added to ignore the value of text field in Advanced search*/				
				if(value.trim()=='' && !(str1=="map_req_status") && !(str1=="request_assigned_to") && !(str1=="FY") && !(str1=="quarter")&& !(str1=="category") && !(str1=="geos") && !(str1=="region")&& !(str1=="territory")&& !(str1=="cisco_entity")&& !(str1=="vertical")&& !(str1=="organization")&& !(str1=="signature execution type")&& !(str1=="currency")&& !(str1=="rating")&& !(str1=="sow_type")&& !(str1=="workshop_ms")&& !(str1=="as_rev_criteria"))
				{
					$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
					
					return;
				}
				 
				 if( (str1=="map_req_status") && ($('#templateNameSearch4 :selected').text()=="Please Select"))
				{
					$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
					console.log("inside this");
					return;
				} 
				 /* Added by Muttappa --return if assigned to not selected --start */
				 if( (str1=="request_assigned_to") && ($('#templateNameSearch5 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						console.log("inside this");
						return;
					} 
				 /* Added by Muttappa --return if assigned to not selected --end */
				 
				 
				 if( (str1=="FY") && ($('#templateNameSearch6 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						console.log("inside this");
						return;
					} 
				 		
				 if( (str1=="quarter") && ($('#templateNameSearch7 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						console.log("inside this");
						return;
					} 
					
				  /* Added by Gaurav --show error if "category" not selected to "Add"--start */
				 if( (str1=="category") && ($('#templateNameSearch8 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						return;
					} 
				 /* Added by Gaurav --show error if "category" not selected to "Add" --end */
				 /* Added by Gaurav --show error if "geography" not selected to "Add"--start */
				 if( (str1=="geos") && ($('#templateNameSearch9 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						//console.log("inside this");
						return;
					} 
				 /* Added by Gaurav --show error if "geography" not selected to "Add" --end */
				 
				  /*  dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit start */
					 		 	
				 
				  /*  dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit start */
				  if( (str1=="region") && ($('#templateNameSearch10 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						//console.log("inside this");
						return;
					} 
				 
				  if( (str1=="territory") && ($('#templateNameSearch11 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						//console.log("inside this");
						return;
					} 
				  
				  if( (str1=="cisco_entity") && ($('#templateNameSearch12 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						//console.log("inside this");
						return;
					} 
				  
				  if( (str1=="vertical") && ($('#templateNameSearch13 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						//console.log("inside this");
						return;
					} 
				  
				  if( (str1=="organization") && ($('#templateNameSearch14 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						//console.log("inside this");
						return;
					} 
				  
				  if( (str1=="signature execution type") && ($('#templateNameSearch15 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						//console.log("inside this");
						return;
					} 
				  
				  if( (str1=="currency") && ($('#templateNameSearch16 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						//console.log("inside this");
						return;
					} 
				  
				  if( (str1=="rating") && ($('#templateNameSearch17 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						//console.log("inside this");
						return;
					} 
				  
				  if( (str1=="sow_type") && ($('#templateNameSearch18 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						//console.log("inside this");
						return;
					} 
				  
				  if( (str1=="workshop_ms") && ($('#templateNameSearch19 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						//console.log("inside this");
						return;
					} 
				  				  				 
				  if( (str1=="as_rev_criteria") && ($('#templateNameSearch20 :selected').text()=="Please Select"))
					{
						$("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> please Enter a value for adding Search Criteria</div>").appendTo(".formerrors").trigger('showalert');
						//console.log("inside this");
						return;
					} 
				  /*  dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit end*/
				  
				var strTooltip=$('#templateNameSearch :selected').text();
				if(strTooltip.indexOf(' ') >= 0)
				{
				
					strTooltip1=strTooltip.replace(/ /g, '').replace(/([;&,\.\+\*?\~':"\!\^#$%@\[\]\(\)=>\|])/g, '');
				}
				else
				{
					/* strTooltip1=strTooltip.replace(/([;&,\.\+\*?\~':"\!\^#$%@\[\]\(\)=>\|])/g, ''); */
					strTooltip1=strTooltip;
				}
				if(bubbleSearch.indexOf(strTooltip1)==-1)
				{
					bubbleSearch[bubbleSearch.length]=strTooltip1;
				}
				else
				{
					var a = confirm("You have already added search criteria for "+strTooltip+".Do you want to replace?");
					if(a==false)
					{
					return;
					}
					else
					{
						$("#"+strTooltip1).remove();
					}
				}
				//alert(">>>>>>>>>"+$('#templateNameSearch :selected').text());
						 var str2 = "date";
						
				if(str1.indexOf(str2) != -1){
						var res = str1.split("<Date_Delimiter>");
						str1=res[0];
						} 
				if($('#templateNameSearch').val()=="map_req_status")
				{
					value=$('#templateNameSearch4').val();
				}
				var value1 = value;
				if($('#templateNameSearch').val()=="request_assigned_to")
				{
					value=$('#templateNameSearch5 :selected').text();
					value1 = $('#templateNameSearch5').val();
				}
							
				if($('#templateNameSearch').val()=="FY")
				{
					value=$('#templateNameSearch6 :selected').text();
					value1 = $('#templateNameSearch6').val();
				}
				
				if($('#templateNameSearch').val()=="quarter")
				{
					value=$('#templateNameSearch7 :selected').text();
					value1 = $('#templateNameSearch7').val();
				}
				
				/* Added by Gaurav --for "category" and "Geography" if trying to Add multiple values for same option --start */
				if($('#templateNameSearch').val()=="category")
				{
					value=$('#templateNameSearch8 :selected').text();
					value1 = $('#templateNameSearch8').val();
				}
				if($('#templateNameSearch').val()=="geos")
				{
					value=$('#templateNameSearch9 :selected').text();
					value1 = $('#templateNameSearch9').val();
				}
				/* Added by Gaurav --for "category" and "Geography" if trying to Add multiple values for same option --end */
				
				/*  dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit start */
				
				/*  dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit start */
				if($('#templateNameSearch').val()=="region")
				{
					value=$('#templateNameSearch10 :selected').text();
					value1 = $('#templateNameSearch10').val();
				}
				
				if($('#templateNameSearch').val()=="territory")
				{
					value=$('#templateNameSearch11 :selected').text();
					value1 = $('#templateNameSearch11').val();
				}
				
				if($('#templateNameSearch').val()=="cisco_entity")
				{
					value=$('#templateNameSearch12 :selected').text();
					value1 = $('#templateNameSearch12').val();
				}
				
				if($('#templateNameSearch').val()=="vertical")
				{
					value=$('#templateNameSearch13 :selected').text();
					value1 = $('#templateNameSearch13').val();
				}
				
				if($('#templateNameSearch').val()=="organization")
				{
					value=$('#templateNameSearch14 :selected').text();
					value1 = $('#templateNameSearch14').val();
				}
				
				if($('#templateNameSearch').val()=="signature execution type")
				{
					value=$('#templateNameSearch15 :selected').text();
					value1 = $('#templateNameSearch15').val();
				}
				
				
				if($('#templateNameSearch').val()=="currency")
				{
					value=$('#templateNameSearch16 :selected').text();
					value1 = $('#templateNameSearch16').val();
				}
				
				if($('#templateNameSearch').val()=="rating")
				{
					value=$('#templateNameSearch17 :selected').text();
					value1 = $('#templateNameSearch17').val();
				}
				
				if($('#templateNameSearch').val()=="sow_type")
				{
					value=$('#templateNameSearch18 :selected').text();
					value1 = $('#templateNameSearch18').val();
				}
				
				if($('#templateNameSearch').val()=="workshop_ms")
				{
					value=$('#templateNameSearch19 :selected').text();
					value1 = $('#templateNameSearch19').val();
				}
				
				
				if($('#templateNameSearch').val()=="as_rev_criteria")
				{
					value=$('#templateNameSearch20 :selected').text();
					value1 = $('#templateNameSearch20').val();
				}
				/*  dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit start */
				
				if(str1=='')
						{
							
							 $("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> Please Select a Question/Display Name.</div>").appendTo(".formerrors").trigger('showalert');
							return;
						}
						
		 if(value)
		 	{
		($("#test123")).after("<span style='font-size: 11px;margin-right:8px' class='tag2' id='"+strTooltip1+"' title='"+strTooltip+"'><img style='float:right;padding-left:5px;cursor: pointer' class='close-image' src=<%=request.getContextPath()%>/images/cls-smallest.png />"+value+"<span class='spanClass' style='display:none'>"+str1+"^"+value1+"</span></span>"); 

			$('#'+strTooltip1).tooltip(
				{	position: {
					my: "center bottom",
					at: "center top-10",
					collision: "none"
					}
				}
			);

		}
		else
		{
			
			 $("<div class='alert alert-error'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a><strong>Error!</strong> Please Enter a value for adding Search Criteria.</div>").appendTo(".formerrors").trigger('showalert');
		
			
		}

		});
			
			

			$("#hello2").on("click","img",function(event) {
				var removeId=$(this).closest('span').attr( "id" );
		for(var i = bubbleSearch.length - 1; i >= 0; i--) {
		    if(bubbleSearch[i] === removeId) {
		       bubbleSearch.splice(i, 1);
		    }
		}
		$('.tag2').tooltip( "destroy");
	    $(this).closest('span').remove();
	    
	});
			
			 $("#resetBtn").on("click",function(){
				 $.each($('.close-image'), function(index, value) {
					 var removeId=$(".close-image").closest('span').attr( "id" );
						for(var i = bubbleSearch.length - 1; i >= 0; i--) {
						    /* if(bubbleSearch[i] === removeId) {
						       bubbleSearch.splice(i, 1);
						    } */
							bubbleSearch[i]="";
						}
						$('.tag2').tooltip( "destroy");
					    $(".close-image").closest('span').remove();
					    
					});
				 
				 document.getElementById('othrPartyNameSearch3').style.display='block';
				 document.getElementById('templateNameSearch4').style.display='none';
				 document.getElementById('templateNameSearch6').style.display='none';
				 $('#templateNameSearch4').selectpicker('hide');
				 $('#templateNameSearch6').selectpicker('hide');
				 $('#templateNameSearch7').selectpicker('hide');
				 if(routeType1 == "3"){
					 
				 	document.getElementById('templateNameSearch5').style.display='none';
				 	$('#templateNameSearch5').selectpicker('hide');
					
					/* Added by Gaurav --to hide selected "category" and "Geography" if "reset" --start */
				 	document.getElementById('templateNameSearch8').style.display='none';
				 	$('#templateNameSearch8').selectpicker('hide');
				 	document.getElementById('templateNameSearch9').style.display='none';
				 	$('#templateNameSearch9').selectpicker('hide');
				 	/* Added by Gaurav --to hide selected "category" and "Geography" if "reset" --end */
					
				 	/*  dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit start */
				 	document.getElementById('templateNameSearch10').style.display='none';
				 	$('#templateNameSearch10').selectpicker('hide');
				 	
				 	document.getElementById('templateNameSearch11').style.display='none';
				 	$('#templateNameSearch11').selectpicker('hide');
				 	
				 	document.getElementById('templateNameSearch12').style.display='none';
				 	$('#templateNameSearch12').selectpicker('hide');
				 	
				 	document.getElementById('templateNameSearch13').style.display='none';
				 	$('#templateNameSearch13').selectpicker('hide');
				 	
				 	document.getElementById('templateNameSearch14').style.display='none';
				 	$('#templateNameSearch14').selectpicker('hide');
				 	
				 	document.getElementById('templateNameSearch15').style.display='none';
				 	$('#templateNameSearch15').selectpicker('hide');
				 	
				 	document.getElementById('templateNameSearch16').style.display='none';
				 	$('#templateNameSearch16').selectpicker('hide');
				 	
				 	document.getElementById('templateNameSearch17').style.display='none';
				 	$('#templateNameSearch17').selectpicker('hide');
				 	
				 	document.getElementById('templateNameSearch18').style.display='none';
				 	$('#templateNameSearch18').selectpicker('hide');
				 	
				 	document.getElementById('templateNameSearch19').style.display='none';
				 	$('#templateNameSearch19').selectpicker('hide');
				 	
				 	document.getElementById('templateNameSearch20').style.display='none';
				 	$('#templateNameSearch20').selectpicker('hide');
				 
				 	/*  dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit end */
				 }
												
			});
			 
			
			
			/* table starts */
			
			  function format ( d ) {
				/* var s=d[2];
				
				s = s.substring(s.indexOf("(") + 1);
				s = s.substring(0, s.indexOf(")"));

				
				var req_id=d[1];
				var req_details="http://wwwin-tools-dev.cisco.com/legal/lglmap/EditPartialRequest.do?flow=ReqMgmt&requestId='+req_id+'&templateId=1101&route=2&status=Active&createdBy=jhulgeri";
				 if(s=="ragurs")
				 {
				 	strRequest='<td></td>';
				 }
				 else
				 {
					 var strRequest='<td style="padding:5px"><a class="" title="Directory" target="_blank" HREF="http://wwwin-tools.cisco.com/dir/details/'+s+'"><img src=../images/theme_sprite_directory.png></img></a> </td><td style="padding:5px"><a class="" title="Mail" HREF="mailto:'+s+'@cisco.com"> <img src=../images/theme_sprite_msg.png></img></a></td>'+' <td style="padding:5px"><a HREF="xmpp:'+s+'@cisco.com" class="" title="Chat"> <img src=../images/theme_sprite_chat.png></img></a></td>';
				 } */
				 var strRequest='<td></td>';
				 /* if(userId==d.createdByName)
				 {
					 
				 	strRequest='<td></td>';
				 }
				 else
				 {
					
				     strRequest='<td style="padding:5px"><a class="glyph-icon" title="Directory" target="_blank" HREF="http://wwwin-tools.cisco.com/dir/details/'+d.createdByName+'"><i class="fa fa-user"></i></a></td><td style="padding:5px"><a class="glyph-icon" title="Mail" HREF="mailto:'+d.createdByName+'@cisco.com"><i class="fa fa-envelope"></i></a></td>'+'<td style="padding:5px"><a HREF="xmpp:'+d.createdByName+'@cisco.com" class="glyph-icon" title="Chat"><i class="fa fa-comment"></i></a></td>';
				    }    */ 
				    
				 if( (userId==d.createdByName) || (isSuperUser == "YES") || userId==d.assignedToID )		 // show the Request Details icon
					{	
		
					 
					 // `d` is the original data object for the row
					 return '<div class="wrap">'+
					 	'<table id="inner_table" cellpadding="5" cellspacing="0" border="0" style="display:inline-block;float:left;width:95%">'+
		 			    '<tbody>'+
					 	'<tr><td></td><td></td></tr><tr><td></td><td></td></tr>'+
		 			    d.MetaData+
		 			    '<tr><td></td><td></td></tr><tr><td></td><td></td></tr>'+
		 			    '</tbody>'+
						'</table>' +
						'<table id="inner_table" style="display:inline-block;float:right;" cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
						'<tr><td style="padding:5px"><a class="glyph-icon" title="Request Details" target="_blank"  HREF=<%=request.getContextPath()%>/EditPartialRequest.do?flow=ReqMgmt&requestId='+d.RequestIdHidden+'&templateId='+templateId1+'&route='+d.RouteType+'&status='+d.Status+'&createdBy='+d.createdByName+'><i class="fa fa-pencil-square-o"></i> </a></td>'+strRequest+'</tr>'+
						'</table>'+
						'</div>';
					
										
					}else{									// Dont show the Request Details icon

						// `d` is the original data object for the row
						return '<div class="wrap"><table id="inner_table" cellpadding="5" cellspacing="0" border="0" style="display:inline-block;float:left;width:95%">'+
						'<tbody>'+
						'<tr><td></td></tr><tr><td></td></tr>'+d.MetaData+'<tr><td></td></tr><tr><td></td></tr>'+
						'</tbody>'+
						'</table></div>' ;
				     }
				 
				 
				
				
 /* return '<div class="">'+' <table style="display:inline-block;float:left;width:70%"  cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;"><tr><td>Sample Table</td></tr></table>' +'  <table style="display:inline-block;float:right;" cellpadding="5"  cellspacing="0" border="0" style="padding-left:50px;">'+'  <tr><td style="padding:5px"><a class="" title="Request Details" target="_blank"  HREF="www.google.com">  <img src=../images/theme_sprite_edit.png></img>  </a></td>'+strRequest+'</tr>'+'</table></div>'; */ 
 			
 
 					
			}
			  
				 
					 
					/* var myJsonObj = getJson('http://localhost:8080/MyMAPTool/templateSearch.do?value=AjaxRequest&templateID=1382');
				alert(JSON.stringify(myJsonObj)); */
				
				 var table = $('#example').DataTable(  {
					 "bFilter" : false,
					
					  "language": {
					        "emptyTable":     customMessage,
					        "loadingRecords": "Loading...",
					        
					        "zeroRecords":    customMessage
					       
		   					 }, 
					
					/* "bFilter" : true,
					"sScrollX" : "100%",
					"sScrollXInner" : "100%", */
				//	"success": fnExpand,
					 "ajax": {
			 /* "async": false, */
		    "url": "<%=request.getContextPath()%>"+"/templateSearch.do?value=AjaxRequest&managerSearch=NO&templateID="+templateId1,
		    "data": function ( json ) {
		    
		      return json;
		    }
		  },  
		  
			
				  //changes by kabhardw
				  	"bScrollCollapse" : true,
					 "sPaginationType" : "full_numbers", 
					 "bProcessing": true,
				        "bServerSide": true,
					  /* "bDeferRender": true, */  //added by jhulgeri for MAP Phase 3.5 release 10/29/2014
					//changes by kabhardw 
					  "fnDrawCallback": function( oSettings ) {
						//alert("hello");
					
						serverside_expandall();
						$("#ProgressBarDiv").hide();
		        },  
					//"aaSorting": [[ 1, "desc" ]],
			   		  "aaSorting": [],
				
				        "aoColumns": [
				            {
				            	"class":          'glyphicon glyphicon-plus-sign',
				                "orderable":      false,
				                "data":           null,
				                "defaultContent": '',
								"sWidth":"2%"
								
				            },
				            {
								"bSortable" : true,
								 "data": "RequestId" 
							}, {
								"bSortable" : true,
								 "data": "createdByFullName" 
							},	{
								"bSortable" : true,
								 "data": "Status" ,
								 "sWidth":"14.5%"
						    },	{
						    	"iDataSort" : 8,
								"bVisible" : false,
								 "data": "LastModDate" 
							},	{
								"bSortable" : true,
							 	"data": "CreatedDate" 
							 	
							},{
								"bSortable" : true,
							 	"data": "EscalatedDate" 
							 	
							},{ "bVisible" :false, 
								"data": "HiddenEscalatedDate" 
							 	
							},{	"iDataSort":10,							
								"bVisible" :false,
								"data" :"HiddenApprovalDate",
								
							},{ "bVisible" : true,
								"bSortable" : true,
							    "data":"ApprovalDate",
							},{
								 "bVisible" : true,
								 "bSortable" : false,
								 "data": "AssignTo",
								 "sWidth":"30%"
							}, {
								"bVisible" : false,
							 	"data": "MetaData" 
							},{			
								"bVisible" : false,
								"data": "RequestIdHidden" 
							},
				           
				        ],
				       
		        "aoColumnDefs": [ {
		            "aTargets": [3],
		            "fnCreatedCell": function (nTd, sData, oData, iRow, iCol) {
		            	
		            	 if (sData =='Active' || sData == 'Work In Progress') {
			            	  
			                 $(nTd).wrapInner( "<div class='status-color cust-active'></div>");
			               }
			               
			               if (sData =='Partial' || sData == 'Unassigned' || sData == 'Pipeline') {
			             	  
			                   $(nTd).wrapInner( "<div class='status-color cust-partial'></div>");
			                 }
			               if (sData =='Inreview' || sData == 'Assigned') {
			             	  
			                   $(nTd).wrapInner( "<div class='status-color cust-inreview'></div>");
			                 }
			               if (sData =='Void' || sData == 'Pending' || sData == 'Pending-Client' || sData == 'Cancelled' || sData == 'Declined') {
			            	   
			                   $(nTd).wrapInner( "<div class='status-color cust-void '></div>");
			                 }
			               if (sData =='Completed' || sData == 'Approved' || sData == 'No Action Needed') {
			              	  
			                   $(nTd).wrapInner( "<div class='status-color cust-completed'></div>");
			                 }
		            	
		            }
		          } ]
				       
				       
				        
				    } );
				
				
				if(kioskName=="Expertise Locator"){
				
				var column = table.column( 3 );
				 
		        
		        column.visible( false );
		        
				var column = table.column( 1 );
				 
		        
		        column.visible( false );
				
				}
				
				if(kioskName=="Fax Master"){
					
					var column = table.column( 3 );
					 
			        column.visible( false );
					
				}
				//added by gaurav.....for generalising the changes made for CMT template to all route 3 templates
				//if(kioskName != "CMT - Review Management"){
				if(routeType1 != "3"){
				//added by gaurav.....for generalising the changes made for CMT template to all route 3 templates...end
					var column = table.column( 6 );
					var column1 = table.column( 9 );                      //Hide the approval date column in tempalte other than CMT-Lalit
					var column2 = table.column( 10);                      //Hide the assigned to column in template other than CMT-Lalit
			        column.visible( false );
			        column1.visible( false );
			        column2.visible( false );
					}
				
				else{
					var column3 = table.column( 5 );					 //Hide the created date column in CMT template-Lalit
					column3.visible( false );
				}
				
				$(".link_disabled").attr("title","No entries found. Please create a new entry");
				$(".link_disabled").css("text-decoration","none");
				$(".link_disabled").tooltip({	
					placement: 'left'
				});
				$(".link_disabled").css("color","#8c9093");
				$(".link_disabled").click(function (e){
					e.preventDefault();
				});
				
				//Reset button logic for Basic Search
				$("#resetBtn1").click( function(){
					 $("#basicSearchContent").val('');
				});

				//Reset button logic for Advanced Search
				$("#resetBtn").click( function(){

					 $("#othrPartyNameSearch3").val('');
					 $('#templateNameSearch').val('Please select a value');
					 $('#templateNameSearch').selectpicker('refresh');
					 //reset the bubbles as well
					 $('#hello2').find('span').remove();
					 bubbleSearch.splice(0,bubbleSearch.length);
					 
					 $("#othrPartyNameSearch3").show();
					 $("#templateNameSearch4").hide();
					 if(routeType1 == "3"){
					 	$("#templateNameSearch5").hide();
						/* Added by Gaurav --to hide selected "category" and "Geography" if "reset" --start */
					 	$("#templateNameSearch8").hide();
					 	$("#templateNameSearch9").hide();
					 	/* Added by Gaurav --to hide selected "category" and "Geography" if "reset" --end */
					    
					 	$("#templateNameSearch10").hide();
					 	$("#templateNameSearch11").hide();
					 	$("#templateNameSearch12").hide();
					 	$("#templateNameSearch13").hide();
					 	$("#templateNameSearch14").hide();
					 	$("#templateNameSearch15").hide();
					 	$("#templateNameSearch16").hide();
					 	$("#templateNameSearch17").hide();
					 	$("#templateNameSearch18").hide();
					 	$("#templateNameSearch19").hide();
					 	$("#templateNameSearch20").hide();
					 
					 }
					 $("#templateNameSearch6").hide();
					 $("#templateNameSearch7").hide();
					 $("#hello2").append("<span id='test123'></span>");
					 
				});
				
				
			     $('#templateNameSearch').selectpicker({
			    	    style: 'btn-default', 
			    	    liveSearch:true, 
			    	    size: 4,
			    	    width:'auto'
			    	    
			    	    });
				 /* sticky table header */
				/*   new $.fn.dataTable.FixedHeader( table );  */
				  /* sticky table header */
				
				 
				 $('#example_filter input').keyup(function(){
					 $('select[name=templateNameSearch4]').selectpicker('hide'); 
					 $('#templateNameSearch4').selectpicker('hide');
					 txt=this.value;
					 
				table.$('tr').each(function (i, row) {
			 	 	
	                var tr = $(this).closest('tr');
			    	var row =table.row(i);
			    	//row.child( format(row.data()));
			    	//row.data().highlight(a);
			    	 //table.$('tr').removeHighlight();
			    	// table.$('tr').highlight(a);
			    	//format(row.data()).highlight(a);
			    	 $('#example').removeHighlight();
			    	$('#example').highlight(txt); 
			    	 
		    });
				/* alert($("input[type='search']").val()); */
				 });
				 
				 var sflag=1;
				 function serverside_expandall()
				 {
							
			         if ( sflag==1 ) {
				        	/* $('#expandCollapseToggle').removeClass('hideHeader');
				        		$('#expandCollapseToggle').addClass('showheader'); */
				            // This row is already open - close it
				             table.$('tr').each(function (i, row) {
								d=null;
				                var tr = $(this).closest('tr');
						    	var row =table.row(i);
						    	row.child.hide();
						    	console.log("serverside expand inside flag 1");
				           		
				           		 tr.find('.glyphicon-minus-sign').removeClass('glyphicon-minus-sign').addClass('glyphicon-plus-sign');
				           		$("#expandcollapsetext").text('Expand All');  
						    	 
					    });  
				        }
				        else {
				        		/* $('#expandCollapseToggle').removeClass('showheader');
				        		$('#expandCollapseToggle').addClass('hideHeader'); */
				        		console.log("serverside expand inside flag 0");
				        		table.$('tr').each(function (i, row) {
								d=null;
				                var tr = $(this).closest('tr');
						    	var row =table.row(i);
						    	if(row.data()!=null)
						    	row.child(format(row.data())).show();
						    	if(i%2==0)
						    	row.child().addClass("child-row-wrapper-even");
						    	else
						    		row.child().addClass("child-row-wrapper-odd");
						    	
						    	 tr.find('.glyphicon-plus-sign').removeClass('glyphicon-plus-sign').addClass('glyphicon-minus-sign');
						    	 $("#expandcollapsetext").text('Collapse All');  
						    	 
					    });  
				        }
			         
				 }
				
				
				 /* Expand All collpase all*/
				 
				 /* flag 1 ->expanded state */
				 var flag=0;
				 function expandall()
				 {
							
			         if ( flag==1 ) {
				        	/* $('#expandCollapseToggle').removeClass('hideHeader');
				        		$('#expandCollapseToggle').addClass('showheader'); */
				            // This row is already open - close it
				             table.$('tr').each(function (i, row) {
								d=null;
				                var tr = $(this).closest('tr');
						    	var row =table.row(i);
						    	row.child.hide();
						    	
				           		flag=0;
				           		 tr.find('.glyphicon-minus-sign').removeClass('glyphicon-minus-sign').addClass('glyphicon-plus-sign');
				           		$("#expandcollapsetext").text('Expand All');  
						    	 
					    });  
				        }
				        else {
				        		/* $('#expandCollapseToggle').removeClass('showheader');
				        		$('#expandCollapseToggle').addClass('hideHeader'); */
				        		table.$('tr').each(function (i, row) {
								d=null;
				                var tr = $(this).closest('tr');
						    	var row =table.row(i);
						    	if(row.data()!=null)
						    	row.child(format(row.data())).show();
						    	if(i%2==0)
						    	row.child().addClass("child-row-wrapper-even");
						    	else
						    		row.child().addClass("child-row-wrapper-odd");
						    	flag=1;
						    	 tr.find('.glyphicon-plus-sign').removeClass('glyphicon-plus-sign').addClass('glyphicon-minus-sign');
						    	 $("#expandcollapsetext").text('Collapse All');  
						    	 
					    });  
				        }
			         
				 }
				 $("input[type='search']").focus(function(event){
					  $('tr').find('#expandcollapsetext').text("Collapse All");
						  flag=0; 
					 expandall();
					 });
				
				 
				 
				 $('#example thead').on('click', '.expand-collapse-toggle', function () {
					 expandall();
					 if($('tr').find('#expandcollapsetext').text()==("Collapse All")){
						 sflag=0;
					 }
					 if($('tr').find('#expandcollapsetext').text()==("Expand All")){
						 sflag=1;
					 }
				 } );	 
					/*  $('tr').find('#expandcollapsetext').text("Collapse All");
					 flag=1;
					 $(this).addClass("expanded"); */
					/*  table.$('tr').each(function (i, row) {
                         d=null;
              var tr = $(this).closest('tr');
                   var row =table.row(i);
                   if(row.data()!=null)
                   row.child(format(row.data())).show();
                                     
                                     
         });  */
        
        /*  $('tr').find('.glyphicon-plus-sign').removeClass('glyphicon-plus-sign').addClass('glyphicon-minus-sign'); */
			
		 
				 /* expand all collpase all end */
				 
					if(searchVisibility=="EXPAND")
					{
					 	expandall();
					 	sflag=0;
					 	flag=1;
					 	
						
					} 
				 
				
				 
				 /* Expand Collapse for each row */
			  $('#example tbody').on('click', 'td.glyphicon-plus-sign', function () {
				        var tr = $(this).closest('tr');
				        var row = table.row( tr );
				 		$(tr).addClass('tr-selected');
				       /*  if ( row.child.isShown() ) {
				            // This row is already open - close it
				            row.child.hide();
				            row.child().removeClass("child-row-wrapper");
				            tr.find('.glyphicon-minus-sign').removeClass('glyphicon-minus-sign').addClass('glyphicon-plus-sign');
				            //tr.addClass('glyphicon-plus');
				        }
				        else { */
				            // Open this row
				             
				            row.child( format(row.data()) ).show();
				        	if($(tr).hasClass("even"))
			            	 row.child().addClass("child-row-wrapper-even");
				        	else
				        		row.child().addClass("child-row-wrapper-odd");
				        	tr.find('.glyphicon-plus-sign').removeClass('glyphicon-plus-sign').addClass('glyphicon-minus-sign');
				            //tr.addClass('glyphicon-plus');
				        /* }  */
				    } );
			  
				 
			  $('#example tbody').on('click', '.btn-primary', function () {

				  //console.log('access through class >>>>>>>>>>>>>>>####');
				  //console.log('id is '+this.id);
				  var tr  = $(this).closest('td');
				  var requestId = this.id;
				  var assignToValName = tr.find('#caseReviewers'+requestId).text();
				  var assignToVal = tr.find('#caseReviewers'+requestId).attr('usrId');
				  console.log('update request Id :'+requestId+' Assign to >> : '+assignToVal );
				  if(assignToValName == 'Assign To ')
					{
						console.log('please select a assign to');
						$("<div class='alert alert-warning'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a>"+"Please select a user to whom the request needs to be assigned."+"</div>").appendTo(".formerrors").trigger('showalert');
						return false;
					}
				  
				  //ajax call
				  //$("#ProgressBarDiv").show();
					
					$.ajax({
			                url: "<%=request.getContextPath()%>/updateMAPRequestStatus.do?mapRequestId="+requestId+"&mapRequestStatus=NO_CASE_STATUS_UPDATE&loggedInUser=<%=request.getRemoteUser()%>&assignedTo="+assignToVal,
			                cache: false,
			                contentType: false,
			                processData: false,
			                type: 'post',
			                success: function(data){
									console.log('ajax call success'); 
			                		//$("#statusField").html(caseStatus);
									 $("<div class='alert alert-success'><a href='#' class='close' style='right:0px' data-dismiss='alert'>&times;</a>"+"The request# "+requestId+" is now assigned to "+assignToValName+"</div>").appendTo(".formerrors").trigger('showalert');
									 //$("#ProgressBarDiv").hide();
									 //$("#dropdown-toggleforCaseStatus").html('Status <span class="caret"></span>');
									 $("#caseReviewers"+requestId).html(assignToValName +'<span class=\"caret\"></span>');
									 $('#caseReviewers'+requestId).attr('usrId','');
									 //$("#LglRvwExistingComments").html(data);
									 $('#example').DataTable().ajax.reload(); 
									 
			                }
			      		 });
			  }); 
			  
		      $('#example tbody').on('click', '.dropdown-menu li a', function (e) {			   
		    	  	var selTextDisplayValue = $(this).text();
		    	  	var selText = $(this).attr('userId');
					console.log('Drop Down value : '+selText);
					var reqId= $(this).closest('ul').attr('reqId');
					console.log('reqid > '+reqId);
				    $(this).parents('#dropdownforLR'+reqId).find('.dropdown-toggle').html(selTextDisplayValue+' <span class="caret"></span>');
				    $("#caseReviewers"+reqId).attr('usrId',selText);
				    console.log('..>>> '+$("#caseReviewers"+reqId).attr('usrId'));
				    
				    
				    
				});  
				 
			  $('#example tbody').on('click', 'td.glyphicon-minus-sign', function () {
			        var tr = $(this).closest('tr');
			        var row = table.row( tr );
			        $(tr).removeClass('tr-selected');
				       
			        if ( row.child.isShown() ) {
			            // This row is already open - close it
			            row.child.hide();
			            
			            tr.find('.glyphicon-minus-sign').removeClass('glyphicon-minus-sign').addClass('glyphicon-plus-sign');
			            //tr.addClass('glyphicon-plus');
			        }
			        
			    } );
			  
			   /* table ends */
			 $('.expand-collapse-toggle').removeClass('glyphicon glyphicon-plus-sign');
				
			   
			 /* basic and Adv Search */
				$("#searchBtn1").on("click",function() {
					   fnSubmit1();
					   
					   });
			 
				 $("#searchBtn").click(function() {
					   fnSubmit();
					  
					   });
				
				 function fnSubmit1()
					{
						   var templateId2="<%=(String)request.getAttribute("templateId")%>";
						   var ques1=$('#basicSearchQuest').val();
						   var search1=$('#basicSearchContent').val();
						   if(search1.trim()=='')
						{
							alert("please Enter a value for performing Basic Search");
							return;
						}
						   var ids1=ques1+"^"+search1+"|"+"map_req_status^BASIC"+"|";
						   //alert("ids is"+ids);
						   if(ids1.length<1)
						   {
								  alert("Please add search criteria for search");
								  return;
						   }
						   var manager_search = "NO";
						   if (document.getElementById("ManagerSearch").checked){
							   
							   
							   manager_search="YES";
						   }
						 
						   var urlencoding=escape(ids1);
						   $("#ProgressBarDiv").show();
						   if(searchVisibility=="EXPAND")
							{
							 	
							 	sflag=0;
							 	flag=1;
							 	
								
							} 
						   table.ajax.url("<%=request.getContextPath()%>"+"/searchResult.do?searchKeyValuePair="+urlencoding+"&templateID="+templateId2+"&managerSearch="+manager_search).load();
						   /* $('tr').find('#expandcollapsetext').text("Collapse All");
							  flag=0; 
						   expandall();  */  
					}
				 
				function fnSubmit(){
					 var templateId2="<%=(String)request.getAttribute("templateId")%>";
					
					   var ids="";
					   $('.spanClass').each(
						   function(index){  
						   ids=ids+$(this).html()+'|';
						  // alert("ids is >>>>>>>>>>>>>>>>>>"+ids);
							//   alert($(this).html());
						   }
					   );
					   //alert("ids is"+ids);
					   if(ids.length<1)
					   {
							  alert("Please add search criteria for search");
							  return;
					   }
					   var manager_search = "NO";
					   if (document.getElementById("ManagerSearch").checked){
						  
						   manager_search="YES";
					   }
					 
					   var urlencoding=escape(ids);
					   $("#ProgressBarDiv").show();
					   if(searchVisibility=="EXPAND")
						{
						 	
						 	sflag=0;
						 	flag=1;
						 	
							
						} 
					   table.ajax.url("<%=request.getContextPath()%>"+"/searchResult.do?searchKeyValuePair="+urlencoding+"&templateID="+templateId2+"&managerSearch="+manager_search).load();
					   
					   /* $('tr').find('#expandcollapsetext').text("Collapse All");
						  flag=0; 
						  
					   expandall(); */
					   					
				}
			   			   
			});	
			
			/* For error Automatic hide */
			$(document).on('showalert', '.alert', function(){
	        window.setTimeout($.proxy(function() {
	        	
	            $(this).fadeTo(500, 0).slideUp(500, function(){
	                $(this).remove(); 
	            });
	        }, this), 3000);
	    }); 
			/* For error Automatic hide end */
			
			
			
		
		</script>
		
</head>
<body>
<div style="padding-bottom: 5px;">
			<div class="btn btn-primary active page-banner">
				<div class="cec-logo-container">
					
						<img src="<%=request.getContextPath()%>/images/cisco-logo-white.png" class="cec-logo" alt="CEC_LOGO" />
					
				</div>
				<div class="page-info">
					
					<div class="page-title"><%=request.getAttribute("kioskName")%> </div>
					
		 			<!-- <div class="login-user-info">Logged in: Raghava Urs (ragurs)</div> -->
		 			<%
 String userRoleFromSession =  (String)session.getAttribute("userRole") ;
 
 if(userRoleFromSession != null){
	 
	 if(userRoleFromSession.equalsIgnoreCase("Administrator") || userRoleFromSession.equalsIgnoreCase("Legal Internal"))
	 {
		 %>
		  <div class="login-user-info" style="font-size:11px;" id="org-title"> Logged in :&nbsp;<%=request.getRemoteUser()%>&nbsp;(<%=session.getAttribute("userRole") %>)</div>
		 <%
	 }
	 else
	 {
		 %>
		  <div class="login-user-info" style="font-size:11px;" id="org-title"> Logged in :&nbsp;<%=request.getRemoteUser()%></div>
		 <%
	 }
	 
 }else{
		 %>
		  <div class="login-user-info" style="font-size:11px;" id="org-title"> Logged in :&nbsp;<%=request.getRemoteUser()%></div>
		 <%
 }
 %>
		 			
			</div>
			</div>
</div>
<!-- <div class="well well-lg" style="padding:1%;margin-bottom:1%">
<div class="well-body" style="font-size: 12px;">
 <p>Legal Technology Solutions has in place several tools that provide foundational capabilities for the automated processes that support Legal Services.  They include ContractExpress (document assembly), Click Accept (electronic signatures), VAP (internal approvals), and ECLM (contract storage and management).  The individual components are powerful but the integration between them is minimal and generally has only been implemented on a tactical basis, for example NDA Central binds together ContractExpress and ClickAccept in a custom one-off tool. 
<p>The Contract Creation Framework project is planned as a phased release of interfaces to pull together the foundational tools and introduce strategic enhancements to make the tools more useful individually and in coordination with each other.  The business requirements in this document specify the first phase of the Contract Creation Framework which centers on an integration ContractExpress and Click Accept and, secondarily, an integration between ContractExpress and e-mail.   
 </div>


</div> -->
<div class="formerrors" id="formCompleteErrors" ></div>
<!-- Body Section starts here -->
<div class="body-section">
<table id="mytable">
<tr> <td> <label style="margin-bottom: 0px;"><input value="ManagerSearch" name="ManagerSearch" id="ManagerSearch" type="checkbox"><span style="vertical-align: sub; font-size: 13px; padding-top: 12px; padding-right: 20px; width: 155px; color:#428bca; font-weight: normal; text-decoration: none;"> Manager's Search</span>
</label></td><td><div>
<% String host = System.getProperty("cisco.life");%>

	<% String kioskName1 = (String)request.getAttribute("kioskName");
	   String routeType2 = (String)request.getAttribute("routeType1");
	
		if(host==null){//TEST THIS POP UP WINDOW CLOSE FUNCTIONALITY AND BROWSER BACK
		%><a style="padding-top: 10px; padding-right: 5px;" id="create_entry" target="_blank" href="http://localhost:8080/MAP_Phase4ReleaseFinal/templateKiosk.do?tempalateId=<%=(String)request.getAttribute("templateId")%>">Create Entry</a>	
		<%
		}
		else if (host.equalsIgnoreCase("dev")) {
		%><a style="padding-top: 10px; padding-right: 5px;" id="create_entry" target="_blank" href="http://wwwin-tools-dev.cisco.com/legal/lglmap/templateKiosk.do?tempalateId=<%=(String)request.getAttribute("templateId")%>">Create Entry</a>	
		<%
		}
		else if (host.equalsIgnoreCase("stage")) {
		%><a style="padding-top: 10px; padding-right: 5px;" id="create_entry" target="_blank" href="http://wwwin-tools-stage.cisco.com/legal/lglmap/templateKiosk.do?tempalateId=<%=(String)request.getAttribute("templateId")%>">Create Entry</a>	
		<%
		}
		else if (host.equalsIgnoreCase("prod")) {
		%><a style="padding-top: 10px; padding-right: 5px;" id="create_entry" target="_blank" href="http://wwwin-tools.cisco.com/legal/lglmap/templateKiosk.do?tempalateId=<%=(String)request.getAttribute("templateId")%>">Create Entry</a>	
		<%
		}
		String maxReqID = (String)request.getAttribute("maxReqID");
		if(kioskName1.equalsIgnoreCase("Expertise Locator"))
		{
			if(!(maxReqID.equalsIgnoreCase("NO_REC_FOUND"))){	
			if(host==null){//TEST THIS POP UP WINDOW CLOSE FUNCTIONALITY AND BROWSER BACK
				%><a style="padding-top: 10px; padding-right: 20px;" id="edit_entry" target="_blank" href="http://localhost:8080/MAP_Phase4ReleaseFinal/EditPartialRequest.do?flow=ReqMgmt&requestId=<%=(String)request.getAttribute("maxReqID")%>&templateId=<%=(String)request.getAttribute("templateId")%>">Edit Entry</a>	
				<%
				}
				else if (host.equalsIgnoreCase("dev")) {
					%><a style="padding-top: 10px; padding-right: 20px;" id="edit_entry" target="_blank" href="http://wwwin-tools-dev.cisco.com/legal/lglmap/EditPartialRequest.do?flow=ReqMgmt&requestId=<%=(String)request.getAttribute("maxReqID")%>&templateId=<%=(String)request.getAttribute("templateId")%>">Edit Entry</a>
				<%
				}
				else if (host.equalsIgnoreCase("stage")) {
				%><a style="padding-top: 10px; padding-right: 20px;" id="edit_entry" target="_blank" href="http://wwwin-tools-stage.cisco.com/legal/lglmap/EditPartialRequest.do?flow=ReqMgmt&requestId=<%=(String)request.getAttribute("maxReqID")%>&templateId=<%=(String)request.getAttribute("templateId")%>">Edit Entry</a>
				<%
				}
				else if (host.equalsIgnoreCase("prod")) {
				%><a style="padding-top: 10px; padding-right: 20px;" id="edit_entry" target="_blank" href="http://wwwin-tools.cisco.com/legal/lglmap/EditPartialRequest.do?flow=ReqMgmt&requestId=<%=(String)request.getAttribute("maxReqID")%>&templateId=<%=(String)request.getAttribute("templateId")%>">Edit Entry</a>
				<%
				}
			}
			else{
				if(host==null){//TEST THIS POP UP WINDOW CLOSE FUNCTIONALITY AND BROWSER BACK
					%><a style="padding-top: 10px; padding-right: 20px;" id="edit_entry"  class="link_disabled" href="">Edit Entry</a>	
					<%
					}
					else if (host.equalsIgnoreCase("dev")) {
						%><a style="padding-top: 10px; padding-right: 20px;" id="edit_entry" class="link_disabled" href="">Edit Entry</a>
					<%
					}
					else if (host.equalsIgnoreCase("stage")) {
					%><a style="padding-top: 10px; padding-right: 20px;" id="edit_entry" class="link_disabled" href="">Edit Entry</a>
					<%
					}
					else if (host.equalsIgnoreCase("prod")) {
					%><a style="padding-top: 10px; padding-right: 20px;" id="edit_entry" class="link_disabled" href="">Edit Entry</a>
					<%
					}
				
			}

		}
		%>
	</div> </td>
	<% if(routeType2.equalsIgnoreCase("3")){
	%>	
	<td>
	<%  
		if(host==null){//TEST THIS POP UP WINDOW CLOSE FUNCTIONALITY AND BROWSER BACK
		%>	<a style="padding-top: 10px; padding-right: 5px; padding-left: 15px;" id="reports_link" target="_blank" href="https://dev-tableau.cisco.com/t/LegalTechnologySolutions/views/CMTReports/GeoDashBoard?:embed=y&:display_count=no">Reports</a>	
		<%
		}
		else if (host.equalsIgnoreCase("dev")) {
		%>	<a style="padding-top: 10px; padding-right: 5px; padding-left: 15px;" id="reports_link" target="_blank" href="https://dev-tableau.cisco.com/t/LegalTechnologySolutions/views/CMTReports/GeoDashBoard?:embed=y&:display_count=no">Reports</a>	
		<%
		}
		else if (host.equalsIgnoreCase("stage")) {
		%>	<a style="padding-top: 10px; padding-right: 5px; padding-left: 15px;" id="reports_link" target="_blank" href="https://stg-tableau.cisco.com/t/LegalTechnologySolutions/views/CMTReports/GeoDashBoard?:embed=y&:display_count=no#1">Reports</a>	
		<%
		}
		else if (host.equalsIgnoreCase("prod")) {
		%>	<a style="padding-top: 10px; padding-right: 5px; padding-left: 15px;" id="reports_link" target="_blank" href="https://tableau.cisco.com/t/LegalTechnologySolutions/views/CMTReports/GeoDashBoard?:embed=y&:showShareOptions=true&:display_count=no">Reports</a>	
		<%
		}
	%>
	</td>
	<%}
	%>
	 </tr>
	</table>
	

    <ul class="nav nav-tabs" id="myTab">

        <li class="active"><a href="#basic-wrapper-tab" data-toggle="tab"><span class="glyphicon glyphicon-search"></span>  Basic Search</a></li>

        <li><a href="#advance-wrapper-tab"data-toggle="tab"><span class="glyphicon glyphicon-search"></span> Advanced Search</a></li>

        

    </ul>

<!-- <div class="tab-content">
   <div id="home" class="tab-pane active">
     <p>Home</p>
   </div>
   <div id="other" class="tab-pane">
     <p>Other</p>
   </div>
</div>
 -->
 <div id="ProgressBarDiv" class="overlay" >
  <div class="loader">
	  <span >L</span>
	  <span >O</span>
	  <span >A</span>
	  <span>D</span>
	  <span>I</span>
	  <span>N</span>
	  <span>G</span>
  </div>
	<!-- <div style="float:left;margin:6px 6px 6px 6px;padding:10px 0px 10px 10px;
	font-family:Verdana,Helvetica,Arial;font-size:12pt;font-weight:bold;color:#FFFFFF;
	background-color:#000000;" id="ProgressBarMsg">
	&nbsp;&nbsp;&nbsp;Loading.....&nbsp;&nbsp;&nbsp;
	</div> -->
</div>
 
 <%! 
String basicSearchtype=null;
%>

<div id="parentAccordion" class="" >
<div class="tab-content">
<div id="basic-wrapper-tab" class="tab-pane active">
			<!-- <div class="panel panel-default">
				<div class="panel-heading" > data-toggle="collapse"  data-target="#firstChildAccordion" data-parent="#parentAccordion" 
					<h4 class="panel-title">
					<i title="Expand" class="fa fa-angle-down"></i>
						<span><b>Basic Search</b></span>
					</h4>
				</div>
				<div id="firstChildAccordion" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="panel-body"> -->
						<div>
						<div style="width:auto">
						<%
   
					  if(!(((String)request.getAttribute("basicSearchQuestion")).equalsIgnoreCase("NoQuestionSelected"))){
					  	String basicSearchQuestion=(String)request.getAttribute("basicSearchQuestion");
					  	String basicSearchQuestionDisplay=null;
					  	
					  	List<TemplateQuestions> list = (List<TemplateQuestions>) request.getAttribute("templateQuestionsList");
										if(list!=null)
										{		
									for (TemplateQuestions s1 : list) {
									String questionName=null;
									if(s1.getQuestionName().equalsIgnoreCase(basicSearchQuestion))
									{
									   basicSearchQuestionDisplay=s1.getDisplayName();
										if(s1.getQuestionType().equalsIgnoreCase("Date"))
										{
											 basicSearchtype="date";
										}
										else
										{
										   basicSearchtype="text";
										}
										
									}
									}
									}
  
  	
 %>
								<div style="width:100%;float:left;margin-bottom: 1px;" class="panel-group">
								<table cellpadding="10" style="display:inline-block;padding-left:10px;" >
								<tr>
									<td  style="padding-right:10px">  
									<input type="hidden" value="<%=basicSearchQuestion %>" id="basicSearchQuest"/>  
									<span><%=basicSearchQuestionDisplay %></span>
									</td>
									<td style="padding-right:10px">
											<input type="text" id="basicSearchContent" name="basicSearch4"  style="float-left:10px;" >
									</td>
									</tr>
									<tr>
									<td  style="padding-right:10px;padding-top:15px">
                                            <input type="button" value="Reset" id="resetBtn1" class="btn btn-primary btn-sm" >
											<input type="button" id="searchBtn1" value="Search" class="btn btn-primary btn-sm" style="margin-left:12px"/>
											  
									</td>							
								</tr>	
								
								</table>
							</div>
							<%
							  }
							%>
							</div> 
							<!-- <table id="hello1" cellpadding="10" style="display:inline-block;align:center">
								<tr>
								<td colspan="2" align="center">
									
										<input type="button" value="Reset" id="resetBtn" onclick="window.location='templateSearch.do?templateId='+<%=(String)request.getAttribute("templateId")%>">
										<input type="submit" value="Search" id="searchBtn" onclick="fnSubmit()">
									</td>
									</tr>
							</table> -->
							
								
		</div>
					<!-- </div>
					</div>
				</div>
			</div> -->
			</div>
			 <div id="advance-wrapper-tab" class="tab-pane">
			<!--<div class="panel panel-default">
				<div class="panel-heading" > data-toggle="collapse" data-target="#secondChildAccordion" data-parent="#firstChildAccordion" >
					<h4 class="panel-title">
					<i title="Expand" class="fa fa-angle-right"></i>
						<span><b>Advanced Search</b></span>
					</h4>
				</div>
				<div id="secondChildAccordion" class="panel-collapse collapse in">
					<div class="panel-body"> -->
						<div>
						<div style="width:auto">
						<form action="#">
								<div style="width:100%;float:left;margin-bottom: -1px;" class="panel-group">
								<table cellpadding="10" style="display:inline-block;padding-left:10px;" >
								<tr>
									<td  style="padding-right:10px">  
									 <select name="templateNameSearch" id="templateNameSearch" style="width:auto" >
													<%
										List<TemplateQuestions> list1 = (List<TemplateQuestions>) request.getAttribute("templateQuestionsList");
										
										HashMap<String, String> TQuestions = new HashMap<String, String>();
										if(list1!=null)
										{
											out.println("<option value='Please select a value'>Please select a value</option>");		
											for (TemplateQuestions s : list1) {
												String questionName=null;
												if(s.getQuestionType().equalsIgnoreCase("Date"))
												{
										 			questionName = s.getQuestionName()+"<Date_Delimiter>"+"date";
												}
												else
												{
													questionName=s.getQuestionName();
												}
												
												TQuestions.put(s.getDisplayName(),questionName);

												//out.println("<option value=\""+questionName+"\" >" + s.getDisplayName() + "</option>");
											}
										
									
									TQuestions.put("Status","map_req_status");
									
									//out.println("<option value='map_req_status' >Status</option>");
									if(routeType2.equalsIgnoreCase("3"))
									{
										TQuestions.put("Assigned To","request_assigned_to");
										//out.println("<option value='request_assigned_to' >assigned To</option>");
										TQuestions.put("Fiscal Year","FY");
										
									}	
									
									}
									//Added by muttappa to sort the dropdown values alphabetically	
									ArrayList <String> keys = new ArrayList<String>(TQuestions.keySet());									        
									Collections.sort(keys,String.CASE_INSENSITIVE_ORDER);									 
									Iterator<String> iterator2 = keys.iterator();
							        while(iterator2.hasNext()) {							            
							             String question1=iterator2.next();							             
							             out.println("<option value='"+(String)TQuestions.get(question1)+"' >"+question1+"</option>");
							        }
										
										%>
											</select>
									</td>
									
									<% 
									//added by gaurav.....for generalising the changes made for CMT template to all route 3 templates
									//System.out.println(">> is it CMT : "+kioskName1+" >> "+kioskName1.equalsIgnoreCase("CMT - Review Management"));
									//if(kioskName1.equalsIgnoreCase("CMT - Review Management"))
										
									System.out.println(">> is it Route 3 : "+routeType2+" >> "+routeType2.equalsIgnoreCase("3"));
									if(routeType2.equalsIgnoreCase("3"))
									//added by gaurav.....for generalising the changes made for CMT template to all route 3 templates...end
									{ %>
									<td style="padding-right:10px">
											<input type="text" id="othrPartyNameSearch3" name="othrPartyNameSearch3" style="float-left:10px" >
											<select id="templateNameSearch4" name="templateNameSearch4"  size=1 style="display:none;height:30px">
													<option value="">Please Select</option>
													<option selected value="Unassigned" >Unassigned</option>
													<option value="Approved" >Approved</option>
													<option value="Assigned" >Assigned</option>
													<option value="Cancelled" >Cancelled</option>
													<option value="No Action Needed" >No Action Needed</option>
													<option value="Pending" >Pending</option>
													<option value="Pending-Client" >Pending-Client</option>
													<option value="Pipeline" >Pipeline</option>									
													<option value="Work In Progress" >Work In Progress</option>													
													<option value="All Statuses" >All</option>
											</select>
											<!-- Added by Muttappa --To display drop down for Assigned To option in Advanced search --start   --> 
											<select id="templateNameSearch5" name="templateNameSearch5"  size=1 style="display:none;height:30px">
												<option value="">Please Select</option>
											<%												
												out.println(request.getAttribute("assignedToDropDownValues"));
											%>
											</select>
											<!-- Added by Muttappa --To display drop down for Assigned To option in Advanced search --end   -->
									
									
									        <select id="templateNameSearch6" name="templateNameSearch6"  size=1 style="display:none;height:30px">
												<option value="">Please Select</option>
											<%												
												out.println(request.getAttribute("financialyear"));
											%>
											</select> 
											
										<!-- dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit start -->
											
											<select id="templateNameSearch10" name="templateNameSearch10"  size=1 style="display:none;height:30px">
												<option value="">Please Select</option>
											<%												
												out.println(request.getAttribute("regionDropDownValues"));
											%>
											</select>
											
										    <select id="templateNameSearch11" name="templateNameSearch11"  size=1 style="display:none;height:30px">
												<option value="">Please Select</option>
											<%												
												out.println(request.getAttribute("territoryDropDownValues"));
											%>
											</select>
											
											<select id="templateNameSearch12" name="templateNameSearch12"  size=1 style="display:none;height:30px">
												<option value="">Please Select</option>
											<%												
												out.println(request.getAttribute("ciscoEntityDropDownValues"));
											%>
											</select>
											
											<select id="templateNameSearch13" name="templateNameSearch13"  size=1 style="display:none;height:30px">
												<option value="">Please Select</option>
											<%												
												out.println(request.getAttribute("verticalDropDownValues"));
											%>
											</select>
											
											<select id="templateNameSearch14" name="templateNameSearch14"  size=1 style="display:none;height:30px">
												<option value="">Please Select</option>
											<%												
												out.println(request.getAttribute("organisatioDropDownValues"));
											%>
											</select>
											
											
											<select id="templateNameSearch15" name="templateNameSearch15"  size=1 style="display:none;height:30px">
												<option value="">Please Select</option>
											<%												
												out.println(request.getAttribute("signatureExecutionTypeDropDownValues"));
											%>
											</select>
											
											<select id="templateNameSearch16" name="templateNameSearch16"  size=1 style="display:none;height:30px">
												<option value="">Please Select</option>
											<%												
												out.println(request.getAttribute("localcurrencyDropDownValues"));
											%>
											</select>
											
											<select id="templateNameSearch17" name="templateNameSearch17"  size=1 style="display:none;height:30px">
												<option value="">Please Select</option>
											<%												
												out.println(request.getAttribute("ratingDropDownValues"));
											%>
											</select>
											
											<select id="templateNameSearch18" name="templateNameSearch18"  size=1 style="display:none;height:30px">
												<option value="">Please Select</option>
											<%												
												out.println(request.getAttribute("sowTypeDropDownValues"));
											%>
											</select>
											
											<select id="templateNameSearch19" name="templateNameSearch19"  size=1 style="display:none;height:30px">
												<option value="">Please Select</option>
											<%												
												out.println(request.getAttribute("workshopMSDropDownValues"));
											%>
											</select>
											
											<select id="templateNameSearch20" name="templateNameSearch20"  size=1 style="display:none;height:30px">
												<option value="">Please Select</option>
											<%												
												out.println(request.getAttribute("asRevCriteriaDropDownValues"));
											%>
											</select>
											
								<!-- dropdown changes for Region,Territory,cisco Entity,vertical,organisation,signature execution Type,local currency,rating,sow type,workshop MS,As rev criteria lalit end -->
											
											<select id="templateNameSearch7" name="templateNameSearch7"  size=1 style="display:none;height:30px">
													<option value="">Please Select</option>
													<option value="Q1">Q1</option>
													<option value="Q2">Q2</option>
													<option value="Q3">Q3</option>
													<option value="Q4">Q4</option>
									     	</select>
										
											<!-- Added by Gaurav --To display dropdown for Category in Advanced search --start   --> 
											<select id="templateNameSearch8" name="templateNameSearch8"  size=1 style="display:none;height:30px">
												<option value="">Please Select</option>
											<%												
												out.println(request.getAttribute("categoryDropDownValues"));
											%>
											</select>
											<!-- Added by Gaurav --To display dropdown for Category in Advanced search --end   -->
											<!-- Added by Gaurav --To display dropdown for Geography in Advanced search --start   --> 
											<select id="templateNameSearch9" name="templateNameSearch9"  size=1 style="display:none;height:30px">
												<option value="">Please Select</option>
											<%												
												out.println(request.getAttribute("geographyDropDownValues"));
											%>
											</select>
											<!-- Added by Gaurav --To display dropdown for Geography in Advanced search --end   -->
																		
									</td>
									<%}else{ %>
									
									<td style="padding-right:10px">
											<input type="text" id="othrPartyNameSearch3" name="othrPartyNameSearch3" style="float-left:10px" >
											<select id="templateNameSearch4" name="templateNameSearch4"  size=1 style="display:none;height:30px">
													<option value="">Please Select</option>
													<option selected value="Partial" >Partial</option>
													<option value="Active" >Active</option>
													<option value="InReview" >InReview</option>
													<option value="Completed" >Completed</option>
													<option value="Void" >void</option>
													<option value="All" >All</option>
											</select>
									
									   
									
									</td>
									<%}%>
									<td  style="padding-right:10px">
											<input type="button" id="addButton" value="Add" class="btn btn-default btn-sm" style="margin-right:10px"/>
									</td>	
														
								</tr>	
								
										<tr>
											<td colspan="3" style="padding-top:10px">

												<input type="button" value="Reset" id="resetBtn" class="btn btn-primary btn-sm" >
										
												<input type="button" value="Search" id="searchBtn" class="btn btn-primary btn-sm" style="margin-left:12px">
											</td>
										</tr>

							</table>
							<div id="hello2" style="display: inline;position:absolute" ><span id="test123"></span></div>
							</div>
							
							</form>
							</div> 
							<!-- <table id="hello1" cellpadding="10" style="display:inline-block;align:center">
								<tr>
								<td colspan="2" align="center">
									
									
										<input type="submit" value="Search" id="searchBtn" onclick="fnSubmit()">
									</td>
									</tr>
							</table> -->
							
								
		</div>
				<!-- 	</div>
				</div>
			</div> -->
			</div>
			</div>
		</div>
		<!-- <input type="text" id="myInputTextField"> -->
		
	<!-- <hr id="horiz_line" style="border-width: 2px 0 0;"> -->

		
<table id="example" class="display table-bordered compact" cellspacing="0" width="100%" >
    <thead>
        <tr>
        	<th class="expand-collapse-toggle" style="text-align:center;padding:3px 1px;cursor:pointer"><a id="expandcollapsetext" style="color:#000000;text-decoration:underline;">Expand All</a></th>
          		<%
				if(routeType2.equalsIgnoreCase("3"))
				{
					out.println("<th>Deal ID</th>");
					out.println("<th >Deal Name</th>");
						
				}else{
					out.println("<th>Request ID</th>");
					out.println("<th >Created By</th>");					
				}				
				%>
				<th>Status</th>
				<th>Created Date</th>
				<th>Created Date</th>
				<th>Escalated Date</th>
				<th style="display:none;">Hidden Escalated Date</th>
				<th style="display:none;">Hidden Approval Date</th>
				<th >Approved Date</th>
				<th >Assigned To</th>
				<th style="display:none;">HTMLContent</th>
           
                 
           
           <!--  <th style="display:none;"></th> -->
        </tr>
    </thead>
 
    <!-- <tfoot>
        <tr>
			<th></th>
          <th>Request ID</th>
            <th>Created By</th>
            <th>Status</th>
            <th>Created Date</th>
        </tr>
    </tfoot> -->
 
 <!-- <tbody>
        <tr >
        <td></td>
            <td>4177</td>
            <td>Harikrishnan Haridas (hharidas)</td>
            <td>Partial</td>
          
            <td>15-Sep-2013</td>
            <td>10-Oct-2013</td>
              <td>10-Oct-2013</td>
             <td style="display:none;">Full name:	Name Extension number:	Extn No :12345 Extra info:	And any further details here r(images etc)...</td>
            
        </tr>
        <tr > <td></td>
            <td>4119</td>
            <td>Jaya Hulgeri (jhulgeri)</td>
            <td>Active</td>
            
            <td>14-Oct-2013</td>
            <td>10-Oct-2013</td>
              <td>10-Oct-2013</td>
             <td style="display:none;">Full name:	Name Extension number:	Extn No :12345 Extra info:	And any further details here r(images etc)...</td>
        </tr>
        <tr> <td></td>
            <td>4117</td>
            <td>Raghava Urs (ragurs)</td>
            <td>Completed</td>
          
            <td>12-Oct-2013</td>
             <td>10-Oct-2013</td>
              <td>10-Oct-2013</td>
                <td style="display:none;">Full name:	Name Extension number:	Extn No :12345 Extra info:	And any further details here r(images etc)...</td>
        </tr>
        <tr > <td></td>
            <td>4115</td>
            <td>Jaya Hulgeri (jhulgeri)</td>
            <td>Partial</td>
            
            <td>04-Jul-2013</td>
             <td>10-Oct-2013</td>
              <td>10-Oct-2013</td>
                <td style="display:none;">Full name:	Name Extension number:	4115 Extn No :12345 Extra info:	And any further details here r(images etc)...</td>
        </tr>
        <tr> <td></td>
            <td>4114</td>
            <td>Harikrishnan Haridas (hharidas)</td>
            <td>In Review</td>
          
            <td>11-Jun-2013</td>
             <td>10-Oct-2013</td>
              <td>10-Oct-2013</td>
                <td style="display:none;">Full name:	Name Extension number:	Extn No :12345 Extra info:	And any further details here r(images etc)...</td>
        </tr>
        <tr > <td></td>
            <td>4098</td>
            <td>Raghava Urs (ragurs)</td>
            <td>void</td>
           
            <td>19-Mar-2013</td>
             <td>10-Oct-2013</td>
              <td>10-Oct-2013</td>
              <td style="display:none;">Full name:	Name Extension number:	Extn No :12345 Extra info:	And any further details here r(images etc)...</td>
        </tr>
        <tr> <td></td>
            <td>4094</td>
            <td>Harikrishnan Haridas (hharidas)</td>
            <td>Completed</td>
           
            <td>20-Sep-2013</td>
             <td>10-Oct-2013</td>
              <td>10-Oct-2013</td>
                     <td style="display:none;">Full name:	Name Extension number:	Extn No :12345 Extra info:	And any further details here r(images etc)...</td>
        </tr>
        <tr> <td></td>
            <td>4081</td>
            <td>Jaya Hulgeri (jhulgeri)</td>
            <td>Active</td>
          
            <td>14-Feb-2013</td>
            <td>10-Oct-2013</td>
              <td>10-Oct-2013</td>
                     <td style="display:none;">Full name:	Name Extension number:	Extn No :12345 Extra info:	And any further details here r(images etc)...</td>
        </tr>
        <tr> <td></td>
            <td>4079</td>
            <td>Harikrishnan Haridas (hharidas)</td>
            <td>Completed</td>
          
            <td>30-Oct-2013</td>
            <td>10-Oct-2013</td>
              <td>10-Oct-2013</td>
                     <td style="display:none;">Full name:	Name Extension number:	Extn No :12345 Extra info:	And any further details here r(images etc)...</td>
        </tr>
        <tr> <td></td>
            <td>4076</td>
            <td>Raghava Urs (ragurs)</td>
            <td>void</td>
          
            <td>10-Aug-2013</td>
            <td>10-Oct-2013</td>
              <td>10-Oct-2013</td>
                     <td style="display:none;">Full name:	Name Extension number:	Extn No :12345 Extra info:	And any further details here r(images etc)...</td>
        </tr>
        <tr> <td></td>
            <td>4053</td>
            <td>Jaya Hulgeri (jhulgeri)</td>
            <td>Completed</td>
          
            <td>30-Oct-2013</td>
            <td>10-Oct-2013</td>
              <td>10-Oct-2013</td>
                     <td style="display:none;">Full name:	Name Extension number:	Extn No :12345 Extra info:	And any further details here r(images etc)...</td>
        </tr>
        <tr> <td></td>
            <td>4020</td>
            <td>Jaya Hulgeri (jhulgeri)</td>
            <td>Active</td>
          
            <td>13-Dec-2013</td>
            <td>10-Oct-2013</td>
              <td>10-Oct-2013</td>
                     <td style="display:none;">Full name:	Name Extension number:	Extn No :12345 Extra info:	And any further details here r(images etc)...</td>
        </tr>
        <tr> <td></td>
            <td>4006</td>
            <td>Harikrishnan Haridas (hharidas)</td>
            <td>void</td>
          
            <td>30-Nov-2013</td>
           <td>10-Oct-2013</td>
              <td>10-Oct-2013</td>
                      <td style="display:none;">Full name:	Name Extension number:	Extn No :12345 Extra info:	And any further details here r(images etc)...</td>
        </tr>
        <tr> <td></td>
            <td>3871</td>
            <td>Raghava Urs (ragurs)</td>
            <td>Active</td>
          
            <td>10-Oct-2013</td>
             <td>10-Oct-2013</td>
              <td>10-Oct-2013</td>
                          <td style="display:none;">Full name:	Name Extension number:	Extn No :12345 Extra info:	And any further details here r(images etc)...</td>
        </tr>
        </tbody>  -->
 </table>
      
        <div class="scroll-to-top"></div>									
</div>
<!-- Body Section ends here -->
<!-- Footer section starts -->
		<div>
			<div class="clearfix"></div>
			<div class="well eclm-info-footer">
				<table class="eclm-width-hundred">
					<tr>
						<td class="eclm-width-hundred eclm-text-align-center">
							<span>&copy;</span>
							<span class="eclm-padding-left-five-px eclm-font-table">Cisco Systems, Inc. Cisco Confidential: Managed by <a href="mailto:sds-fin-legal-it@cisco.com">Legal IT</a></span>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<!-- Footer section ends -->
</body>
</html>