class ContratosController < ApplicationController
	
	def index
		@contratos = Contrato.all
	end

	def show
		@contratos = Contrato.find(params[:id])
	end

	def new #Para el formulario
		@contrato = Contrato.new
	end

	def create # para recibir los parametros del formulario
		@contrato = Contrato.new(params[:contrato])
		if @contrato.save
			flash[:success] = "Contrato creado"
			render 'new'
		else
			render 'new'
		end
		
	end

end
