class Post < ActiveRecord::Base
  validates :titulo,:contenido, presence: true
  validates :titulo,:contenido, uniqueness: true
  belongs_to :user

  has_many :post_has_categories
  has_many :categories, through: :post_has_categories
  attr_reader :category_tokens

  def category_tokens=(ids)
    self.category_ids = ids.split(',')
  end

end
