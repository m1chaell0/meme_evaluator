class MemesController < ApplicationController
  before_action :set_meme, only: [:show, :edit, :update, :destroy]

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
    if @meme.update_attributes(meme_params)
      redirect_to meme_path(@meme)
    else
      render :edit
    end
  end

  def destroy
    @meme = Meme.find(params[:id])
    @meme.destroy

    redirect_to memes_path
  end

  private

  def meme_params
    params.require(:meme).permit(:stack_id, :mark, :title, :picture_url, :picture_url_cache, :remove_picture)
  end

  def set_meme
    @meme = Meme.find(params[:id])
  end
end
