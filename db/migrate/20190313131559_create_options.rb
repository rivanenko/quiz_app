class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.references :question, index: true, foreign_key: true
      t.boolean :correct

      t.timestamps null: false
    end
  end
end
