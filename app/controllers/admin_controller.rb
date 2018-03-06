class AdminController < ApplicationController
  def post
    @post = Post.find params[:id]
  end

  def update_post
    p = Post.new params
    p.save!
  end
end
