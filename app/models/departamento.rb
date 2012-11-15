# == Schema Information
#
# Table name: departamentos
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  codigo     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Departamento < ActiveRecord::Base
  attr_accessible :codigo, :nombre

  validates :codigo, presence: true
  validates :nombre, presence: true

end
