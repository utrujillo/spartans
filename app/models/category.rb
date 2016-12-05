class Category < ActiveRecord::Base
  validates :nombre_categoria, presence: true
  validates :nombre_categoria, uniqueness: true

  has_many :post_has_categories, :dependent => :destroy, :autosave => true , :inverse_of => :category
  has_many :posts, through: :post_has_categories

  accepts_nested_attributes_for :post_has_categories, :allow_destroy => true, :reject_if => :all_blank


end
