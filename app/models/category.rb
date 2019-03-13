class Category < ActiveRecord::Base
  has_many :categories_quizzes, dependent: :destroy
  has_many :quizzes, through: :categories_quizzes

  validates :name, presence: true, uniqueness: true
end
