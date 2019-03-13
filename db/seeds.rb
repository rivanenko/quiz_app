data = YAML.load_file("#{Rails.root}/config/data.yml")

data.each do |datum|
  category = Category.find_or_create_by(name: datum['name'])
  quiz = category.quizzes.find_or_create_by(name: "#{category.name} quiz")
  (datum['questions'] || []).each do |question_data|
    question = quiz.questions.find_or_create_by(name: question_data['name'])
    question_data.fetch('options', []).each do |option_data|
      question.options.find_or_create_by(option_data)
    end
  end
end
