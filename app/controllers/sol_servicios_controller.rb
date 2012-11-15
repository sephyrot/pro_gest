class SolServiciosController < ApplicationController
	
	def index
		@solserv = SolServicio.all
	end
	
	def create		
		@contrato = Contrato.find_by_id(params[:sol_servicio][:contrato_id])
		
		@new_solserv = SolServicio.new(params[:sol_servicio])
		if @new_solserv.save
			flash[:success] = "Solicitud Creada"
			redirect_to @new_solserv.contrato
		else
			flash[:error] = "Fallo en la creacion de solicitud"
			redirect_to @contrato
		end
		#flash[:error] = params.to_s + @new_solserv.numero
		#redirect_to root_path
	end

	def destroy
		@ss = SolServicio.find(params[:id])
		@contrato = @ss.contrato
		if SolServicio.find(params[:id]).destroy
	    	flash[:success] = "Solicitud eliminada"
	    	redirect_to @contrato
	    else
	    	flash[:error] = "Solicitud no eliminada"
	    	redirect_to @contrato
	    end
	end

	def edit
		@sol_servicio = SolServicio.find(params[:id])
	end

	def update
		@sol_servicio = SolServicio.find(params[:id])
		if @sol_servicio.update_attributes(params[:sol_servicio])
	      flash[:success] = "Solicitud actualizada"
	      redirect_to @sol_servicio.contrato
	    else
	      render 'edit'
	    end
	end

end
