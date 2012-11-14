class ProyectosController < ApplicationController
	
	def index
		@proyectos = Proyecto.all
	end

	def new
		@proyecto = Proyecto.new
	end
	def create
		@proyecto = Proyecto.new(params[:proyecto])
		if @proyecto.save
			flash[:success] = "Proyecto creado"
			redirect_to proyectos_path
		else
			flash[:error] = "Error al crear proyecto"
			render 'new'
		end
	end
end
