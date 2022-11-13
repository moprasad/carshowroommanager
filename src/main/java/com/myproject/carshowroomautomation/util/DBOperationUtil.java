package com.myproject.carshowroomautomation.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import com.myproject.carshowroomautomation.model.Security;

public class DBOperationUtil {

	public static ResultSet executeQuery(String query) throws Exception{
		ResultSet rs = null;
		DataSource ds = DBCPDataSourceFactory.getDataSource("mysql");
		Connection conn = null;
		Statement stmt = null;
		try{
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
		} catch(Exception ex){
			System.out.println("Exception while executing DB query. Exception message = " + ex);
			conn.close();
			throw new Exception(ex.getMessage());
		}
		return rs;
	}
	
	public static Security getEmployee(String query) throws Exception {
		Security security = null;
		DataSource ds = DBCPDataSourceFactory.getDataSource("mysql");
		try {
			try (Connection conn = ds.getConnection();
					Statement stm = conn.createStatement();
					ResultSet rs = stm.executeQuery(query)) {
				while (rs.next()) {
					security = buildUserInfoObject(rs);
				}
			}
		} catch (SQLException e) {
			System.out.println("SQL exception while fetching employee detail");
			throw new Exception(e.getMessage());
		}
		System.out.println("getEmployee DB response:" + security);
		return security;
	}
	
	/*public static List<UserInfo> getEmployees(String query) throws Exception{
		List<UserInfo> employees = new ArrayList<UserInfo>();
		DataSource ds = DBCPDataSourceFactory.getDataSource("mysql");
		try{
		    try(Connection conn = ds.getConnection(); 
		        Statement stm = conn.createStatement(); 
		        ResultSet rs = stm.executeQuery(query)) {
		        while(rs.next()){
		        	UserInfo userInfo = buildUserInfoObject(rs);
		        	employees.add(userInfo);
		        }
		    } 
		}catch(SQLException e){
		  System.out.println("SQL exception while fetching employees detail");
		  throw new Exception(e.getMessage());
		}
		return employees;
	}
	*/
	
	public static void updateEmployee(String query) throws Exception{
		DataSource ds = DBCPDataSourceFactory.getDataSource("mysql");
		Connection conn = null;
		Statement stmt = null;
		try{
			conn = ds.getConnection();
			stmt = conn.createStatement();
			stmt.executeUpdate(query);
		} catch(Exception ex){
			System.out.println("Exception while executing DB query. Exception message = " + ex);
			throw new Exception(ex.getMessage());
		} finally {
			closeJDBCResources(stmt, conn);
		}
	}

	private static void closeJDBCResources(Statement stmt, Connection conn) {

		if(stmt !=null){
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public static Security buildUserInfoObject(ResultSet rs) throws SQLException {
		return Security.builder().username(rs.getString("username")).password(rs.getString("password"))
				.hintQuestion(rs.getString("hint"))
				.build();
	}

}
