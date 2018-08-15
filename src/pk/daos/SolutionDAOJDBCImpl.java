package pk.daos;

import java.sql.Timestamp;
import java.util.List;
import org.springframework.dao.EmptyResultDataAccessException;
import pk.entities.Solution;
import pk.entities.Topic;
import pk.entities.User;

public class SolutionDAOJDBCImpl extends DAOJDBCImpl implements SolutionDAO {
	 
	@Override
	public void create(Solution solution) {		
		String sql = "insert into solutions (url,sdate) values (?, ?)";
		try {
	    jdbcTemplate.update(sql, solution.getUrl(), solution.getSdate());
		}
		catch(Exception exp) {
			System.out.println(exp);
		}
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		String sql = "delete from solutions where id = ?";
		try {
	    jdbcTemplate.update(sql, id);
		}
		catch(Exception exp) {
			System.out.println(exp);
		}
	}

	@Override
	public Solution read(int id) {
		// TODO Auto-generated method stub
		String sql ="select * from solutions where id = ?";
		Solution solution ;
		try { 
	    solution = jdbcTemplate.queryForObject(sql, new Object[]{id}, new SolutionMapper());
		}
		catch (EmptyResultDataAccessException exp) {
			System.out.println(exp);
			solution = null ;
		}
	    return solution ;
	}

	@Override
	public List<Solution> readAll() {
		// TODO Auto-generated method stub
		String sql = "select * from solutions" ;
		List<Solution> users;
		try {
		users = jdbcTemplate.query(sql, new SolutionMapper());
		}
		catch(Exception exp ) {
			System.out.println(exp);
			users =null ;
		}
		return users;
	}

	@Override
	public User getUser(Solution solution) {
		String sql = "SELECT us.email,username,dob,pass_hash \r\n" + 
					 "FROM  users 		    AS u ,\r\n" + 
					 "	    users_solutions AS us, \r\n" + 
					 "      solutions 	    AS s   \r\n" + 
					 "WHERE us.email 		= u.email and \r\n" + 
					 "	    us.id_solution  = s.id and \r\n" + 
					 "      id_solution     = ?  ";
		User user;
		try {
		user = jdbcTemplate.queryForObject(sql, new Object[]{solution.getId()},new UserMapper());
		}
		catch(Exception exp ) {
			System.out.println(exp);
			user=null;
		}
		return user ;
	}

	@Override
	public Topic getTopic(Solution solution) {
		// TODO Auto-generated method stub
		String sql = "SELECT t.topic,t.title,t.version \r\n" + 
  					 "FROM  topics 		     AS t ,\r\n" + 
					 "	    solutions_topics AS st, \r\n" + 
					 "      solutions 	     AS s   \r\n" + 
					 "WHERE st.topic		 =  t.topic and \r\n" + 
					 "	    st.solution      =  s.id    and \r\n" + 
					 "     st.solution = ? ";
		Topic topic;
		try {
		topic = jdbcTemplate.queryForObject(sql, new Object[] {solution.getId()},new TopicMapper());
		}
		catch(Exception exp ) {
			System.out.println(exp);
			topic =null ;
		}
		return topic;
	}

	@Override 
	public Solution read(String url, Timestamp ts) {
		// TODO Auto-generated method stub
		System.out.println(ts.toString().substring(0, 19));
		String sdate =ts.toString().substring(0, 19) ;
		String sql ="select * from solutions where url = ? and sdate = ? ";
		System.out.println(sql);
		Solution solution ;
		try {
	    solution = jdbcTemplate.queryForObject(sql, new Object[]{url,sdate}, new SolutionMapper());
		}
		catch (Exception exp) {
			System.out.println(exp);
			solution = null ;
		}
	    return solution ;
	}

	@Override
	public void wireSolutionToTopic(Solution solution, Topic topic) {
		// TODO Auto-generated method stub
		String sql = "insert into solutions_topics values (?,?) ";
		jdbcTemplate.update(sql,solution.getId(),topic.getTopic());
	}

	@Override
	public void wireSolutionToUser(Solution solution, User user) {
		// TODO Auto-generated method stub
		String sql = "insert into users_solutions values (?,?) ";
		jdbcTemplate.update(sql,user.getEmail(),solution.getId());
	}

}
