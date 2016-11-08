class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  validates :nombre, presence: true
  validates :apellidoPaterno, presence: true
  validates :apellidoMaterno, presence: true

  has_many :posts

  def nombre_usuario
    "#{nombre} #{apellidoPaterno} #{apellidoMaterno}"
  end
end
