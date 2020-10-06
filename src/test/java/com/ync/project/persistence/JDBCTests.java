package com.ync.project.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {

	static {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Test
	public void testConnection() {
		
		/*
		Oracle Cloud DB 사용을 위한 DB접속 설정으로 변경 됨
		PC에서는 본인 PC경로인 TNS_ADMIN=G:\Wallet_ync2019 으로 로컬 경로로 설정!!
		commit 시 Server에 있는 경로인 TNS_ADMIN=/home/hanize2/Wallet_ync2019 으로 값을 변경해줘야 함!!!
		Wallet_ync2019 폴더에는 Oracle Cloud DB의 접속 정보와 인증 정보가 들어 있음.
		따라서 해당 경로가 틀리면 DB접속이 안됨
		*/
		try (Connection con = DriverManager.getConnection("jdbc:oracle:thin:@220.67.2.3:1521:ora11", "educ239",
				"pass239")) {

			log.info(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

}
