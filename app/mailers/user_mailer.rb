class UserMailer < ApplicationMailer
    default from: 'jwesleyrodgers@gmail.com'

    def welcome_email(user)
        @user = user
        @url = 'https://kitwithwes.herokuapp.com'
        mail(to: @user.email,
            subject: "Nice Meeting You Today!",
            template_path: 'user_mailer',
            template_name: 'kit_email')
    end
end
