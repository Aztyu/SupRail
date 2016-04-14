package com.supinfo.suprail.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.supinfo.suprail.dao.UserDao;
import com.supinfo.suprail.interfaces.dao.IUserDao;
import com.supinfo.suprail.interfaces.job.IUserJob;
import com.supinfo.suprail.job.UserJob;

@Configuration
@ComponentScan(basePackages="com.supinfo.suprail")
@EnableWebMvc
public class GeneralConfiguration extends WebMvcConfigurerAdapter{
	@Bean
    public ViewResolver getViewResolver(){
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/");
        resolver.setSuffix(".jsp");
        return resolver;
    }
     
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }
    
    /*@Bean
    public MultipartResolver multipartResolver() {
            CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
            return multipartResolver;
    }*/
     
    @Bean
    public IUserDao getUserDao() {
        return new UserDao();
    }
    
    @Bean
    public IUserJob getUserJob() {
        return new UserJob();
    }
}
