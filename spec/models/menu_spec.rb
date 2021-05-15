require 'rails_helper'

RSpec.describe Menu, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.create(:user)
      @menu = FactoryBot.create(:menu)
      sleep 0.1
    end

    context '内容に問題ない場合' do
      it '全ての値が正しければ登録できること' do
        expect(@menu).to be_valid
      end
    end

    context '内容に問題がある場合' do
      it 'imageがない場合は登録できないこと' do
        @menu.image = nil
        @menu.valid?
        expect(@menu.errors.full_messages).to include("Image can't be blank")
      end
      it 'titleがない場合は登録できないこと' do
        @menu.title = ''
        @menu.valid?
        expect(@menu.errors.full_messages).to include("Title can't be blank")
      end
      it 'titleが21文字以上の場合は登録できないこと' do
        @menu.title = 'あああああああああああああああああああああ'
        @menu.valid?
        expect(@menu.errors.full_messages).to include("Title is too long (maximum is 20 characters)")
      end
      it 'recipeがない場合は登録できないこと' do
        @menu.recipe = ''
        @menu.valid?
        expect(@menu.errors.full_messages).to include("Recipe can't be blank")
      end
      it 'recipeが500文字以上では登録できないこと' do
        @menu.recipe = 'あ' * 501
        @menu.valid?
        expect(@menu.errors.full_messages).to include('Recipe is too long (maximum is 5 characters)')
      end
    end
  end
end
