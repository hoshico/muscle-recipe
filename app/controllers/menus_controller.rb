class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  def index
    @menus = Menu.all.order("created_at DESC")
  end 

  def new
    @menu = Menu.new
    @menu_food_stuff = MenuFoodStuff.new
  end

  def create
    @menu_food_stuff = MenuFoodStuff.new(menu_params)
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
    params.require(:menu).permit(:title, :image, :recipe, :meet_id, :meet_quantity, :fish_id, :fish_quantity, :vege_id, :vege_quantity, :dairy_id, :dairy_quantity, :etc_food, :total_p, :total_f, :total_c).merge(user_id: current_user.id, menu_id: params[:menu_id])
  end

  def set_menu
    @menu = Menu.find(params[:id])
  end
end
