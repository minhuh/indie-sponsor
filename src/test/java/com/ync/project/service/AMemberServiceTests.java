package com.ync.project.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.admin.service.AMemberService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AMemberServiceTests {
	@Autowired
	private AMemberService AMember;
	
	@Test
	public void testGetListAll() {
		AMember.getAdminList().forEach(AMember -> log.info(AMember));
		
	}
	
	@Test
	public void testmodify() {
		AMember.revoke("test961215");
	}
}
