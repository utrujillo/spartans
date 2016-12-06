class Post < ActiveRecord::Base
  validates :titulo,:contenido, presence: true
  validates :titulo,:contenido, uniqueness: true
  belongs_to :user
  has_many :comments

  has_many :post_has_categories, :dependent => :destroy, :autosave => true , :inverse_of => :post
  has_many :categories, through: :post_has_categories

  accepts_nested_attributes_for :post_has_categories, :allow_destroy => true, :reject_if => :all_blank

  attr_reader :category_tokens

  def category_tokens=(ids)
    self.category_ids = ids.split(',')
  end
end
