module QuizState
  extend ActiveSupport::Concern

  included do
    helper_method :current_step, :next_step
  end

  QUESTIONS = 1..21

  def next_question
    QUESTIONS.at QUESTIONS.index(current_step) + 1
  end

  def current_question
    if QUESTIONS.include?(session[:quiz_question])
      session[:quiz_question]
    else
      QUESTIONS.first
    end
  end

  private

  def current_step=(step)
    session[:quiz_question] = step
  end
end

ActionController::Base.send(:include, QuizState)
