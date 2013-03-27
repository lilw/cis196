class Notifications < ActionMailer::Base
  default from: "lilyw.416@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_home.subject
  #
  def new_home
    @greeting = "Email Sent!!!"

    mail to: "lilyw.416@gmail.com"
  end
end
