class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(account)
    UserMailer.welcome_email(account).deliver_now
  end
end
