package pk.daos;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class DAOJDBCImpl {
	 protected DataSource dataSource;
	 protected JdbcTemplate jdbcTemplate;
	 
	 public void setDataSource(DataSource ds) {
	    dataSource = ds;
	    jdbcTemplate = new JdbcTemplate(dataSource);
	    System.out.println("Datasource set");
	 }
}
