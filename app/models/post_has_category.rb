class PostHasCategory < ActiveRecord::Base
  belongs_to :post
  belongs_to :category

  accepts_nested_attributes_for :category
end
