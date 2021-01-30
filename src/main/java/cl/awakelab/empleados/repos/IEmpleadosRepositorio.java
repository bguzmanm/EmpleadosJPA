package cl.awakelab.empleados.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.awakelab.empleados.model.Empleados;

public interface IEmpleadosRepositorio extends JpaRepository<Empleados, Integer> {

}
