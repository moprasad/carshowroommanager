package com.myproject.carshowroomautomation.util;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;

public class DBCPDataSourceFactory {

	private static BasicDataSource ds = null;
	
	private DBCPDataSourceFactory(){
		
	}
	
	public static DataSource getDataSource(String dbType) {
		
		if (ds != null) {
			return ds;
		} else {
			ds = new BasicDataSource();
			ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
			ds.setUsername("drwumvzz_grsadmin");
			ds.setPassword("MyPass@grs@8g");
			ds.setUrl("jdbc:mysql://103.228.112.200:3306/drwumvzz_wp2021");
			ds.setMaxActive(2);
		}
		return ds;
	}

}
