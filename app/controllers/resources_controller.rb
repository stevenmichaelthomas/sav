class ResourcesController < ApplicationController
  def index
    @categories = Category.all
  end
end
