object clasesDeGym{
	
	const property idiomas="espaniol"
	const property esfuerzo=true
	const property broncea=false
	const property dias=1
	method queIdiomaHabla(){return idiomas}
	method implicaEsfuerzo(viaje){return esfuerzo}
	method sirveParaBroncearse(viaje){return broncea}
	method diasDeActividad(){return dias}
    method esRecomendadoGym(socio){return socio.edad().between(20,30)}
}
object tallerLiterario{
	const broncea=false
	var property idiomas=#{}
	var property esfuerzo=true
	var property libros=#{}
	var property paginas=0
	var property nombreDeAutor=""
	method diasQueLleva(){return libros.size()+1}
	method queIdiomaTenemos(){return self.idiomas()}
    method queLibroTrabaja(){return libros.asSet()}
    method agregarLIbro(agregar){libros.add(agregar)}
    method implicaEsfuerzo(){return 
    	libros.any(paginas>500) || libros.all(nombreDeAutor==nombreDeAutor)&& libros.size()>1
    }
    method sirveParaBroncearse(){return broncea}
    method esRecomendado(socio){return socio.idiomas()>1}
}
