class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.string :cod_contrato, unique: true
      t.integer :empresa
      t.string :tecnologia
      t.integer :proyecto_id
      t.datetime :fecha_ini
      t.datetime :fecha_fin
      t.datetime :fecha_amp
      t.integer :presupuesto_noiva

      t.timestamps
    end

    add_index :contratos, [:cod_contrato, :proyecto_id]

  end
end
