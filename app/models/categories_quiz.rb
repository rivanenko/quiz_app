class CategoriesQuiz < ActiveRecord::Base
  belongs_to :category
  belongs_to :quiz
end
