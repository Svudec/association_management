package hr.unizg.fer.sudec.config;

import hr.unizg.fer.sudec.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private StudentService studentService;

    @Autowired
    private CustomAuthenticationSuccessHandler customAuthenticationSuccessHandler;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) {

        auth.authenticationProvider(authenticationProvider());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.authorizeRequests()
                .antMatchers("/").hasAnyRole("USER", "BOARD_MEMBER", "ADMIN")
                .antMatchers("/student/manageRoles/**").hasAnyRole("ADMIN")
                .antMatchers("/student/list").hasAnyRole("USER")
                .antMatchers("/student/**").hasAnyRole("BOARD_MEMBER", "ADMIN")
                .antMatchers("/team/list").hasAnyRole("USER")
                .antMatchers("/team/details").hasAnyRole("USER")
                .antMatchers("/team/**").hasAnyRole("BOARD_MEMBER")
                .antMatchers("/project/list").hasAnyRole("USER")
                .antMatchers("/project/details").hasAnyRole("USER")
                .antMatchers("/project/**").hasAnyRole("BOARD_MEMBER")
                .antMatchers("/receipt/**").hasRole("BOARD_MEMBER")
                .antMatchers("/gathering/list").hasAnyRole("USER")
                .antMatchers("/gathering/details").hasAnyRole("USER")
                .antMatchers("/gathering/**").hasAnyRole("BOARD_MEMBER")
                .antMatchers("/event/list").hasAnyRole("USER")
                .antMatchers("/event/details").hasAnyRole("USER")
                .antMatchers("/event/listByBranch").hasAnyRole("USER")
                .antMatchers("/event/**").hasRole("BOARD_MEMBER")
                .antMatchers("/branch/**").hasAnyRole("USER")
                .antMatchers("/partner/**").hasRole("BOARD_MEMBER")
                .antMatchers("/sponsorPackage/**").hasRole("BOARD_MEMBER")
                .antMatchers("/sponsorship/**").hasRole("BOARD_MEMBER")
                .and()
                .formLogin()
                    .loginPage("/showLoginPage")
                    .loginProcessingUrl("/authenticateTheUser")
                    .successHandler(customAuthenticationSuccessHandler)
                    .permitAll()
                .and()
                .logout().permitAll();
    }

    //bcrypt bean definition
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }


    //authenticationProvider bean definition
    @Bean
    public DaoAuthenticationProvider authenticationProvider() {

        DaoAuthenticationProvider auth = new DaoAuthenticationProvider();

        auth.setUserDetailsService(studentService);
        auth.setPasswordEncoder(passwordEncoder());
        return auth;
    }


}
