class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :populate_posts

  def populate_posts
    @posts = Post.all
    @first_post = Post.first
  end
end
