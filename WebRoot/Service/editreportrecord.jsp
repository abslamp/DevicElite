<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="edu.heusoft.DevicElite.javabean.*"  %>
<%@ page import="edu.heusoft.DevicElite.common.DateUtil"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="zh-cn">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>报修记录编辑</title>

<!-- Import google fonts - Heading first/ text second -->
<!--<link rel="stylesheet" type="text/css" href="http://fonts.useso.com/css?family=Open+Sans:400,700|Droid+Sans:400,700">-->
<!--[if lt IE 9]>
<link href="http://fonts.useso.com/css?family=Open+Sans:400" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Open+Sans:700" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Droid+Sans:400" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Droid+Sans:700" rel="stylesheet" type="text/css" />
<![endif]-->

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon">

<!-- Css files -->
<link href="/DevicElite/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="/DevicElite/assets/css/jquery.mmenu.css" rel="stylesheet">
<link href="/DevicElite/assets/css/font-awesome.min.css" rel="stylesheet">
<link href="/DevicElite/assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
<link href="/DevicElite/assets/css/style.min.css" rel="stylesheet">
<link href="/DevicElite/assets/css/add-ons.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->
</head>

<body class="">
<div class="sidebar  mm-menu mm-horizontal mm-offcanvas">
   <div class="sidebar-collapse">
					<div class="sidebar-header t-center">
                        <span><img class="text-logo" src="/DevicElite/assets/img/logo1.png"><i class="fa fa-space-shuttle fa-3x blue"></i></span>
                    </div>										
					<div class="sidebar-menu">						
						<ul class="nav nav-sidebar">
							<li><a href="/DevicElite/index/ServiceIndex.html"><i class="fa fa-laptop"></i><span class="text"> 主页</span></a></li>
							<li >
								<a href="#"><i class="fa fa-file-text"></i><span class="text"> 客户管理</span> <span class="fa fa-angle-down pull-right"></span></a>
								<ul class="nav sub">
									<li><a href="/DevicElite/Service/addCustomer.jsp"><i class="fa fa-car"></i><span class="text"> 添加客户</span></a></li>
									<li><a href="/DevicElite/Service/queryCustomer.jsp"><i class="fa fa-envelope"></i><span class="text"> 查询客户</span></a></li>
								</ul>	
							</li>
							<li>
								<a href="#"><i class="fa fa-list-alt"></i><span class="text"> 报修管理</span> <span class="fa fa-angle-down pull-right"></span></a>
								<ul class="nav sub">
									<li><a href="/DevicElite/Service/addReport.html"><i class="fa fa-indent"></i><span class="text"> 添加报修单</span></a></li>
									<li><a href="/DevicElite/Service/queryreportrecord.jsp"><i class="fa fa-tags"></i><span class="text"> 查询报修单</span></a></li>
								</ul>
							</li>
							<li><a href="/DevicElite/Service/z-querycheckout.jsp"><i class="fa fa-table"></i><span class="text"> 结算信息</span></a></li>
							
						</ul>
					</div>					
				</div>
				<div class="sidebar-footer">					
					
					<div class="sidebar-brand">
						Proton
					</div>
					
					<ul class="sidebar-terms">
						<li><a href="index.html#">Terms</a></li>
						<li><a href="index.html#">Privacy</a></li>
						<li><a href="index.html#">Help</a></li>
						<li><a href="index.html#">About</a></li>
					</ul>
					
					<div class="copyright text-center">
						<small>Proton <i class="fa fa-coffee"></i> from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></small>
					</div>					
				</div>	
