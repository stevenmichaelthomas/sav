class QuizzesController < ApplicationController
  def index
    @quiz = Quiz.data
  end
end
