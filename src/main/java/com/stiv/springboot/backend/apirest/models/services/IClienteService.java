package com.stiv.springboot.backend.apirest.models.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.stiv.springboot.backend.apirest.models.entity.Cliente;
import com.stiv.springboot.backend.apirest.models.entity.Factura;
import com.stiv.springboot.backend.apirest.models.entity.Region;

public interface IClienteService {
	
	public List<Cliente> finAll();
	
	public Page<Cliente> finAll(Pageable pageable);
	
	public Cliente finById(Long id);
	
	public Cliente save(Cliente cliente);
	
	public void delete (Long id);
	
	public List<Region> findAllRegiones();
	
	public Factura findFacturaById(Long id);
	
	public Factura saveFactura(Factura factura);
	
	public void deleteFacturaById(Long id);
	
}
