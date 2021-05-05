class MenusController < ApplicationController
  # before_action :set_menu, only: [:show, :edit, :update, :destroy]

  def index
    @menus = Menu.all.order("created_at DESC")
  end 

  def new
    @menu_food_stuff = MenuFoodStuff.new
  end

  def create
    @menu_food_stuff = MenuFoodStuff.new(menu_params)
    if @menu_food_stuff.valid?
      @menu_food_stuff.save
    else
      render :new
    end
  end

  def show
  end

  def edit
    @menu_food_stuff = MenuFoodStuff.find(params[:menu_id])
  end

  def update
    if @menu_food_stuff.update(menu_params)
      redirect_to menu_path(@menu.id)
    else
      render :edit
    end
  end

  def destroy
    @menu_food_stuff.destroy
    redirect_to root_path
  end

  private
  def menu_params
    params.require(:menu_food_stuff).permit(:title, :image, :recipe, :meet_id, :meet_quantity, :fish_id, :fish_quantity, :vege_id, :vege_quantity, :dairy_id, :dairy_quantity, :etc_food, :total_p, :total_f, :total_c).merge(user_id: current_user.id)
  end

  def load_menu
    @menu = Menu.find(params[:id])
  end
end
