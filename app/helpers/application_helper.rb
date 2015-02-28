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

    content_tag :div, class: 'sav-markdown' do
      markdown.render(text).html_safe
    end
  end
end
