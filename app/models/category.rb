class Category < ActiveRecord::Base
  validates :nombre_categoria, presence: true
  validates :nombre_categoria, uniqueness: true
end
