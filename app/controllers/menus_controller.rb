class MenusController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]

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
    @menu = Menu.find(params[:id]) 
    @food_stuff = FoodStuff.find_by(menu_id: @menu.id)
  end

  # def edit
  #   @menu = Menu.find(params[:id]) 
  #   @food_stuff = FoodStuff.find_by(menu_id: @menu.id)
  #   @menu_food_stuff = MenuFoodStuff.find(params[:id])
  # end

  # def update
  #   if @menu_food_stuff.update(menu_params)
  #     redirect_to menu_path(@menu.id)
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to root_path
  end

  private
  def menu_params
    params.require(:menu_food_stuff).permit(:title, :image, :recipe, :meet_id, :meet_quantity, :fish_id, :fish_quantity, :vege_id, :vege_quantity, :dairy_id, :dairy_quantity, :etc_food, :total_p, :total_f, :total_c).merge(user_id: current_user.id)
  end

  # def load_menu
  #   @menu = current_user.menu.find(params[:id])
  # end
end
