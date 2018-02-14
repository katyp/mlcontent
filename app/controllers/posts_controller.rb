class PostsController < ApplicationController
  def show
    @post = Post.first.htmlize
  end
end
