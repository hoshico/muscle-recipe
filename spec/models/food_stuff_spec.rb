require 'rails_helper'

RSpec.describe FoodStuff, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.create(:user)
      @menu = FactoryBot.create(:menu)
      @food_stuff = FactoryBot.create(:food_stuff)
      sleep 0.1
    end

    context '内容に問題ない場合' do
      it '全ての値が正しければ登録できること' do
        expect(@food_stuff).to be_valid
      end
    end

    context '内容に問題がある場合' do
      it 'etc_foodがに場合は登録できないこと' do
        @food_stuff.etc_food = ''
        @food_stuff.valid?
        expect(@food_stuff.errors.full_messages).to include("Etc food can't be blank")
      end
    end
  end
end
