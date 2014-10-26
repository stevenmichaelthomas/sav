module QuizState
  extend ActiveSupport::Concern

  included do
    helper_method :current_step, :next_step
  end

  QUESTIONS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]

  def next_question
    QUESTIONS.at QUESTIONS.index(current_question) + 1
  end

  def current_question
    if QUESTIONS.include?(session[:quiz_question])
      session[:quiz_question]
    else
      QUESTIONS.first
    end
  end

  private

  def current_question=(question)
    session[:quiz_question] = question
  end
end

ActionController::Base.send(:include, QuizState)
