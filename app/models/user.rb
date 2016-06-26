class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :blogs, foreign_key: 'author', class_name: 'Blog', dependent: :destroy

  enum user_type: { admin: 1, user: 2 }
end
