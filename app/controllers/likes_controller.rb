class LikesController < ApplicationController
  before_action :set_menu

  def create
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
