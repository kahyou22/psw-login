-- INSERT INTO users(username필드, password필드) VALUES (username값, password값)


/*
 * 직접 유저 데이터를 등록하는 예 )
 * 
 *  INSERT INTO users(username, password) VALUES (parksungwoo, 1234)
 * 
 * 
 * 자바 JDBC로 유저 데이터를 등록하는 예 ) - RegisterServlet.java
 * 
 *  INSERT INTO users(username, password) VALUES (?, ?)
 * 
 * 	뒤에 (username값, password값)이 들어가는 부분을
 * 	(?, ?) 이렇게 '?' 물음표로 채워넣으며 바꾼다
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

INSERT INTO users(username, password) VALUES (?, ?)