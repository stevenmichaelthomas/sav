class QuizzesController < ApplicationController
  include QuizState

  def index
    @question = Quiz.find_question(current_question)
    @answer   = Quiz.find_answer(current_question)
  end
end
