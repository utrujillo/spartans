class Comment < ActiveRecord::Base
    validates :comentario, presence: true
    belongs_to :posts
end
