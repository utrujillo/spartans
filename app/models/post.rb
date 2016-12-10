class Post < ActiveRecord::Base
  validates :titulo,:contenido, presence: true
  validates :titulo,:contenido, uniqueness: true

  belongs_to :user

  has_many :post_has_categories, :dependent => :destroy, :autosave => true , :inverse_of => :post
  has_many :categories, through: :post_has_categories

  attr_reader :category_tokens

  def category_tokens=(ids)
    self.category_ids = ids.split(',')
  end

  belongs_to :user


end
