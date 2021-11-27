<%@ page  contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Signin</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">

</head>
<style>
*{
font-family: 'Gowun Dodum', sans-serif;
}</style>
 
 <script language="javascript">
 function checkLogin(){
          var form=document.signinForm;
  		 if(form.userID.value == ""){
             alert("아이디를 입력해주세요");
             form.id.focus();
             return false;
          }
  	   	  else 
    			 if(form.userEmail.value==""){
    				 alert("이메일을 입력해주세요");
    				 form.userEmail.focus();
    				 return false;
    			 }
 
  		  else
        	  if(form.userName.value == ""){
                  alert("이름을  입력해주세요");
                  form.userName.focus();
                  return false;
               
               }
  		 
  		 else 
  			 if(form.userID.value.length<4){
  				 alert("아이디는 4자리 이상 입력해주세요");
  				 form.userID.focus();
  				 return false;
  			 }
          else
        	  if(form.userPassword.value == ""){
                  alert("비밀번호를 입력해주세요");
                  form.userPassword.focus();
                  return false;
               
               }
  		var RegExp = /^[a-zA-z0-9]{4,12}$/; 
  		else 
  		if (!RegExp.test(userPassword)) {
            alert("비밀번호는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
            form.userPassword.value = "";
            form.userPassword.focus();
            return false;
        }
        
      
          else
             if((form.userPassword.value)!=(form.passwdcheck.value)){
                alert("비밀번호확인이 틀렸습니다.");
                form.passwdcheck.focus();
                return false;           
             }
           
         
          form.submit();
       }
       </script>
  <body class="bg-white">
 <main>
 	<%@ include file="nav.jsp"%>
<div class="container">
<div class="row justify-content-center">
 <div class="col-lg-5">
<div class="card shadow-lg border-0 rounded-lg mt-5">
 <div class="card-header">
 <h3 class="text-center font-weight-light my-4">회원가입</h3>
 </div>
<div class="card-body">
<form  method="post" name="signinForm" action="signinAction.jsp" onsubmit="return checkLogin()">
  <div class="form-group">
  <label for="inputID">아이디</label>
 <input class="form-control" name="userID" type="text" placeholder="Enter ID">
</div>

  <div class="form-group">
   <label for="inputPassword">비밀번호</label>
 <input class="form-control" name="userPassword" type="password"  placeholder="Enter Password" >
</div>


  <div class="form-group">
 <label for="inputPasswordConfirm">비밀번호 확인</label>
 <input class="form-control" name="passwdcheck" type="password" >
 </div>


  <div class="form-group">
 <label for="inputLastName">이름</label>
 <input class="form-control" name="userName" type="text" placeholder="홍길동">
 </div>

 <div class="form-group">
   <label for="inputEmail">이메일 주소</label>
  <input class="form-control" name="userEmail" type="email" placeholder="name@example.com">

    </div>
    
 <div class="form-group">
  <label for="formFile" class="form-label">프로필 사진</label>
  <input class="form-control" type="file" id="formFile">
</div>

<p>  <input class="btn btn-secondary" type="submit" value="전송">
 </form>  
  <div class="card-footer text-center py-3">

  
<div class="small"><a href="login.jsp">혹시 계정이 있으신가요?로그인하기</a></div>
   </div>        
</div>  
 </div>
 
 </div>
 </div>          
</div>  



 
      
 </main>   

</body>
 	
</html>


