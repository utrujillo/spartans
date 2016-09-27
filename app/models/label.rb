class Label < ActiveRecord::Base
  validates :nombre_etiqueta, presence: true
  validates :nombre_etiqueta, uniqueness: true
end
