package pk.daos;

import java.util.List;
import pk.entities.Solution;
import pk.entities.Topic;

public class TopicDAOJDBCImpl extends DAOJDBCImpl implements TopicDAO {
	 
	@Override
	public void create(Topic topic) {
		String sql = "insert into topics (title,version) values (?, ?)";
		try {
	    jdbcTemplate.update(sql, topic.getTitle(), topic.getVersion());
		}
		catch(Exception exp) {
			System.out.println(exp);
		}
	}

	@Override
	public void delete(int id) {
		String sql ="delete from topics where topic= ?";
		try {
		jdbcTemplate.update(sql,id);
		}
		catch (Exception exp) {
			System.out.println(this.getClass().getName()+"."+Thread.currentThread().getStackTrace()[1].getMethodName()+" "+exp);
		}
	}

	@Override
	public Topic read(int id) {
		String sql = "select * from topics where topic= ? ";
		Topic topic ;
		try {
		topic = jdbcTemplate.queryForObject(sql, new Object[]{id}, new TopicMapper());
		}
		catch (Exception exp) {
			System.out.println(this.getClass().getName()+"."+Thread.currentThread().getStackTrace()[1].getMethodName()+" "+exp);
			return null ;
		}
		return topic;
	}

	@Override
	public List<Topic> readAll() {
		String sql = "select * from topics ";
		List<Topic> topics=null;
		try {
		topics = jdbcTemplate.query(sql, new TopicMapper());
		}
		catch (Exception exp) {
			System.out.println(this.getClass().getName()+"."+Thread.currentThread().getStackTrace()[1].getMethodName()+" "+exp);
		}
		return topics;
	}

	@Override
	public List<Solution> getSolutions(Topic topic) {
		String sql = "SELECT s.id,s.url,s.vote,s.sdate\r\n" + 
					 "FROM solutions_topics AS st , solutions AS s\r\n" + 
					 "WHERE st.solution=s.id and st.topic = "+topic.getTopic()+" order by s.vote desc ; ";
		System.out.println("The topic "+topic.getTopic());
		List<Solution> solutions ;
		try {
		solutions = jdbcTemplate.query(sql,new SolutionMapper());
		}
		catch(Exception exp) {
			System.out.println(this.getClass().getName()+"."+Thread.currentThread().getStackTrace()[1].getMethodName()+" "+exp);
			return null; 
		}
		System.out.println("Solutions found "+solutions);
		return solutions;
	}

	@Override
	public Topic read(String title, double version) {
		// TODO Auto-generated method stub
		String sql = "select * from topics where title= ? and version = ?";
		Topic topic ;
		try {
		topic = jdbcTemplate.queryForObject(sql, new Object[]{title,version}, new TopicMapper());
		}
		catch (Exception exp) {
			System.out.println(this.getClass().getName()+"."+Thread.currentThread().getStackTrace()[1].getMethodName()+" "+exp);
			return null ;
		}
		return topic;
	}

	@Override
	public Solution getSolutionByUrl(Topic topic, String url) {
		// TODO Auto-generated method stub
		String sql = "select s.id , s.url , s.vote , s.sdate from solutions_topics as st , solutions as s where st.solution = s.id and s.url = ? and topic = ? ; ";
		Solution solution = null;
		try {
			jdbcTemplate.queryForObject(sql,new Object[] {url,topic.getTopic()},new SolutionMapper());
		}
		catch(Exception exp ) {
			System.out.println(this.getClass().getName()+"."+Thread.currentThread().getStackTrace()[1].getMethodName()+" "+exp);
			return null ;
		}
		return solution;
	}

}
