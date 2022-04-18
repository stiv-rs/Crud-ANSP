package com.stiv.springboot.backend.apirest.models.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.stiv.springboot.backend.apirest.models.entity.Cliente;

public interface IClienteService {
	
	public List<Cliente> finAll();
	
	public Page<Cliente> finAll(Pageable pageable);
	
	public Cliente finById(Long id);
	
	public Cliente save(Cliente cliente);
	
	public void delete (Long id);
	
}
