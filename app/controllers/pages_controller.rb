class PagesController < ApplicationController
  def home
    @upcoming_events = Event.upcoming.limit(5)
  end

  def support
  end

  def contact
  end
end
