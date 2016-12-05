class PostHasCategory < ActiveRecord::Base
  belongs_to :post, :inverse_of => :post_has_categories
  belongs_to :category, :inverse_of => :post_has_categories

  validates_presence_of :post


end
