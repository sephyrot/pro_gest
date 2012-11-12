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
#  presupuesto_noiva :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Contrato < ActiveRecord::Base
  attr_accessible :cod_contrato, :empresa, :fecha_amp, :fecha_fin, :fecha_ini, :presupuesto_noiva, :tecnologia, :proyecto_id

  validates :cod_contrato,  presence: true
  
end
