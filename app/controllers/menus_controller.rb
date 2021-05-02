class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  def index
    @menus = Menu.all.order("created_at DESC")
  end 

  def new
    @menu = Menu.new
  end

  def create
    Menu.create(menu_params)
  end

  def show
  end

  def edit
  end

  def update
    if @menu.update(menu_params)
      redirect_to menu_path(@menu.id)
    else
      render :edit
    end
  end

  def destroy
    @menu.destroy
    redirect_to root_path
  end

  private
  def menu_params
    params.require(:menu).permit(:title, :image, :meet_id, :recipe).merge(user_id: current_user.id)
  end

  def set_menu
    @menu = Menu.find(params[:id])
  end
end
