class EmailSender < ActionMailer::Base
  default from: ".com"

  def contact_us_emails(user)
    @user = user
    mail (
    :to => user.email,
    :subject => "New messages from potential clients"
    )
  end
end
