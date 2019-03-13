class CreateUsersQuizzes < ActiveRecord::Migration
  def change
    create_table :users_quizzes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :quiz, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
