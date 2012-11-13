class ContratosController < ApplicationController
	
	def index
		@contratos = Contrato.all
	end

	def show
		@contrato = Contrato.find(params[:id])
		@sol_servicios = @contrato.sol_servicios.all
	end

	def new #Para el formulario
		@contrato = Contrato.new
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
			render 'new'
		else
			flash[:error] = params[:contrato][:presupuesto_noiva]
			render 'new'
		end
		
	end

end
