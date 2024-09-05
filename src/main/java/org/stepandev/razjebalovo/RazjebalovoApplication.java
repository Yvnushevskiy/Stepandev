package org.stepandev.razjebalovo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.stepandev.razjebalovo.service.UserService;

@SpringBootApplication
public class RazjebalovoApplication {

	public static void main(String[] args) {
		ApplicationContext ctx = SpringApplication.run(RazjebalovoApplication.class, args);
//
//		// Получаем UserService из ApplicationContext
		//UserService userService = ctx.getBean(UserService.class);
//
//		// Теперь можно вызвать метод addUser
//userService.addUser("lox", "lox");
	}
}
