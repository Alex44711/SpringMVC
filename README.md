# SpringMVC Blog manamgement web application
## package *configuration* contains the problems encountered
## package *springmcvDemo* contains the sources code
## package *screenshots* contains the web application screenshot
### 1. Related environment
+ Intellij IDEA 2013.3.5 Ultimate
+ Tomcat 8.5.38
+ JDK 1.8.0_131
+ Spring 4.2.5
+ MySql 5.7.19
+ Maven 3.6.1
+ Bootsrtap 4.3.1

### 2. installation
- Maven 
- Tomcat

### 3. create Maven Web project
- maven.archetypes:maven-archetype-webapp
- import spring-core into pom.xml
- configure modules

### 4. framework configuration
- web.xml configuration-mvc-dispatcher
- mvc-dispatcher-servlet.xml configuration
- js, image, css related configuration
- open spring annotation
- configure Tomcat and deploy as war exploded

### 5. database configuration
- create two tables and set foreign key
- intellij idea import databbase by **Hibernate**
- use javaEE persistence connect database and generate two java Beans, which corresponding two tables in database

### 6. user and blog management
- JPA operation defination
- develop mainController and corresponding users.jsp, userDetail.jsp,
- customized update method in UserReository interface
- add updateUser in MainController
- blog management same as user management

### 7. screenshots
- welcomePage

<img src="https://github.com/Alex44711/SpringMVC/blob/master/screenshots/welcomePage.png" width="50%" height="50%">

- addUser

<img src="https://github.com/Alex44711/SpringMVC/blob/master/screenshots/addUser.png" width="50%" height="50%">

- updateUserInformation

<img src="https://github.com/Alex44711/SpringMVC/blob/master/screenshots/updateUserInformation.png" width="50%" height="50%">

- userDetail

<img src="https://github.com/Alex44711/SpringMVC/blob/master/screenshots/userDetail.png" width="50%" height="50%">

- userManagement

<img src="https://github.com/Alex44711/SpringMVC/blob/master/screenshots/userManagement.png" width="50%" height="50%">

- blogManagement

<img src="https://github.com/Alex44711/SpringMVC/blob/master/screenshots/blogManagement.png" width="50%" height="50%">

- addBlog

<img src="https://github.com/Alex44711/SpringMVC/blob/master/screenshots/addBlog.png" width="50%" height="50%">

- modifyBlog

<img src="https://github.com/Alex44711/SpringMVC/blob/master/screenshots/modifyBlogs.png" width="50%" height="50%">



