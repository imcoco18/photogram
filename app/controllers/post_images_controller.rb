class PostImagesController < ApplicationController
	#deviseにより使える、ログインユーザのみ入れる
	before_action :authenticate_user!

  def index
  	#kaminari使用 #reverse_orderで降順
  	@post_images = PostImage.page(params[:page]).reverse_order
  end

  def show
  end

  def new
  end

  def edit
  end
end
