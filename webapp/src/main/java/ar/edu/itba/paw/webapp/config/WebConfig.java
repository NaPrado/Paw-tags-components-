package ar.edu.itba.paw.webapp.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry; //se agrego para el css
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@EnableWebMvc
@ComponentScan("ar.edu.itba.paw.webapp.controller")
@Configuration
public class WebConfig implements WebMvcConfigurer{

    @Bean
    public ViewResolver viewResolver() {
        final InternalResourceViewResolver viewResolver =
                new InternalResourceViewResolver();

        viewResolver.setViewClass(JstlView.class);
        viewResolver.setPrefix("/WEB-INF/jsp/");
        viewResolver.setSuffix(".jsp");

        return viewResolver;
    }

    @Override
    public void addResourceHandlers(final ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/CSS/**")
                .addResourceLocations("/CSS/");
    }
}