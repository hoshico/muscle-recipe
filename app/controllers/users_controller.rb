class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @menus = @user.menus

    @myprotein = FoodStuff.where(menu_id: @menus.ids).sum(:total_p)
    @myfat = FoodStuff.where(menu_id: @menus.ids).sum(:total_f)
    @mycarbo = FoodStuff.where(menu_id: @menus.ids).sum(:total_c)
    @mypfc_chart = @pfc_chart = { 'タンパク質' => @myprotein, '脂質' => @myfat, '炭水化物' => @mycarbo }
  end
end
