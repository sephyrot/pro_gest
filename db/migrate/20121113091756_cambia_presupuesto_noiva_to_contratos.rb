class CambiaPresupuestoNoivaToContratos < ActiveRecord::Migration
  def up
  	change_column :contratos, :presupuesto_noiva, :decimal,:precision =>8,:scale =>2
  end

  def down
  	change_column :contratos, :presupuesto_noiva, :integer
  end
end
