class Question < ActiveRecord::Base
  belongs_to :quiz
  has_many :options

  validates :name, presence: true, uniqueness: { scope: :quiz_id }
end
