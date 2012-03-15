
class AdminController < ApplicationController


                     before_filter :require_login
  def gallery
    @posts = Post.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts}

    end
    end
  def blog
    @blogs = Blog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blogs }
    end
  end

  end

