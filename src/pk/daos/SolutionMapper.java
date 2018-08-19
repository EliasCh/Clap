package pk.daos;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import pk.entities.Solution;

public class SolutionMapper implements RowMapper<Solution> {

	@Override
	public Solution mapRow(ResultSet rs, int row) throws SQLException { 
		Solution solution = new Solution();
		solution.setId(rs.getInt("id"));
		solution.setUrl(rs.getString("url"));
		solution.setVote(rs.getInt("vote"));
		solution.setSdate(rs.getTimestamp("sdate"));
		return solution;
	}

	

}
