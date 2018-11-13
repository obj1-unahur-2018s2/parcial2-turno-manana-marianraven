class Viajes {
	var property idiomas=#{""}
	var property esfuerzo=true
	var property broncea=true
	var property dias=0
	method queIdiomaHabla(){return idiomas}
	method implicaEsfuerzo(){return esfuerzo}
	method sirveParaBroncearse(){return broncea}
	method diasDeActividad(){return dias}
	method esInteresante(){return idiomas>2}
}
class Playa inherits Viajes{
	var property largo=1000
	override method diasDeActividad(){return largo/500}
	override method implicaEsfuerzo(){
		 return (largo<1200)
	}
	override method sirveParaBroncearse(){return true}
	
}
class ExcursionALaCiudad inherits Viajes{
	var property atracciones=0
	override method diasDeActividad(){
	    super()
		return atracciones/2
	}
    override method implicaEsfuerzo(){return atracciones.between(5,8)}
    override method sirveParaBroncearse(){return false}
    override method esInteresante(){
    	super()
    	return atracciones==5
    	
    }
}
class CiudadTropical inherits ExcursionALaCiudad{
	override method diasDeActividad(){
	    return super()+1
	    }
	  override method sirveParaBroncearse(){return true}  
	 
}
class Trekking inherits Viajes{
	var property kms
	var property diasDeSol=0
	method cuantosKms(_kms){ return kms+= _kms}
	method cuantosDiasDeSol(){return diasDeSol}
	
	override method diasDeActividad(){
	    super()
	    return kms/50
	    }
	override method implicaEsfuerzo(){
		      return self.cuantosKms(kms)
	}
	override method sirveParaBroncearse(){
		return self.cuantosDiasDeSol()>200 || diasDeSol.between(100,200)
		 && self.cuantosKms(kms)>120
	} 
	 override method esInteresante(){
    	super()
    	&& self.cuantosDiasDeSol()>140 return true
    }
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}