package hr.unizg.fer.sudec.config;

import hr.unizg.fer.sudec.entity.Student;
import hr.unizg.fer.sudec.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Component
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    @Autowired
    StudentService studentService;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {

        System.out.println("\n\nIn customAuthenticationSuccessHandler\n\n");

        String userName = authentication.getName();
        System.out.println("userName=" + userName);

        Student student = studentService.findByUsername(userName);

        // now place in the session
        HttpSession session = httpServletRequest.getSession();
        session.setAttribute("student", student);

        // forward to home page

        httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/");
    }

}
