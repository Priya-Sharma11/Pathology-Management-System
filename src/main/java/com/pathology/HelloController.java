package com.pathology;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;

@Controller
public class HelloController {

	@Autowired
	HelloService helloService;


	@RequestMapping(name = "/login")

	public ModelAndView validation(@RequestParam (value = "userName") String userName, @RequestParam (value = "password") String password) throws Exception{


		ModelAndView mav = new ModelAndView("riya");
		Connection con = helloService.connectToDB();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from userinfo where username = '"+ userName +"' and password = '"+ password +"'");
		if(rs.next()) {
			mav.addObject("msg","Welcome Back!!!!");
			mav.addObject("userName",userName);
		}
		else{
			mav.addObject("userNotExist","Wrong Credentials. Please Try Again!!!!");
		}



		// Link to view appointment
		con.close();


		return mav;
	}


	//	@RequestMapping(name = "/login")
//
//	public ModelAndView validation(){
//
//
//		ModelAndView mav = new ModelAndView("index");
//
//
////		if(userName.equals("Admin") && password.equals("admin123")){
////			mav.addObject("authenticated","You are authenticated");
////		}
////
////		else{
////			mav.addObject("authenticated", "You are not authenticated! Please try again ");
////		}
//
//		return mav;
//	}
	@RequestMapping(value = "createNewAccount", method = RequestMethod.POST)
	public ModelAndView createNew(@RequestParam (value = "userName") String userName, @RequestParam (value = "password") String password, @RequestParam (value = "firstName") String firstName, @RequestParam (value = "lastName") String lastName, @RequestParam (value = "email") String email,@RequestParam(value ="sex") String sex,@RequestParam(value ="age") String age,@RequestParam(value ="phone_number") String phone_number ) throws Exception {
		Connection con = helloService.connectToDB();

		ModelAndView ma = new ModelAndView("riya");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from userinfo where username = '"+userName+"'");
		if(rs.next()) {
			ma.addObject("errorMessage","UserName Already Exists! Kindly Login!!!");
		}
		else{
			// save in DB
			String insertquery = "INSERT INTO userinfo VALUES ('"+userName+"', '"+password+"', '"+firstName+"', '"+lastName+"', '"+email+"','"+sex+"','"+age+"','"+ phone_number+"')";
			stmt.executeUpdate(insertquery);
		}



		ma.addObject("userName",userName);
		ma.addObject("password",password);

		con.close();
		return ma;

	}

	@RequestMapping(value="appointment", method = RequestMethod.POST)
	public ModelAndView createAppointment(@RequestParam (value = "userName") String userName, @RequestParam (value = "first_name") String first_name, @RequestParam (value = "last_name") String last_name, @RequestParam (value = "schedule") String schedule) throws Exception {
		ModelAndView ma = new ModelAndView("tests");
		Connection con = helloService.connectToDB();

		Statement stmt = con.createStatement();


		ResultSet rs = stmt.executeQuery("select * from appointment");
		while(rs.next()) {
			userName = rs.getString("userName");
			schedule = rs.getString("schedule");
			first_name = rs.getString("first_name");
			last_name = rs.getString("last_name");

			ma.addObject("userName", userName);
			ma.addObject("schedule",schedule);
			ma.addObject("first_name",first_name);
			ma.addObject("last_name",last_name);

		}

			String insertquery = "INSERT INTO appointment VALUES('"+userName+"' ,'"+first_name+"', '"+last_name+"', '"+schedule+"')";
		stmt.executeUpdate(insertquery);
		// Details of test in tests.jsp

		String message = "Your appointment has been created";


		con.close();
		return ma;

	}

//	@RequestMapping(value = "payment", method = RequestMethod.POST)
//	public ModelAndView TestMethod(HttpServletRequest request) {
//
//		// Text for the test or number of the test
//		// On checkout call a JS to show success on Alert
//		ModelAndView ma = new ModelAndView("payment");
//
//
//
//
//		System.out.println("New method");
//
//
//
//
//		return ma;
//
//	}
//
//
//	@RequestMapping(value = "testDetails", method = RequestMethod.POST)
//	public ModelAndView TestDetails(HttpServletRequest request) {
//
//
//		ModelAndView ma = new ModelAndView("payment");
//		String testName1 = request.getParameter("ThyroidTest");
//
//		System.out.println("New method");
//
//
//
//
//		return ma;
//
//	}
//	public static String returnUserName(String userName){
//		String usName = userName+"test";
//		System.out.println("test"+userName);
//	return usName;
//	}


	// utility method to connect to database


}

