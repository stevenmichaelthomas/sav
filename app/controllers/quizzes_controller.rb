class QuizzesController < ApplicationController
  include QuizState

  def index
    @question = Quiz.find_question(current_question)
    @answer   = Quiz.find_answer(current_question)
  end

  def next
    if next_question.nil?
      redirect_to quizzes_complete_path
    else
      self.current_question = next_question
      redirect_to quizzes_path
    end
  end

  def reset
    self.current_question = 1
    redirect_to quizzes_path
  end

  def complete
  end
end
