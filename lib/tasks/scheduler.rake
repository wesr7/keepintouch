namespace :scheduler do

desc "This sends welcome email to new users"
task :send_email => :environment do
  UserMailer.welcome_email(@user)
end

end