package cl.awakelab.empleados;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.awakelab.empleados.model.Empleados;
import cl.awakelab.empleados.repos.IEmpleadosRepositorio;

@Controller
public class EmpleadosController {

	@Autowired
	private IEmpleadosRepositorio empRepo;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String inicio() {
		return "home";
	}
	
	
	@RequestMapping(value="/listar", method = RequestMethod.GET)
	public String listar(Model model) {
		
		List<Empleados> listaEmp = empRepo.findAll();
		
		model.addAttribute("lista", listaEmp);
		return "listar";
	}
	
	@RequestMapping(value="/editar/{id}", method= RequestMethod.GET)
	public String mostrar(Model model, @PathVariable("id") int id) {
		Empleados e = empRepo.findById(id).get();
		
		List<Empleados> listaJefes = empRepo.findAll();
		
		model.addAttribute("e", e);
		model.addAttribute("jefes", listaJefes);
		
		return "editar";
		
	}
	@RequestMapping(value="/editar", method=RequestMethod.POST)
	public ModelAndView editar(Empleados e) {
		
		Empleados e_original = empRepo.findById(e.getId()).get();
		
		e.setFechaContratacion(e_original.getFechaContratacion());
		e.setJefe(e_original.getJefe());
		
		System.out.println("GUARDANDO CAMBIOS");
		System.out.println("Fecha:" + e.getFechaContratacion());
		System.out.println("Jefe:" + e.getJefe());
		
		empRepo.save(e);
		
		return new ModelAndView("redirect:/listar");
		
		
	}
}
