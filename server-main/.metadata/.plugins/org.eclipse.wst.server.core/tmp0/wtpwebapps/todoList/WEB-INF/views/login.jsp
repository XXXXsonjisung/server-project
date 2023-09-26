<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
	// JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// 데이터베이스 연결 설정
	String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:XE"; // 데이터베이스 URL
	String username = "사용자명";
	String password = "비밀번호";
	
	Connection connection = DriverManager.getConnection(jdbcUrl, username, password);
	// 연결된 connection 객체를 사용하여 SQL 쿼리를 실행하거나 데이터베이스 작업을 수행할 수 있습니다.
	%>
    
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>POT</title>
        <link href="https://fonts.googleapis.com/css2?family=Inika&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="/todoList/src/main/webapp/resources/css/login.css">
        
    
        <style>
            .LoginPagePull {
                height: 910px;
                width: 1900px;
                background-color: white;
            }
    
            input[type="text"] {
                width: 220px;
                margin-top: 7px;
                margin-left: 3px;
                height: 30px;
                border-radius: 40px;
    
            }
        </style>
    </head>
    <body>
        <section class="LoginPagePull">
            <section class="LoginPage">
                <section class="LoPaHead">
                    <h1 id="P1">potfolio</h1>
                </section>
                <section class="LoPaNBox"></section>
                <section class="LoPaBox">
                    <section class="LPB">
                        <section class="LPBN"></section>
                        <section class="LPBM">
                            <form action="/login" method="post">
                                <section class="LPML1">
                                    <section class="LPML1-1">
                                        <section class="Id">
                                            <h1 id="i1">id:</h1>
                                        </section>
                                        <section class="IdI">
                                            <input type="text" placeholder="id" name="userId">
                                        </section>
                                    </section>
                                    <section class="LPML1-2">
                                        <section class="Pw">
                                            <h1 id="p1">pw:</h1>
                                        </section>
                                        <section class="PwI">
                                            <input type="text" placeholder="pw" name="userPw">
                                        </section>
                                    </section>
                                </section>
                                <section class="LPML2">
                                <a href="">
                                    <h1 id="L1">LOG</h1>
                                </a>    
                                </section>
                            </form>
                        </section>
                        <section class="LPBF">
                            <a href="/todoList/src/main/webapp/WEB-INF/views/signup.jsp">
                              <h1 id="j1">join membership</h1>
                            </a>
                        </section>
                    </section>
                </section>
            <section class="LPFoot">
            </section>
            </section>
        </section>
        
    </body>
    </html>