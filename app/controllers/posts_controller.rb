class PostsController < ApplicationController
  def show
    @post = Post.all
  end
end
