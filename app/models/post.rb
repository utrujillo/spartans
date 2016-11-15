class Post < ActiveRecord::Base
  validates :titulo,:contenido, presence: true
  validates :titulo,:contenido, uniqueness: true
  belongs_to :user

  has_many :post_has_categories
  has_many :categories, through: :post_has_categories

  accepts_nested_attributes_for :post_has_categories,
                                reject_if: :all_blank,
                                allow_destroy: true

  # serialize :category_ids, Array
  # attr_accessor :categories

  # # Virtual attributes
  # def categories=(ids)
  #   self.category_ids = ids.split(",").map(&:strip)
  # end

end
