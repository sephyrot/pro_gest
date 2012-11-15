class AddFechaEntregaToSolServicios < ActiveRecord::Migration
  def change
  	add_column :sol_servicios, :fecha_entrega, :datetime
  	add_column :sol_servicios, :estado, :string
  end
end
