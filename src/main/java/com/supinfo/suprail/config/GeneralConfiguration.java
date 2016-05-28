package com.supinfo.suprail.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.supinfo.suprail.interfaces.job.ITrainJob;
import com.supinfo.suprail.interfaces.job.ITravelJob;
import com.supinfo.suprail.interfaces.job.IUserJob;
import com.supinfo.suprail.job.TrainJob;
import com.supinfo.suprail.job.TravelJob;
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
    
    @Bean
    public IUserJob getUserJob() {
        return new UserJob();
    }
    

    @Bean
    public ITrainJob getTrainJob() {
        return new TrainJob();
    }
    

    @Bean
    public ITravelJob getTravelJob() {
        return new TravelJob();
    }
    
    
}
