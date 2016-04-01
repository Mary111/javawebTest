<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户填写页面</title>

<script type="text/javascript">
function validate(){
	var username=document.getElementsByName("username")[0].value;
	var password=document.getElementsByName("password")[0].value;
	var gender=document.getElementsByName("gender");
	var interest=document.getElementsByName("interest");
	var address=document.getElementsByName("address")[0].value;
	var comment=document.getElementsByName("comment")[0].value;
		
	if(username==null||username==""){
		alert("用户名不能为空!");
		return false;
	}
	if(password==null||password==""){
		alert("密码不能为空!");
		return false;
	}
	if(password.length<3||password.length>8){
		alert("密码长度应在3到8位之间!");
		return false;
	}
	
	var ff=false;
	for(var i=0;i<gender.length;i++){		
		if(gender[i].checked){
			ff=true;
		}				
	}
	if(!ff){
		alert("性别不能为空!");
		return ff;
	}
	
	var num=0;
	for(var i=0;i<interest.length;i++){
		if(interest[i].checked){
			num++;
		}
	}
	if(num<1||num>3){
		alert("选择的兴趣应在1~3个之间!");
		return false;
	}
	if(comment==null||comment==""){
		alert("说明不能为空!");
		return false;
	}
   return true;
}
</script>

</head>
<body>

   <form action="CheckWriteServlet" method="post">
      用户名：<input type="text" name="username"/><br/>
      密码：<input type="password" name="password"/><br/>
      性别：男<input type="radio" name="gender" value="男">&nbsp;&nbsp;
                   女<input type="radio" name="gender" value="女">
      <br>
      兴趣：<input type="checkbox" name="interest" value="football">football
      <input type="checkbox" name="interest" value="basketball">basketball
      <input type="checkbox" name="interest" value="volleyball">volleyball
      <input type="checkbox" name="interest" value="badminton">badminton
      <br>
      地址：<select name="address">
         <option value="上海">上海</option>
         <option value="广州">广州</option>
         <option value="北京" selected>北京</option>
      </select>
      <br><br><br>
      说明：<textarea name="comment"></textarea><br>
      <br><br>
      <input type="submit" value="submit"/>
      <input type="reset" value="reset"/>
   </form>

</body>
</html>