class CambiaPrecioToSolServicios < ActiveRecord::Migration
  def up
  	change_column :sol_servicios, :precio_noiva, :decimal,:precision =>8,:scale =>2
  end

  def down
  	change_column :sol_servicios, :precio_noiva, :integer
  end
end
