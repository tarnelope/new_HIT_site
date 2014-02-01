class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone
  attribute :message, :validate => true
  attribute :nickname,  :captcha  => true, :format => { :with => /^$/ }

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "HIT Inquiry from Website",
      :to => [ "cauhaus2040@gmail.com", "teresatarn@gmail.com" ],
      :from => %("#{name}" <#{email}>)
    }
  end
end