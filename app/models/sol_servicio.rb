# == Schema Information
#
# Table name: sol_servicios
#
#  id              :integer          not null, primary key
#  numero          :string(255)
#  contrato_id     :integer
#  proyecto_id     :integer
#  tipo            :string(255)
#  departamento_id :integer
#  asunto          :string(255)
#  precio_noiva    :integer
#  comentarios     :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class SolServicio < ActiveRecord::Base
  attr_accessible :asunto, :comentarios, :contrato_id, :departamento_id, :numero, :precio_noiva, :proyecto_id, :tipo
end
