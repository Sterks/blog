class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, success: 'Статья успешно создана'
    else
      render :new, danger: 'Статью не удалось создать'
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post, success: 'Статья успешно обновлена'
    else
      render :edit, danger: 'Статья не обновлена'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, info: 'Статья успешно удалена'
  end

  private

  def post_params
    params.require(:post).permit(:title, :summary, :body)
  end
end
