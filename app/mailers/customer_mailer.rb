class CustomerMailer < ApplicationMailer

  def confirmation_instructions(user)
    @user = user
    @greeting = "Welcome to the Dungeon, Horny says hello"

    mail to: user.email
  end
end
