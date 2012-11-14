class SolServiciosController < ApplicationController
	
	def index
		@solserv = SolServicio.all
	end
	
	

	def create		
		#@contrato = Contrato.find(params[:new_solserv][:proyecto_id])
		@new_solserv = SolServicio.new(params[:sol_servicio])
		if @new_solserv.save
			flash[:success] = "Solicitud Creada"
			redirect_to @new_solserv.contrato
		else
			flash[:error] = "Fallo en la creaci&oacute;n de solicitud"
			redirect_to @new_solserv.contrato
		end
	end

	def destroy
		@ss = SolServicio.find(params[:id])
		@contrato = @ss.contrato
		SolServicio.find(params[:id]).destroy
	    flash[:success] = "Solicitud eliminada"
	    redirect_to @contrato
	end

end
