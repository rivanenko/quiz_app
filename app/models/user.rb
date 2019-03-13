class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :validatable

  has_many :users_quizzes, dependent: :destroy
  has_many :quizzes, through: :users_quizzes
end
