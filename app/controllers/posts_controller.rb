class PostsController < ApplicationController
  def index
  end

  def new
  end

  def create

  end

  def edit
  end

  def show
  end
  
  def update
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:shop_name, :shop_address, :description, :image)
  end
end