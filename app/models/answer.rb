class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  serialize :option_ids, Array
end
