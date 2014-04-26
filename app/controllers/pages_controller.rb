class PagesController < ApplicationController
  def home
    @resources = Resource.all
  end
end
