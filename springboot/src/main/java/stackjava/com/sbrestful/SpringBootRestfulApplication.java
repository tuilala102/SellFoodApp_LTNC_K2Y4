package stackjava.com.sbrestful;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableJpaRepositories("stackjava.com.sbrestful.repository")
@ComponentScan("stackjava.com.sbrestful")
public class SpringBootRestfulApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootRestfulApplication.class, args);
	}
}
