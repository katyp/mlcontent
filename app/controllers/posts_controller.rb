class PostsController < ApplicationController
  def show
    @post = Post.first
    @post.htmlize!
  end
end