</div>
<div class="mm-page">
  <div class="mm-page">
    <div class="navbar" role="navigation">
      <div class="container-fluid">
        <ul class="nav navbar-nav navbar-actions navbar-left">
          <li class="visible-md visible-lg"><a href="table.html#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
          <li class="visible-xs visible-sm"><a href="table.html#" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>
        </ul>
        <form class="navbar-form navbar-left">
          <button type="submit" class="fa fa-search"></button>
          <input type="text" class="form-control" placeholder="Search...">
        </form>
        <ul class="nav navbar-nav navbar-right">
          <li class="dropdown visible-md visible-lg"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope-o"></i><span class="badge">5</span></a>
            <ul class="dropdown-menu">
              <li class="dropdown-menu-header"> <strong>Messages</strong>
                <div class="progress thin">
                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%"> <span class="sr-only">30% Complete (success)</span> </div>
                </div>
              </li>
              <li class="avatar"> <a href="page-inbox.html"> <img class="avatar" src="assets/img/avatar1.jpg">
                <div>New message</div>
                <small>1 minute ago</small> <span class="label label-info">NEW</span> </a> </li>
              <li class="avatar"> <a href="page-inbox.html"> <img class="avatar" src="assets/img/avatar2.jpg">
                <div>New message</div>
                <small>3 minute ago</small> <span class="label label-info">NEW</span> </a> </li>
              <li class="avatar"> <a href="page-inbox.html"> <img class="avatar" src="assets/img/avatar3.jpg">
                <div>New message</div>
                <small>4 minute ago</small> <span class="label label-info">NEW</span> </a> </li>
              <li class="avatar"> <a href="page-inbox.html"> <img class="avatar" src="assets/img/avatar4.jpg">
                <div>New message</div>
                <small>30 minute ago</small> </a> </li>
              <li class="avatar"> <a href="page-inbox.html"> <img class="avatar" src="assets/img/avatar5.jpg">
                <div>New message</div>
                <small>1 hours ago</small> </a> </li>
              <li class="dropdown-menu-footer text-center"> <a href="page-inbox.html">View all messages</a> </li>
            </ul>
          </li>
          <li class="dropdown visible-md visible-lg"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell-o"></i><span class="badge">3</span></a>
            <ul class="dropdown-menu">
              <li class="dropdown-menu-header"> <strong>Notifications</strong>
                <div class="progress thin">
                  <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%"> <span class="sr-only">30% Complete (success)</span> </div>
                </div>
              </li>
              <li class="clearfix"> <i class="fa fa-comment"></i> <a href="page-activity.html" class="notification-user"> Sharon Rose </a> <span class="notification-action"> replied to your </span> <a href="page-activity.html" class="notification-link"> comment</a> </li>
              <li class="clearfix"> <i class="fa fa-pencil"></i> <a href="page-activity.html" class="notification-user"> Nadine </a> <span class="notification-action"> just write a </span> <a href="page-activity.html" class="notification-link"> post</a> </li>
              <li class="clearfix"> <i class="fa fa-trash-o"></i> <a href="page-activity.html" class="notification-user"> Lorenzo </a> <span class="notification-action"> just remove <a href="#" class="notification-link"> 12 files</a></span> </li>
              <li class="dropdown-menu-footer text-center"> <a href="page-activity.html">View all notification</a> </li>
            </ul>
          </li>
          <li class="dropdown visible-md visible-lg"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-gears"></i></a>
            <ul class="dropdown-menu update-menu" role="menu">
              <li><a href="#"><i class="fa fa-database"></i> Database </a> </li>
              <li><a href="#"><i class="fa fa-bar-chart-o"></i> Connection </a> </li>
              <li><a href="#"><i class="fa fa-bell"></i> Notification </a> </li>
              <li><a href="#"><i class="fa fa-envelope"></i> Message </a> </li>
              <li><a href="#"><i class="fa fa-flash"></i> Traffic </a> </li>
              <li><a href="#"><i class="fa fa-credit-card"></i> Invoices </a> </li>
              <li><a href="#"><i class="fa fa-dollar"></i> Finances </a> </li>
              <li><a href="#"><i class="fa fa-thumbs-o-up"></i> Orders </a> </li>
              <li><a href="#"><i class="fa fa-folder"></i> Directories </a> </li>
              <li><a href="#"><i class="fa fa-users"></i> Users </a> </li>
            </ul>
          </li>
          <li class="dropdown visible-md visible-lg"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img class="user-avatar" src="assets/img/avatar.jpg" alt="user-mail">jhonsmith@mail.com</a>
            <ul class="dropdown-menu">
              <li class="dropdown-menu-header"> <strong>Account</strong> </li>
              <li><a href="page-profile.html"><i class="fa fa-user"></i> Profile</a></li>
              <li><a href="page-login.html"><i class="fa fa-wrench"></i> Settings</a></li>
              <li><a href="page-invoice.html"><i class="fa fa-usd"></i> Payments <span class="label label-default">10</span></a></li>
              <li><a href="gallery.html"><i class="fa fa-file"></i> File <span class="label label-primary">27</span></a></li>
              <li class="divider"></li>
              <li><a href="index.html"><i class="fa fa-sign-out"></i> Logout</a></li>
            </ul>
          </li>
          <li><a href="index.html"><i class="fa fa-power-off"></i></a></li>
        </ul>
      </div>
    </div>
    <div class="container-fluid content">
      <div class="row"> 
        
        <!-- start: Main Menu --> 
        
        <!-- end: Main Menu --> 
        
        <!-- start: Content -->
        <div class="main sidebar-minified" style="min-height: 337px;">
          <div class="row">
            <div class="col-lg-12">
              <h3 class="page-header"><i class="fa fa-table"></i>报修记录编辑</h3>
            </div>
          </div>
          <div class="col-lg-12">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h2><i class="fa fa-indent red"></i><strong>编辑详情</strong></h2>
              </div>
          <div class="panel-body" style="padding-top:30px">
          <form action="/DevicElite/servlet/UpdateReportServlet" method="post"  class="form-horizontal ">
              
                 <div class="row">
                  <div class="col-lg-4">
                    <div class="form-group">
                      <label class="col-lg-4 col-md-8 col-sm-12 control-label" for="text-input">报修单号</label>
                      <div class="col-md-8">
                        <input type="text" id="disabled-input" name="report_record_no" class="form-control" value="${param.no}" readonly="readonly" />
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <div class="form-group">
                      <label class="col-lg-4 col-md-8 col-sm-12 control-label" for="text-input">顾客身份证号</label>
                      <div class="col-md-8">
                        <input type="text" id="disabled-input" name="customer_idno" class="form-control" value="${param.id}" readonly="readonly"/>
                      </div>
                    </div>
                  </div>
                 <div class="col-lg-4">
                    <div class="form-group">
                      <label class="col-lg-4 col-md-8 col-sm-12 control-label" for="text-input">报修设备编号</label>
                      <div class="col-md-8">
                        <input type="text" id="disabled-input" name="report_equip_no" class="form-control" value="${param.equip}" readonly="readonly" />
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row" style="padding-top:30px">
                 <div class="col-lg-4">
                    <div class="form-group">
                      <label class="col-lg-4 col-md-8 col-sm-12 control-label" for="text-input">报修时间</label>
                      <div class="col-md-8">
                        <input type="date" id="text-input" name="report_time" class="form-control" value="${param.rptdt}" />
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <div class="form-group">
                      <label class="col-lg-4 col-md-8 col-sm-12 control-label" for="text-input">预估价格</label>
                      <div id="error_tip_predict_price" class="col-md-8">
                        <input type="text" id="text-input" name="predict_price" class="form-control" value="${param.pdtf}" onblur="checkPrice()" />
                        <span class="help-block">预估价格必须为整数。</span>
                      </div>
                    </div>
                  </div>
                 <div class="col-lg-4">
                    <div class="form-group">
                      <label class="col-lg-4 col-md-8 col-sm-12 control-label" for="text-input">预估时间</label>
                      <div class="col-md-8">
                        <input type="date" id="text-input" name="predict_complete_time" class="form-control" value="${param.pdtdt}" />
                      </div>
                    </div>
                  </div>
                </div>
                
                <div class="row">
                  <div class="col-lg-4">
                    <div class="form-group">
                      <label class="col-lg-4 col-md-8 col-sm-12 control-label" for="text-input">状态</label>
                      <div class="col-md-8">
                        <select id="select" name="report_status" class="form-control" size="1" >
                         <c:if test="${param.st==0}">
                         <option value="进行中" selected="selected">进行中</option>
                         </c:if>
                         <c:if test="${param.st!=0}">
                         <option value="进行中">进行中</option>
                         </c:if>
                         <c:if test="${param.st==1}">
                         <option value="结束" selected="selected">结束</option>
                         </c:if>
                         <c:if test="${param.st!=1}">
                         <option value="结束">结束</option>
                         </c:if>
                         <c:if test="${param.st==2}">
                         <option value="撤销" selected="selected">撤销</option>
                         </c:if>
                         <c:if test="${param.st!=2}">
                         <option value="撤销">撤销</option>
                         </c:if>
                     </select>
                      </div>
                    </div>
                  </div>
                </div>
              <br>
              </form>
             </div>
             
          <div class="panel-footer">
                 <button type="submit" class="btn btn-sm btn-success" onclick="onSubmit()"><i class="fa fa-check"></i> 确认</button>
          </div>

        </div>	
    </div>

          <!--/row--> 
          
        </div>
        <!-- end: Content --> 
        <br>
        <br>
        <br>
        
      </div>
      <!--/container-->
      
      <div class="modal fade" id="myModal">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">ÃÂ</button>
              <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
              <p>Here settings can be configured...</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div>
          <!-- /.modal-content --> 
        </div>
        <!-- /.modal-dialog --> 
      </div>
      <!-- /.modal -->
      
      <div class="clearfix"></div>
      
      <!-- start: JavaScript--> 
      <!--[if !IE]>--> 
      
