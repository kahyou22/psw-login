-- SELECT * FROM users WHERE username필드=값 AND password필드=값


/*
 * 직접 유저 데이터를 아이디,비번 으로 조회하는 예 )
 * 
 * 	SELECT * FROM users WHERE username=parksungwoo AND password=1234
 * 
 * 
 * 자바 JDBC로 유저 데이터를 아이디,비번 으로 조회하는 예 ) - LoginServlet.java
 * 
 *  SELECT * FROM users WHERE username=? AND password=?
 * 
 * 	뒤에
 * 	username필드=값 AND password필드=값
 * 	에서 값이 들어가는 부분을
 * 	username=? AND password=? 이렇게 '?' 물음표로 채워넣으며 바꾼다
 * 
 * 	자바 코드에서
 * 	ps.setString(1, "parksungwoo");
 * 	ps.setString(2, "1234");
 * 
 * 	이렇게 (값 순번, 값) 방식으로 삽입시킨 후
 * 
 * 	ps.executeUpdate(); 이 코드로 실행한다
 * 
 */

SELECT * FROM users WHERE username=? AND password=?