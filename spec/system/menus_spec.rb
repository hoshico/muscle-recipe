require 'rails_helper'

RSpec.describe 'レシピ投稿', type: :system do
  before do
    @user = FactoryBot.create(:user)
  end
  context 'レシピ投稿ができるとき'do
    it 'ログインしたユーザーは新規投稿できる' do
      visit new_user_session_path
      fill_in 'メールアドレス', with: @user.email
      fill_in 'パスワード', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq(root_path)
      expect(page).to have_content('レシピを投稿する')
      visit new_menu_path
      attach_file('menu[image]', 'public/images/test_image.jpeg')
      fill_in 'menu[title]', with: "照り焼き"
      fill_in 'menu[food_stuff_attributes][etc_food]', with: "塩胡椒"
      fill_in 'menu[recipe]', with: "やく"
      expect{
          find('input[name="commit"]').click
      }.to change { Menu.count }.by(1)
      expect(current_path).to eq(menus_path)
      expect(page).to have_content('投稿が完了しました。')
      visit root_path
      expect(page).to have_selector(".card_img[src$='test_image.jpeg']")
      expect(page).to have_content("照り焼き")
    end
   end
   context 'レシピ投稿ができないとき'do
    it 'ログインしていないと新規投稿ページに遷移できない' do
      visit root_path
      expect(page).to have_content('レシピを投稿する')
      visit new_menu_path
      expect(current_path).to eq(new_user_session_path)
    end
  end
end