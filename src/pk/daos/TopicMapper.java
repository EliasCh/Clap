package pk.daos;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import pk.entities.Topic;

public class TopicMapper implements RowMapper<Topic> {

	@Override
	public Topic mapRow(ResultSet rs, int rowNum) throws SQLException {
		Topic topic = new Topic();
		topic.setTitle(rs.getString("title"));
		topic.setTopic(rs.getInt("topic"));
		topic.setVersion(rs.getDouble("version"));
		return topic;
	}
}
