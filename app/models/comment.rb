class Comment < ActiveRecord::Base
    validates :nombre_completo, presence: true
    validates :comentario, presence: true
    belongs_to :posts
end
