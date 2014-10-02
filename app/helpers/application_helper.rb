module ApplicationHelper
  def markdown(text)
    options = {
      link_attributes: { target: "_blank" }
    }

    extensions = {
      autolink: true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe
  end
end
