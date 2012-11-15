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
#  precio_noiva    :decimal(8, 2)
#  comentarios     :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  fecha_entrega   :datetime
#  estado          :string(255)
#

require 'spec_helper'

describe SolServicio do
  pending "add some examples to (or delete) #{__FILE__}"
end
