/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompanyservlet.lab_jsp;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author DELL
 */
public class DatabaseUtil {
    public static Connection  getConnection(){
        Connection conn = null;
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection("jdbc:sqlserver://DESKTOP-48GHHT8;databaseName=QLTS","sa","C23");
        } catch (Exception e){
            System.out.println("Loi: " + e.toString());
        }
        return conn;
    }
}
