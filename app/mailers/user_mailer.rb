class UserMailer < ActionMailer::Base

  default from: 'hello@profcyn.com'
  layout 'default_mail'

  def reset_password_email(user)
    @user = user
    @url = edit_password_reset_url(user.reset_password_token)
    mail to: user.email,
         subject: 'Reset Password',
         template_path: 'user_mailer',
         template_name: 'reset_password_email'
  end

end
