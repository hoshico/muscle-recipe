class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @menus = @user.menus
   
    # @foodstuff = @menu.food_stuff
    # protein = @foodstuffs.sum(:total_p)
    # fat = @foodstuffs.sum(:total_f)
    # carbo = @foodstuffs.sum(:total_c)
    # @mypfc_chart = @pfc_chart = {'タンパク質' => protein, '脂質' => fat, '炭水化物' => carbo }
  end
end
