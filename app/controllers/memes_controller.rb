class MemesController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @memes = Meme.order('created_at DESC')
  end

  def show
  end

  def new
    @meme = Meme.new
  end

  def create
    @meme = Meme.new(meme_params)
    if @meme.save
      redirect_to memes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @meme.update_attributes(post_params)
      redirect_to post_path(@meme)
    else
      render :edit
    end
  end

  private

  def meme_params
    params.require(:meme).permit(:stack_id, :mark, :title)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
