require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end

    context '内容に問題ない場合' do
      it 'nicknameがあれば登録できること' do
        @user.nickname = 'リク太郎'
        expect(@user).to be_valid
      end
      it 'emailがあれば登録できる' do
        @user.email = 'test@test.com'
        expect(@user).to be_valid
      end
      it 'passwordが6文字以上であれば登録できること' do
        @user.password = 'yasu11'
        @user.password_confirmation = 'yasu11'
        expect(@user).to be_valid
      end
      it 'passwordは半角英数混合であれば登録できること' do
        @user.password = 'yasu22'
        @user.password_confirmation = 'yasu22'
        expect(@user).to be_valid
      end
      it 'passwordとpassword_confirmationが一致すれば登録できること' do
        @user.password = 'yasu0205'
        @user.password_confirmation = 'yasu0205'
        expect(@user).to be_valid
      end
    end

    context '内容に問題がある場合' do
      it 'nicknameがない場合は登録できないこと' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'emailがない場合は登録できないこと' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it '重複したemailが存在する場合登録できないこと' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end
      it 'emailに＠がない場合は登録できないこと' do
        @user.email = 'testtest'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
      it 'passwordがない場合は登録できないこと' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'passwordが5文字以下であれば登録できないこと' do
        @user.password = 'yasu1'
        @user.password_confirmation = 'yasu1'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end
      it 'passwordは英語のみでは登録できない' do
        @user.password = 'yasuyuki'
        @user.password_confirmation = 'yasuyuki'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid. Input half-width characters.')
      end
      it 'passwordは数字のみでは登録できない' do
        @user.password = '111111'
        @user.password_confirmation = '111111'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid. Input half-width characters.')
      end
      it 'passwordは全角では登録できない' do
        @user.password = 'ya１１１１'
        @user.password_confirmation = 'ya１１１１'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid. Input half-width characters.')
      end

      it 'passwordとpassword_confirmationが不一致では登録できないこと' do
        @user.password = 'yasu0205'
        @user.password_confirmation = 'yasu0305'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
    end
  end
end
