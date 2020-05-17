package hr.unizg.fer.sudec.config;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.*;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.util.Properties;

@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages = "hr.unizg.fer.sudec")
@PropertySources({
        @PropertySource("classpath:persistence-postgresql.properties"),
        @PropertySource("classpath:hibernate.properties")})
public class AppConfig {

    //Data from properties files
    @Autowired
    private Environment env;

    //viewResolver bean
    @Bean
    public ViewResolver viewResolver() {

        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();

        viewResolver.setPrefix("/WEB-INF/view/");
        viewResolver.setSuffix(".jsp");

        return viewResolver;
    }

    //bean for security datasource
    @Bean
    public DataSource dataSource(){

        ComboPooledDataSource dataSource = new ComboPooledDataSource();

        //setting database connection
        try {
            dataSource.setDriverClass(env.getProperty("jdbc.driver"));

        } catch (PropertyVetoException e) {
            throw new RuntimeException(e);
        }

        dataSource.setJdbcUrl(env.getProperty("jdbc.url"));
        dataSource.setUser(env.getProperty("jdbc.user"));
        dataSource.setPassword(env.getProperty("jdbc.password"));

        //setting connection pool
        dataSource.setInitialPoolSize(Integer.parseInt((env.getProperty("connection.pool.initialPoolSize"))));
        dataSource.setMinPoolSize(Integer.parseInt((env.getProperty("connection.pool.minPoolSize"))));
        dataSource.setMaxPoolSize(Integer.parseInt((env.getProperty("connection.pool.maxPoolSize"))));
        dataSource.setMaxIdleTime(Integer.parseInt((env.getProperty("connection.pool.maxIdleTime"))));

        return dataSource;
    }

    //bean for Hibernate session factory
    @Bean
    public LocalSessionFactoryBean sessionFactoryBean(){

        LocalSessionFactoryBean sessionFactoryBean = new LocalSessionFactoryBean();

        sessionFactoryBean.setDataSource(dataSource());
        sessionFactoryBean.setPackagesToScan("hr.unizg.fer.sudec.entity");
        sessionFactoryBean.setHibernateProperties(hibernateProperties());

        return sessionFactoryBean;
    }

    Properties hibernateProperties(){
        return new Properties(){
            {setProperty("hibernate.dialect",env.getProperty("hibernate.dialect"));
            setProperty("hibernate.show_sql", env.getProperty("hibernate.show_sql"));
            }
        };
    }

    //bean for Hibernate transaction manager
    @Bean
    @Autowired
    public HibernateTransactionManager transactionManager(SessionFactory sessionFactory){
        HibernateTransactionManager transactionManager = new HibernateTransactionManager();

        transactionManager.setSessionFactory(sessionFactory);

        return transactionManager;
    }

}
