require 'rails_helper'

describe Contact do
  before do
    @contact = FactoryBot.build(:contact)
  end

  describe 'お問い合わせ' do
    context 'お問い合わせがうまくいくとき' do
      it "nameとmail、mail_confirmationとmessageが存在すれば送信できる" do
        expect(@contact).to be_valid
      end
    end

    context 'お問い合わせがうまくいかないとき' do
      it "nameが空では送信できない" do
        @contact.name = nil
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Name translation missing: ja.activerecord.errors.models.contact.attributes.name.blank")
      end
      it "mailが空では送信できない" do
        @contact.mail = nil
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Mail translation missing: ja.activerecord.errors.models.contact.attributes.mail.blank")
      end
      it "mail_confirmationが空では送信できない" do
        @contact.mail_confirmation = nil
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Mail confirmation translation missing: ja.activerecord.errors.models.contact.attributes.mail_confirmation.blank")
      end
      it "mailとmail_confirmationが不一致では送信できない" do
        @contact.mail = "skip@gmail.com"
        @contact.mail_confirmation = "skipcafe@gmail.com"
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Mail confirmation translation missing: ja.activerecord.errors.models.contact.attributes.mail_confirmation.confirmation")
        binding.pry
      end
      it "messageが空では送信できない" do
        @contact.message = nil
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Message translation missing: ja.activerecord.errors.models.contact.attributes.message.blank")
      end
      it "messageが1000文字以上だと送信できない" do
        @contact.message = "あ" * 1001
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Message translation missing: ja.activerecord.errors.models.contact.attributes.message.too_long")
      end
    end

  end

end
