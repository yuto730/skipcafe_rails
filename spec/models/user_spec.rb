require 'rails_helper'

describe User do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "nicknameとemail、passwordとpassword_confirmation、first_nameとlast_nameが存在すれば登録できる" do
        expect(@user).to be_valid
      end
      it "passwordが半角英数字6文字以上であれば登録できること" do
        @user.password = "a0a0a0"
        @user.password_confirmation = "a0a0a0"
        expect(@user).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it "nicknameが空だと登録できない" do
        @user.nickname = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname translation missing: ja.activerecord.errors.models.user.attributes.nickname.blank")
      end
      it "emailが空では登録できない" do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Email translation missing: ja.activerecord.errors.models.user.attributes.email.blank")
      end
      it "重複したemailが存在する場合登録できない" do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email translation missing: ja.activerecord.errors.models.user.attributes.email.taken")
      end
      it "passwordが空では登録できない" do
        @user.password = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Password translation missing: ja.activerecord.errors.models.user.attributes.password.blank")
      end
      it "passwordが半角英数字5文字以下であれば登録できない" do
        @user.password = "a0a0a"
        @user.password_confirmation = "a0a0a"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password translation missing: ja.activerecord.errors.models.user.attributes.password.too_short")
      end
      it "passwordとpassword_confirmationが不一致では登録できないこと" do
        @user.password = "a0a0a0"
        @user.password_confirmation = "a0a0a0a"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation translation missing: ja.activerecord.errors.models.user.attributes.password_confirmation.confirmation")
      end
      it "first_nameが空では登録できない" do
        @user.first_name = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("First name translation missing: ja.activerecord.errors.models.user.attributes.first_name.blank")
      end
      it "last_nameが空では登録できない" do
        @user.last_name = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name translation missing: ja.activerecord.errors.models.user.attributes.last_name.blank")
      end
    end
  end

end
