class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end 

  def new
    @menu = Menu.new
  end

  def create
    Menu.create(menu_params)
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update(menu_params)
      redirect_to menu_path(@menu.id)
    else
      render :edit
    end
  end

  private
  def menu_params
    params.require(:menu).permit(:title, :image, :recipe).merge(user_id: current_user.id)
  end

  def set_menu
    @menu = Menu.find(params[:id])
  end
end
