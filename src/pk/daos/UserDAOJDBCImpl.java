package pk.daos;

import java.util.List;

import pk.entities.Solution;
import pk.entities.Topic;
import pk.entities.User;

public class UserDAOJDBCImpl extends DAOJDBCImpl implements UserDAO {

	@Override
	public void create(User user) {
		// TODO Auto-generated method stub
		String sql =" insert into users values (?,?,?,?)  " ;
		jdbcTemplate.update(sql,user.getEmail(),user.getUsername(),user.getDob(),user.getPass_hash());
	}

	@Override
	public void delete(String email) {
		// TODO Auto-generated method stub
		String sql = "delete from users where email= ? ";
		jdbcTemplate.update(sql, email);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		String sql = "UPDATE users \r\n" + 
				"SET email     = ? , \r\n" + 
				"	username  = ? ,\r\n" + 
				"    dob 	  = ? ,\r\n" + 
				"    pass_hash = ?\r\n" + 
				"WHERE email= ?\r\n" ;
		jdbcTemplate.update(sql, user.getEmail(),user.getUsername(),user.getDob(),user.getPass_hash(),user.getEmail());
	}

	@Override
	public User read(String email) {
		// TODO Auto-generated method stub
		String sql = "select * from users where email = '"+email+"' ";
		User user ;
		try {
		user = jdbcTemplate.queryForObject(sql,new UserMapper());
		}
		catch(Exception exp) {
			System.out.println(this.getClass().getName()+"."+Thread.currentThread().getStackTrace()[1].getMethodName()+" "+exp+" User not found");
			return null ;
		}
		return user ;
	}

	@Override
	public List<User> readAll() {
		// TODO Auto-generated method stub
		String sql = "select * from users";
		List<User> users = jdbcTemplate.query(sql,new UserMapper());
		return users ; 
	}

	@Override
	public List<Solution> getSolutions(User user) {
		// TODO Auto-generated method stub
		String sql = "SELECT DISTINCT s.id , s.sdate , s.url ,s.vote\r\n" + 
				"FROM users_solutions AS us , solutions AS s\r\n" + 
				"WHERE us.id_solution = s.id and \r\n" + 
				"us.email = '"+user.getEmail()+"'";
		List<Solution> solutions = jdbcTemplate.query(sql,new SolutionMapper());
		return solutions;
	}

}
