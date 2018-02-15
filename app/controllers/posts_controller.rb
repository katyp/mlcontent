class PostsController < ApplicationController
  def show
    # Current post
    @id = params['id'].to_i
    @post = Post.find(@id)
    @post.htmlize!

    # Previous post
    if @id != 1
      @previous_post = post_path(@id - 1)
    end

    # Next post
    if @id != Post.count
      @next_post = post_path(@id + 1)
    end
  end
end
