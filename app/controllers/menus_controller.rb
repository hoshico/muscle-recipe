class MenusController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  before_action :set_menu, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def index
    @menus = Menu.all.includes(:user).order("created_at DESC")
  end 

  def new
    @menu = Menu.new
    @menu.build_food_stuff
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.valid?
      @menu.save
    else
      render :new
    end
  end

  def show
    @food_stuff = FoodStuff.find_by(menu_id: @menu.id)
    protein = @food_stuff.total_p
    fat = @food_stuff.total_f
    carbo = @food_stuff.total_c
    @pfc_chart = {'タンパク質' => protein, '脂質' => fat, '炭水化物' => carbo }
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
    params.require(:menu).permit(:title, :image, :recipe, food_stuff_attributes: [:meet_id, :meet_quantity, :fish_id, :fish_quantity, :vege_id, :vege_quantity, :dairy_id, :dairy_quantity, :etc_food, :total_p, :total_f, :total_c, :user_id]).merge(user_id: current_user.id)
  end

  def set_menu
    @menu = Menu.find(params[:id])
  end

  def move_to_index
    return redirect_to action: :index if current_user.id != @menu.user_id
  end
end
