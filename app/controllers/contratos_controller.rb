class ContratosController < ApplicationController
	
	def index
		@contratos = Contrato.all
	end

	def show
		@contrato = Contrato.find(params[:id])
		@suma_gastado = @contrato.sol_servicios.sum(:precio_noiva)
		@porcentaje = (@suma_gastado * 100) / @contrato.presupuesto_noiva
		@sol_servicio = @contrato.sol_servicios.build
		@sol_servicios = @contrato.sol_servicios.all
	end

	def new #Para el formulario
		@contrato = Contrato.new
		@proyectos = Proyecto.all
	end

	def destroy
	    Contrato.find(params[:id]).destroy
	    flash[:success] = "Contrato eliminado"
	    redirect_to contratos_url
  	end

	def create # para recibir los parametros del formulario
		@contrato = Contrato.new(params[:contrato])
		if @contrato.save
			flash[:success] = "Contrato creado"
			redirect_to contratos_url
		else
			@proyectos = Proyecto.all
			flash[:error] = params[:contrato][:presupuesto_noiva]
			render 'new'
		end
		
	end

end
