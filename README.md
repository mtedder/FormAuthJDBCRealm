# FormAuthJDBCRealm
Sample code demonstrating how to use Form authentication using the JDBC Realm in Tomcat.

Steps explaining how this project was created and configured
1. Use the tomcatAuth.sql script to create database and tables with sample data
2. Create a dynamic Web project and select "Generate web.xml deployment descriptor" in the Web Module dialog
3. Create an error.jsp, login.jsp and SecuredPage.jsp in the WebContent folder of your dynamic Web project
4. Add the following form to the login.jsp page
<form action="j_security_check" method="post">
	<label>Username:</label><input type="text" name="j_username">
	<label>Password:</label><input type="password" name="j_password">
	<input type="submit" value="Login">
</form>

5. Add the following code to your Dynamic Web Project Web.xml located in the WebContent-> WEB-INF folder
    <security-constraint>
  	<web-resource-collection>
  		<web-resource-name>My Secured Page</web-resource-name>
  		<url-pattern>/SecuredPage.jsp</url-pattern>
  		<http-method>GET</http-method>
  		<http-method>POST</http-method>
  	</web-resource-collection>
  	
  	<auth-constraint>  		
  		<role-name>admin</role-name>
  	</auth-constraint>  	
  </security-constraint>
  
  <login-config>
  	<auth-method>FORM</auth-method>
  	<form-login-config>
  		<form-login-page>/login.jsp</form-login-page>
  		<form-error-page>/error.jsp</form-error-page>
  	</form-login-config>
  </login-config>
  
  6. Make a backup copy of your server's server.xml file. Add the follwing code to your Server's server.xml file  (if this code already exist in your server.xml you only need to modify the settings) in the "apache-tomcat-8.0.32 at localhost-config" folder of the Eclipse Servers folder. Change the user and password parameters to the values for you MySQL database
  	<Realm className="org.apache.catalina.realm.JDBCRealm"
        		driverName="com.mysql.jdbc.Driver"       
     		connectionURL="jdbc:mysql://localhost:3306/dbrealm?user=XXX&amp;password=XXX"      					
         		userTable="users" userNameCol="user_name" userCredCol="user_pass"
   		userRoleTable="user_roles" roleNameCol="role_name"/>
   		
 7. Copy the mysql-connector-java-5.1.37-bin.jar to your Apachie Tomcat lib folder
 8. Deploy the application. Start the server and navigate to the following url to assess the application: http://localhost:8080/yourProjectNameGoesHere/SecuredPage.jsp
 9. Test login by using the incorrect credentials to test that the error page displays
 10. Test login using the correct credentials of tomcat for the username field and password for the password field
  
