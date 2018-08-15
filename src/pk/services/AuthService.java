package pk.services;

import pk.entities.User;

public interface AuthService {
	public boolean authUser(String email,String pass) throws Exception ;
	public boolean isUser(String email) throws Exception ;
	public void createUser(User user) throws Exception ;
	public void deleteUser(String email) throws Exception ;
	public String generatePasswordHash(String pass) ;
}
