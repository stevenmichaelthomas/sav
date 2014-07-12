class ToolsController < ApplicationController
  def index
    @categories = Category.with_resources
  end
end
