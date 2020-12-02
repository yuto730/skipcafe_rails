require 'rails_helper'

describe Admin do
  before do
    @news = FactoryBot.build(:admin)
  end

  describe 'お知らせ投稿' do
    context '投稿がうまくいくとき' do
      it "titleとimage、contentが存在すれば投稿できる" do
        expect(@news).to be_valid
      end
    end

    context '投稿がうまくいかないとき' do
      it "titleが空だと投稿できない" do
        @news.title = nil
        @news.valid?
        expect(@news.errors.full_messages).to include("Title translation missing: ja.activerecord.errors.models.admin.attributes.title.blank")
      end
      it "titleが20文字以上だと投稿できない" do
        @news.title = "あ" * 21
        @news.valid?
        expect(@news.errors.full_messages).to include("Title translation missing: ja.activerecord.errors.models.admin.attributes.title.too_long")
      end
      it "imageが空だと投稿できない" do
        @news.image = nil
        @news.valid?
        expect(@news.errors.full_messages).to include("Image translation missing: ja.activerecord.errors.models.admin.attributes.image.blank")
      end
      it "contentが空だと投稿できない" do
        @news.content = nil
        @news.valid?
        expect(@news.errors.full_messages).to include("Content translation missing: ja.activerecord.errors.models.admin.attributes.content.blank")
      end
    end
  end

end
