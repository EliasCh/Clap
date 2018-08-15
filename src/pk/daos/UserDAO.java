package pk.daos;

import java.util.List;
import pk.entities.Solution;
import pk.entities.Topic;
import pk.entities.User;

public interface UserDAO {
	public void create(User user);
	public void delete(String email);
	public void update(User user);
	public User read(String email);
	public List<User> readAll();
	public List<Solution> getSolutions(User user );
}
