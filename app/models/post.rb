require 'redcarpet'

class Post < ApplicationRecord
  before_validation :set_posted_date

  def set_posted_date
    if !posted_date
      self.posted_date = Time.now
    end
  end

  def htmlize!
    renderer = Redcarpet::Render::HTML.new
    markdown = Redcarpet::Markdown.new(renderer)
    self.content = markdown.render(content)
  end
end
