class Quiz < OpenStruct
  def self.data
    @questions = []
    @answers   = []

    YAML.load_file(Rails.root.join('config', 'quiz.yml')).map {|data|
      @questions.push OpenStruct.new(data['question'])
      @answers.push   OpenStruct.new(data['answer'])
    }

    @quiz ||= new(questions: @questions, answers: @answers)
  end
end
