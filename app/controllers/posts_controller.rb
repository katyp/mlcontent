class PostsController < ApplicationController
  # At some point I will need a better way of either
  # 1. Showing consecutive posts, if there are missing integers
  # 2. Removing posts without deleting them, so that there are
  #    always posts returned. But then I still need to get the
  #    "next" post. Rails probably has a way to do this with scopes.
  def show
    # Current post
    @id = params['id'].to_i
    @post = Post.find(@id)
    @post.htmlize!

    # Previous post
    if @id != @first_post.id
      @previous_post = post_path(@id - 1)
    end

    # Next post
    if @id != Post.last.id
      @next_post = post_path(@id + 1)
    end
  end
end