<!--       <script src="assets/js/jquery-2.1.1.min.js"></script>  -->
      
      <!--<![endif]--> 
      
      <!--[if IE]>
	
		<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<![endif]--> 
      
      <!--[if !IE]>--> 
      
      <script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.1.1.min.js'>"+"<"+"/script>");
		</script> 
      
      <!--<![endif]--> 
      
      <!--[if IE]>
	
		<script type="text/javascript">
	 	window.jQuery || document.write("<script src='assets/js/jquery-1.11.1.min.js'>"+"<"+"/script>");
		</script>
		
	<![endif]--> 
      <script src="assets/js/jquery-migrate-1.2.1.min.js"></script> 
      <script src="assets/js/bootstrap.min.js"></script> 
      
      <!-- page scripts --> 
      <script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script> 
      <script src="assets/plugins/datatables/js/jquery.dataTables.min.js"></script> 
      <script src="assets/plugins/datatables/js/dataTables.bootstrap.min.js"></script> 
      
      <!-- theme scripts --> 
      <script src="assets/js/SmoothScroll.js"></script> 
      <script src="assets/js/jquery.mmenu.min.js"></script> 
      <script src="assets/js/core.min.js"></script> 
      
      <!-- inline scripts related to this page --> 
      <script src="assets/js/pages/table.js"></script> 
      
      <!-- end: JavaScript--> 
      
    </div>
  </div>
  <div id="mm-blocker"></div>
