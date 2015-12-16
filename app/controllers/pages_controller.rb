class PagesController < ApplicationController
  def index
  end
  def nighty
    @post = current_user.posts.new
  end
  def blog
    @posts = Post.all
  end
end
