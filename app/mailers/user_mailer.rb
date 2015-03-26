class UserMailer < ApplicationMailer

  def confirmation_instructions(user)
    @user = user
    @greeting = "Hi"

    mail to: user.username, subject: "Sign up confirmation"
  end
end
