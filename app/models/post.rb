require 'redcarpet'

class Post < ApplicationRecord
  # attr_accessor :content

  def htmlize!
    renderer = Redcarpet::Render::HTML.new
    markdown = Redcarpet::Markdown.new(renderer)
    self.content = markdown.render(content)
  end
end
