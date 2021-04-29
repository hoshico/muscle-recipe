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

  private
  def menu_params
    params.require(:menu).permit(:title, :image, :recipe)
  end
end
