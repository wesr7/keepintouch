class UserMailer < ApplicationMailer
    default from: 'jwesleyrodgers@gmail.com'

    def welcome_email(user)
        @user = user
        @url = 'https://keepintouch.herokuapp.com'
    end
end
