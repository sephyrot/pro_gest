# == Schema Information
#
# Table name: proyectos
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Proyecto < ActiveRecord::Base
  attr_accessible :nombre
end
