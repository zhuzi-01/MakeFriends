package util;
import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;
import com.mchange.v2.c3p0.ComboPooledDataSource;

public class C3p0Utils {

	/**
	 * @return the ds
	 */
	public static DataSource getDs() {
		return ds;
	}


	private static C3p0Utils instance=new C3p0Utils();
	private static DataSource ds=new ComboPooledDataSource();
	
	private   C3p0Utils() {	}
	
	public static C3p0Utils getinstance() {
		
		return instance;
	}
	
	public Connection getconn() throws SQLException {
		return ds.getConnection();
	}
}
