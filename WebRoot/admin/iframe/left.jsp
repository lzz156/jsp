<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>系统管理</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" rel=stylesheet>
<META content="MSHTML 6.00.2900.3243" name=GENERATOR>
</HEAD>
<SCRIPT language="JavaScript" type="text/JavaScript">
<!--
var array = new Array();//数字顺延
array[0]=1;array[1]=2;array[2]=3;array[3]=4;array[4]=5;array[5]=6;array[6]=7;array[7]=8;array[8]=9;array[9]=10;
function expand(id_value){
  var tmp;
  eval("tmp=document.getElementById('id_"+id_value+"').style.display");
  if(tmp==''){
    eval("document.getElementById('id_"+id_value+"').style.display='none'");
  }else{
   for(i=0;i<array.length;i++){
      eval("document.getElementById('id_"+array[i]+"').style.display='none'");
  }
    eval("document.getElementById('id_"+id_value+"').style.display=''");
  }  
 }
//-->
</SCRIPT>
<%
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
	List list=(List)session.getAttribute("list");
	String QX=list.get(4).toString();
	String temp[]=QX.split("/");
%>
<BODY  oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=<%=basePath %><%=dir %>/images/MainBg.gif topMargin=0 scroll=no marginheight="0" marginwidth="0">
<TABLE bgColor=#eef8fe  class=HeaderTdStyle height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD vAlign=top align=middle>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD align=middle ><IMG height=17 src="<%=basePath %><%=dir %>/images/sys.gif" width=21>
          <a href="<%=basePath %><%=dir %>/iframe/main.jsp" target="MainFrame">管理首页</a>
          </TD>
        </TR>
        </TBODY>
      </TABLE>
      <TABLE  bgColor=#eef8fe   height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD vAlign=top height="100%">
          <DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 96%" align=center>
<TABLE  bgColor=#eef8fe cellSpacing=0 cellPadding=0 width="90%" align=center border=0>
  <TBODY> 
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(1)>
    <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>系统设置</TD></TR>
    </TABLE>
    <TABLE width="100%" border="0" align="center" id=id_1 style="display:none">
    <TR>
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> 
      <a href="<%=basePath %><%=dir %>/system/user.jsp" target="MainFrame">管理员设置</a></SPAN></TD></TR>
  	<TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/system/log.jsp" target="MainFrame">后台登录日志</a></SPAN></TD></TR>
  </TABLE>
  </TD>
  </TR>
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(2)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>网站设置</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_2 style="display:none">
   <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/guestbook/index.jsp" target="MainFrame">留言板管理</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/affiche/index.jsp" target="MainFrame">滚动公告管理</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/affiche/edit.jsp?method=addAffiche" target="MainFrame">发布滚动公告</a></SPAN></TD></TR>
  
  </TABLE>
  </TD>
  </TR>
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(3)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>新闻资讯</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_3 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/news/index.jsp" target="MainFrame">新闻资讯管理</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/news/edit.jsp?method=ADDNEWS" target="MainFrame">发布新闻资讯</a></SPAN></TD></TR>
  </TABLE>
  </TD>
  </TR>
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(4)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>注册会员管理</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_4 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/member/person.jsp" target="MainFrame">注册会员管理</a></SPAN></TD></TR>
  </TABLE>
  </TD>
  </TR>
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(5)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>出租信息管理</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_5 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/out/index.jsp" target="MainFrame">出租信息管理</a></SPAN></TD></TR>
 <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/out/add.jsp?method=addOut" target="MainFrame">发布出租信息</a></SPAN></TD></TR>
  </TABLE>
  </TD>
  </TR>
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(6)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>出售信息管理</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_6 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/sale/index.jsp" target="MainFrame">出售信息管理</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/sale/add.jsp?method=addSale" target="MainFrame">发布出售信息</a></SPAN></TD></TR>
  
   </TABLE>
  </TD>
  </TR>
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(7)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>求租信息管理</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_7 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/in/index.jsp" target="MainFrame">求租信息管理</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/in/add.jsp?method=addIn" target="MainFrame">求租信息管理</a></SPAN></TD></TR>
  
   </TABLE>
  </TD>
  </TR>
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(8)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>求购信息管理</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_8 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/buy/index.jsp" target="MainFrame">求购信息管理</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/buy/add.jsp?method=addBuy" target="MainFrame">求购信息管理</a></SPAN></TD></TR>
  
   </TABLE>
  </TD>
  </TR>
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(9)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>交易信息管理</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_9 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/jy/yd.jsp" target="MainFrame">预定信息管理</a></SPAN></TD></TR>
  
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/jy/dj.jsp" target="MainFrame">定金信息管理</a></SPAN></TD></TR>
  
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/jy/ht.jsp" target="MainFrame">合同信息管理</a></SPAN></TD></TR>
  
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/jy/sfk.jsp" target="MainFrame">收付款信息</a></SPAN></TD></TR>
   </TABLE>
  </TD>
  </TR>
   <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(10)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>统计报表管理</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_10 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/tj/fw.jsp" target="MainFrame">房屋统计报表</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/tj/xszj.jsp" target="MainFrame">销售租金报表</a></SPAN></TD></TR>
    </TABLE>
  </TD>
  </TR>
  </TBODY>
</TABLE>
</DIV>
    </TD>
    </TR>
    </TBODY>
    </TABLE>
    </TD></TR>
    </TBODY>
    </TABLE>
</BODY>
<%} %>
</HTML>
