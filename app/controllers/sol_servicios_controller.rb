class SolServiciosController < ApplicationController
	
	def index
		@solserv = SolServicio.all
		@new_solserv = SolServicio.new
	end
	
	def new
		
	end

	def create		
	end

	def destroy
	end

end
