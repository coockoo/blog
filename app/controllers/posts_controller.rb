class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.where(id: params[:id])
  end
  def new
    @post = Post.new(params[:post])
  end
  def create
    @post = Post.new(params[:post])
    @post.save
  end
  def edit 
    @post = Post.where(id: params[:id])
  end
  def update 
    @post = Post.where(id: params[:id])
    @post.save
  end
  def destroy
    post = Post.where(id: params[:id])
    post.destroy
  end
  
end
