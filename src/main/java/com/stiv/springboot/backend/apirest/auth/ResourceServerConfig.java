package com.stiv.springboot.backend.apirest.auth;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;

@Configuration
@EnableResourceServer
public class ResourceServerConfig extends ResourceServerConfigurerAdapter {

	@Override
	public void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers(HttpMethod.GET, "/api/clientes", "/api/clientes/page/**", "/api/uploads/img/**").permitAll()
		.antMatchers(HttpMethod.GET, "/api/clientes/{id}").hasAnyRole("ROLE_USER", "ROLE_ADMIN")
		.antMatchers(HttpMethod.POST, "/api/clientes/upload").hasAnyRole("ROLE_USER", "ROLE_ADMIN")
		.antMatchers(HttpMethod.POST, "/api/clientes").hasRole("ROLE_ADMIN")
		.antMatchers("/api/clientes/**").hasRole("ROLE_ADMIN")
		.anyRequest().authenticated();
	}
	
}
