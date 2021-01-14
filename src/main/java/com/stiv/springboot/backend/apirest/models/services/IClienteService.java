package com.stiv.springboot.backend.apirest.models.services;

import java.util.List;
import com.stiv.springboot.backend.apirest.models.entity.Cliente;

public interface IClienteService {
	
	public List<Cliente> finAll();
	
	public Cliente finById(Long id);
	
	public Cliente save(Cliente cliente);
	
	public void delete (Long id);
	
}
