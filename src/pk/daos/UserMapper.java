package pk.daos;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import pk.entities.User;

public class UserMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException { 
		User user = new User();
		user.setEmail(rs.getString("email"));
		user.setUsername(rs.getString("username"));
		user.setDob(rs.getDate("dob"));
		user.setPass_hash(rs.getString("pass_hash"));
		return user;
	}

	

}
