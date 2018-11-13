import viajes.*
import gimnasia.*
class Socios{
	var property actividades=#{}// no funciona la tecla de corchetes. no hay lista
	var property max=5
	
	method adoradorDelSol(act){ return actividades.all({
		p=>p.sirveParaBroncearse(act)})
	}
	method actividadesEsforzadas(act){actividades.map({
		p=>p.implicaEsfuerzo(act)})
	}
	method registrarActividad(act){ if(self.actividades().size()>max)
		 self.error("ha llegado al maximo de actividades")
	}
}
