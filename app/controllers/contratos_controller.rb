class ContratosController < ApplicationController
	
	def index
		@contratos = Contrato.all
	end

	def show
		@contrato = Contrato.find(params[:id])
		@suma_gastado = @contrato.sol_servicios.sum(:precio_noiva)
		@porcentaje = (@suma_gastado * 100) / @contrato.presupuesto_noiva
		@color_barra="progress-info"
		if @porcentaje < 50
			@color_barra="progress-info"
		else
			if @porcentaje > 50
				@color_barra="progress-warning"
				if @porcentaje >80
					@color_barra="progress-danger"
				end
			end
		end

		@sol_servicio = @contrato.sol_servicios.build
		@sol_servicios = @contrato.sol_servicios.all

		@contraton = Contrato.where("strftime('%Y', fecha_ini) = ?", @contrato.fecha_ini.strftime("%Y"))
		@sol_serv_now = SolServicio.joins(:contrato).where('fecha_ini LIKE ?', @contrato.fecha_ini.strftime("%Y")+"%" ).last
		@nuevass = "SS001"
		if !@sol_serv_now.nil?
			@nuevass = sprintf '%03d', (@sol_serv_now.numero[2,3].to_i + 1 )
			@nuevass = "SS"+@nuevass
		end

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
