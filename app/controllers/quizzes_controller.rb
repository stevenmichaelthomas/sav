class QuizzesController < ApplicationController
  include QuizState

  def index
    @question = Quiz.find_question(current_question)
    @answer   = Quiz.find_answer(current_question)
  end

  def next
    if params[:correct].present?
      self.quiz_score += 1
    end

    if next_question.nil?
      redirect_to quizzes_complete_path
    else
      self.current_question = next_question
      redirect_to quizzes_path
    end
  end

  def reset
    self.quiz_score = 0
    self.current_question = 1
    redirect_to quizzes_path
  end

  def complete
    @score = self.quiz_score

    self.current_question = 1
  end
end
