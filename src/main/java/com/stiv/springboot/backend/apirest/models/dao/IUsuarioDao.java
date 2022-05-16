package com.stiv.springboot.backend.apirest.models.dao;

import org.springframework.data.repository.CrudRepository;

import com.stiv.springboot.backend.apirest.models.entity.Usuario;

public interface IUsuarioDao extends CrudRepository<Usuario, Long> {
	
	public Usuario findByUsername(String username);
	
}
