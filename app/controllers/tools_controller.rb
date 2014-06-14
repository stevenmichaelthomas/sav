class ToolsController < ApplicationController
  def index
    @categories = Category.all
  end
end
