class Quiz < OpenStruct
  def self.data
    @questions = []
    @answers   = []

    YAML.load_file(Rails.root.join('config', 'quiz.yml')).map.with_index(1) {|data, i|
      data['question']['number'] = i

      @questions.push OpenStruct.new(data['question'])
      @answers.push   OpenStruct.new(data['answer'])
    }

    @quiz ||= new(questions: @questions, answers: @answers)
  end

  def self.find_question(index)
    data.questions.find{|q| q.number == index}
  end

  def self.find_answer(index)
    data.answers.find{|a| a.number == index}
  end
end
