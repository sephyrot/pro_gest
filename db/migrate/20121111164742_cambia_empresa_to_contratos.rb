class CambiaEmpresaToContratos < ActiveRecord::Migration
  def up
  	change_column :contratos, :empresa, :string
  end

  def down
  	change_column :contratos, :empresa, :integer
  end
end
