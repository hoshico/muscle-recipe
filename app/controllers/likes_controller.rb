class LikesController < ApplicationController
  before_action :set_menu

  def create
#     @like = current_user.likes.new(menu_id: @menu.id)
#     @like.save
#     @likes = Like.where(menu_id: @menu.id)
   like = Like.create(user_id: current_user.id, menu_id: @menu.id)
   like.save
  end

  def destroy
    @like = Like.find_by(menu_id: @menu.id, user_id: current_user.id).destroy
    @likes = Like.where(menu_id: @menu.id)
  end

  private

  def set_menu
    @menu = Menu.find(params[:menu_id])
  end

end
