require 'rails_helper'

RSpec.describe 'レシピ投稿', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @menu = FactoryBot.create(:menu)
    @food_stuff = FactoryBot.create(:food_stuff)
  end
  context 'レシピ投稿ができるとき'do
    it 'ログインしたユーザーは新規投稿できる' do
      # ログインする
      visit new_user_session_path
      fill_in 'メールアドレス', with: @user.email
      fill_in 'パスワード', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq(root_path)
      # 新規投稿ページへのボタンがあることを確認する
      expect(page).to have_content('レシピを投稿する')
      # menu.food_stuff.total_p = @menu.food_stuff.total_p
      # menu.food_stuff.total_f = @menu.food_stuff.total_f
      # menu.food_stuff.total_c = @menu.food_stuff.total_c
      # 投稿ページに移動する
      visit new_menu_path
      # フォームに情報を入力する
      attach_file('menu[image]', 'public/images/test_image.jpeg')
      # fill_in 'menu[image]', with: @menu.image
      fill_in 'menu[title]', with: @menu.title
      fill_in 'menu[food_stuff_attributes][etc_food]', with: @food_stuff.etc_food
      fill_in 'menu[recipe]', with: @menu.recipe

      # fill_in 'total-protein', with: ""
      # fill_in 'total-fat', with: @food_stuff.total_f
      # fill_in 'total-carbo', with: @food_stuff.total_c
      # 送信するとTweetモデルのカウントが1上がることを確認する
      expect{
          find('input[name="commit"]').click
      }.to change { Menu.count }.by(1)
      # 投稿完了ページに遷移することを確認する
      expect(current_path).to eq(menus_path)
      # 「投稿が完了しました」の文字があることを確認する
      expect(page).to have_content('投稿が完了しました。')
      # トップページに遷移する
      visit root_path
      # トップページには先ほど投稿した内容のツイートが存在することを確認する（画像）
      # expect(page).to have_selector( "public/images/test_image.jpeg")
      # トップページには先ほど投稿した内容のツイートが存在することを確認する（テキスト）
      expect(page).to have_content(@menu.title)
    end
   end
   context 'レシピ投稿ができないとき'do
    it 'ログインしていないと新規投稿ページに遷移できない' do
      # トップページに遷移する
      # 新規投稿ページへのボタンがないことを確認する
    end
  end
end