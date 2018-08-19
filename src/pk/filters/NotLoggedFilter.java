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

@WebFilter({"/user/create",
	"/user/signi"})
public class NotLoggedFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stu
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response , FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest rq = (HttpServletRequest) request ;
		HttpServletResponse rp = (HttpServletResponse) response ;
		HttpSession session = rq.getSession(false);
        boolean loggedIn = session != null && session.getAttribute("currUser") != null;
        if(loggedIn)
        	rp.sendRedirect(rq.getContextPath()+"/");
        else 
        	chain.doFilter(rq, rp);

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
	}

}
