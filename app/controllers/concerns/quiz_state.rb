module QuizState
  extend ActiveSupport::Concern

  included do
    helper_method :current_step, :next_step
  end

  QUESTIONS = %w(1 2 3 4 5)

  def next_step
    STEPS.at STEPS.index(current_step) + 1
  end

  def previous_step
    STEPS.at STEPS.index(current_step) - 1
  end

  def current_step
    if STEPS.include?(session[:profile_step])
      session[:profile_step]
    else
      STEPS.first
    end
  end

  private

  def current_step=(step)
    session[:profile_step] = step
  end
end

ActionController::Base.send(:include, ProfileState)
