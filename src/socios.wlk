import viajes.*
import gimnasia.*
class Socios{
	var property actividades=#{}// no funciona la tecla de corchetes. no hay lista
	var property max=3
	var property edad=0
	var property idiomas=#{}
	var property atrae=true
	method adoradorDelSol(){ return actividades.all({
		p=>p.sirveParaBroncearse()})
	}
	method actividadesEsforzadas(){actividades.filter({
		p=>p.implicaEsfuerzo()})
	}
	method registrarActividad(act){ if(self.actividades().size()>max)
		 self.error("ha llegado al maximo de actividades")
	}
	method leAtrae(act){return atrae}
	method esRecomendadoViaje(act){ return   act.esInteresante() 
		                              && self.leAtrae(act) 
		                              && actividades.contains(act)
		
	}
	
}
class SocioTranquilo inherits Socios{
	override method leAtrae(act){ return act.diasDeActividad()>4}
}
class SocioCoherente inherits Socios{
	override method leAtrae(act){
		return  (self.adoradorDelSol() && act.sirveParaBroncearse())||( act.implicaEsfuerzo())
	}
}
class SocioRelajado inherits Socios{
	override method leAtrae(act){
		return self.idiomas().any({act.queIdiomaHabla()})
	}
}