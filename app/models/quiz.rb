class Quiz < ActiveRecord::Base
  has_many :categories_quizzes, dependent: :destroy
  has_many :categories, through: :categories_quizzes

  has_many :users_quizzes, dependent: :destroy
  has_many :users, through: :users_quizzes

  has_many :questions

  validates :name, presence: true, uniqueness: true
end
