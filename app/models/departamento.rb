class Departamento < ActiveRecord::Base
  attr_accessible :codigo, :nombre

  validates :codigo, presence: true
  validates :nombre, presence: true

end
