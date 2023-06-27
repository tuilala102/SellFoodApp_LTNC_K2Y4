package stackjava.com.sbrestful.config;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration
@EnableWebMvc
public class CorsConfig implements WebMvcConfigurer {
	@Override
	public void addCorsMappings(CorsRegistry registry) 
		{
		registry.addMapping("/**")
		.allowedOrigins("http://localhost:19006", "http://localhost:3000")
		
		.allowedMethods("GET", "POST", "PUT", "DELETE")
		.allowedHeaders("*").allowCredentials(true).maxAge(3600);
		}
	}
// password123