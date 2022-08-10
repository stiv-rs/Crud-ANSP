package com.stiv.springboot.backend.apirest.models.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.stiv.springboot.backend.apirest.models.dao.IClienteDao;
import com.stiv.springboot.backend.apirest.models.dao.IFacturaDao;
import com.stiv.springboot.backend.apirest.models.dao.IProductoDao;
import com.stiv.springboot.backend.apirest.models.entity.Cliente;
import com.stiv.springboot.backend.apirest.models.entity.Factura;
import com.stiv.springboot.backend.apirest.models.entity.Producto;
import com.stiv.springboot.backend.apirest.models.entity.Region;

@Service
public class ClienteServiceImpl implements IClienteService {
	
	@Autowired
	private IClienteDao clienteDao;
	
	@Autowired
	private IFacturaDao facturaDao;
	
	@Autowired
	private IProductoDao productoDao;
	
	@Override
	@Transactional(readOnly = true)
	public List<Cliente> finAll() {
		// TODO Auto-generated method stub
		return (List<Cliente>) clienteDao.findAll();
	}
	
	@Override
	@Transactional(readOnly = true)
	public Page<Cliente> finAll(Pageable pageable) {
		return clienteDao.findAll(pageable);
	}
	
	@Override
	public Cliente finById(Long id) {
		// TODO Auto-generated method stub
		return clienteDao.findById(id).orElse(null);
	}
	@Override
	public Cliente save(Cliente cliente) {
		// TODO Auto-generated method stub
		return clienteDao.save(cliente);
	}
	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		clienteDao.deleteById(id);
	}

	@Override
	@Transactional(readOnly = true)
	public List<Region> findAllRegiones() {
		return clienteDao.findAllRegiones();
	}

	@Override
	@Transactional(readOnly = true)
	public Factura findFacturaById(Long id) {
		return facturaDao.findById(id).orElse(null);
	}

	@Override
	@Transactional
	public Factura saveFactura(Factura factura) {
		return facturaDao.save(factura);
	}

	@Override
	@Transactional
	public void deleteFacturaById(Long id) {
		facturaDao.deleteById(id);
	}

	@Override
	@Transactional(readOnly = true)
	public List<Producto> findProductoByNombre(String term) {
		
		return productoDao.findProductoByNombreContainingIgnoreCase(term);
	}	
}
