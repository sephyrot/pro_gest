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

class Contrato < ActiveRecord::Base
  attr_accessible :cod_contrato, :empresa, :fecha_amp, :fecha_fin, :fecha_ini, :presupuesto_noiva, :tecnologia, :proyecto_id
  has_many :sol_servicios, dependent: :destroy

  validates :cod_contrato,  presence: true
  validates :presupuesto_noiva, :numericality => {:greater_than => 0}
  validates	:fecha_ini, presence: true
  validate	:fecha_fin?

  private
  	def fecha_fin?
  		if !self.fecha_fin.nil? && self.fecha_fin < self.fecha_ini
      		errors.add(:fecha_fin, 'no puede ser anterior a la fecha de inicio') 
    	end

    	if !self.fecha_amp.nil? && !self.fecha_fin.nil? && self.fecha_amp < self.fecha_fin
      		errors.add(:fecha_amp, 'no puede ser anterior a la fecha de inicio') 
    	end

  	end
  
end
