class User < ActiveRecord::Base
  has_secure_password

  has_many :users_quizzes, dependent: :destroy
  has_many :quizzes, through: :users_quizzes
end
