class PagesController < ApplicationController
  def home
    @upcoming_events = Event.upcoming.limit(5)
  end

  def support
    @description_url = "https://s3-us-west-2.amazonaws.com/sav-project/PSP-PositionDescription.pdf"

    @support = Support.new
  end

  def contact
    @contact = Contact.new
  end
end
