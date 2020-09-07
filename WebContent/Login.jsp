<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


                    <form name="login" action="LoginHandler" method="POST" onsubmit="return validation()" class="form form-login" >

                        <div class="form_field">
                        	
                            <input id="login_username" placeholder="username" type="text" class="form_input" name="username"/>
                        </div>

                        <div class="form_field">
                            <input id="login_password" placeholder="password" type="password" class="form_input"  name="password"/>
                        </div>

                        <div class="form_field">
                           <input type="submit" value="Login">
                        </div>
                        
                    </form>

</body>
</html>