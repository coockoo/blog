class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.where(id: params[:id]).first
  end
  def new
    @post = Post.new(params[:post])
  end
  def create
    @post = Post.new(params[:post])
    respond_to do |format| 
      if @post.save
        format.html { redirect_to posts_path }
      else
        format.html { redirect_to new_post_path }
      end
    end
  end
  def edit 
    @post = Post.where(id: params[:id]).first
  end
  def update 
    @post = Post.where(id: params[:id]).first
    @post.update_attributes(params[:post])
    @post.save
    redirect_to post_path(@post)
  end
  def destroy
    post = Post.where(id: params[:id]).first
    post.destroy
  end
  
end
