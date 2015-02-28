class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :add_classes

  helper_method :body_classes, :page_content_for

  def pages
    @pages ||= Page.all
  end

  def page_content_for(name)
    @page = pages.find_by(name: name)

    @page.present? ? @page.text : ''
  end

  def body_classes
    @_body_classes ||= []
  end

  def add_classes
    body_classes << [:page, controller_name , action_name == 'index' ? nil : action_name].compact.join('-')
  end
end
