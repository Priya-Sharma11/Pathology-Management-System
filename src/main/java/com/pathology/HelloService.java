package com.pathology;

import org.springframework.stereotype.Service;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@Service
public class HelloService {

    public String returnUserName(String userName){
        String usName = userName+"test";
        // boolean exists = HelloDao.findById(userName);
        System.out.println("test"+userName);

        return usName;
    }


    public static Connection connectToDB() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver"); // registering driver
            con = DriverManager.getConnection("jdbc:mysql://sql12.freesqldatabase.com:3306/sql12596437?allowPublicKeyRetrieval=true&useSSL=false", "sql12596437", "xeUcZUXQY2");


        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
}