</div>
<!-- start: Header --> 

<!-- end: Header -->

<div id="mm-blocker"></div>
</body>
  <script type="text/javascript">
    function goPage(p){
    	var page=document.getElementById("page");
    	page.value=p;
    	document.forms[2].submit();
    }
    function prevPage(p){
		var page = document.getElementById("page");
		var integer = parseInt(p);
		integer--;
		page.value = integer;

		document.forms[2].submit();
    }
    function nextPage(p){
		var page = document.getElementById("page");
		var integer = parseInt(p);
		integer++;
		page.value = integer;
		document.forms[2].submit();
    }
    
    function checkPrice(){
    	var input = document.getElementsByName("predict_price");
    	var tip = document.getElementById("error_tip_predict_price");
    	var test = /^[0-9]*$/;
    	if(!test.test(input[0].value)){
    		tip.className="has-error col-md-8";
    	}else{
    		tip.className="col-md-8";
    	}
    }
    function onSubmit(){
    	var input = document.getElementsByName("predict_price");
    	var tip = document.getElementById("error_tip_predict_price");
    	var test = /^[0-9]*$/;
    	if(!test.test(input[0].value)){
    		tip.className="has-error col-md-8";
    	}else{
    		tip.className="col-md-8";
    		document.forms[1].submit();
    	}
    }
  </script>

</html>