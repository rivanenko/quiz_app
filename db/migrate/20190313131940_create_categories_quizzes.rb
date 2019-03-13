class CreateCategoriesQuizzes < ActiveRecord::Migration
  def change
    create_table :categories_quizzes do |t|
      t.references :category, index: true, foreign_key: true
      t.references :quiz, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
