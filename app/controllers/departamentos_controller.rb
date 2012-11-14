class DepartamentosController < ApplicationController
	def index
		@departamentos = Departamento.all
		@departamento = Departamento.new
	end

	def create
		@departamento = Departamento.new(params[:departamento])
		if @departamento.save
			flash[:success] = "Departamento creado correctamento"
			redirect_to departamentos_path
		else
			@departamentos = Departamento.all
			render 'index'
		end
	end
end
