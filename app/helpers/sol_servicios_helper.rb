module SolServiciosHelper
	#Define el color de las solicitudes dependiendo del tiempo que le quede respecto a la fecha de entrega
	def color (sol_servicio)
		@clase = ""
		
		if !sol_servicio.fecha_entrega.nil?
		    @verde = (sol_servicio.fecha_entrega > Date.today.months_since(1))
		    @amarillo = (Date.today.next_week(:friday).to_datetime < sol_servicio.fecha_entrega) && ( sol_servicio.fecha_entrega < Date.today.months_since(1)) 
		    @rojo = (Date.today.next_week(:friday).to_datetime > sol_servicio.fecha_entrega)  

	        if @verde
	            @clase = "rowsubmes"
	        else
	            if @amarillo
	                @clase = "rowsubsem"
	            else
	                if @rojo
	                    @clase = "rowsubdia"
	                end
	            end

	        end
	    end
	
	end

end
