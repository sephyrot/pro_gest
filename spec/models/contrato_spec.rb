# == Schema Information
#
# Table name: contratos
#
#  id                :integer          not null, primary key
#  cod_contrato      :string(255)
#  empresa           :string(255)
#  tecnologia        :string(255)
#  proyecto_id       :integer
#  fecha_ini         :datetime
#  fecha_fin         :datetime
#  fecha_amp         :datetime
#  presupuesto_noiva :decimal(8, 2)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'spec_helper'

describe Contrato do
  pending "add some examples to (or delete) #{__FILE__}"
end
