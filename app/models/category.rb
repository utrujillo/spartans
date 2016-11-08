class Category < ActiveRecord::Base
  validates :nombre_categoria, presence: true
  validates :nombre_categoria, uniqueness: true

  has_many :post_has_categories
  has_many :posts, through: :post_has_categories

end
