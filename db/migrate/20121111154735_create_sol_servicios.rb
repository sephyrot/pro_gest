class CreateSolServicios < ActiveRecord::Migration
  def change
    create_table :sol_servicios do |t|
      t.string :numero
      
      t.integer :contrato_id
      t.integer :proyecto_id

      t.string :tipo
      t.integer :departamento_id
      t.string :asunto
      t.integer :precio_noiva
      t.string :comentarios

      t.timestamps
    end

    add_index :sol_servicios, [:numero,:contrato_id]

  end
end
