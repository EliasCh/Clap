package pk.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter({"/solution/create",
	"/solution/upvote",
	"/topic/edit",
	"/topic/check",
	"/user/profile","/user/descon","/user/update"})
public class LoggedFilter  implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("LogggedFilter destroy");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("Do filter ");
		HttpServletRequest rq = (HttpServletRequest) request ;
		HttpServletResponse rp = (HttpServletResponse) response ;
		System.out.println("Request "+rq+"\nResponse "+rp);
		HttpSession session = rq.getSession(false);
        boolean loggedIn = session != null && session.getAttribute("currUser") != null;
        if(!loggedIn)
        	rp.sendRedirect(rq.getContextPath()+"/user/signi");
        else 
        	chain.doFilter(rq, rp);
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("LogggedFilter init");
		
	}
	
}
