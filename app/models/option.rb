class Option < ActiveRecord::Base
  belongs_to :question

  validates :name, presence: true, uniqueness: { scope: :question_id }
end
