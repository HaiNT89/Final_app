class UserMailer < ApplicationMailer
    #default from: 'notifications@example.com'
    
    def welcome_email account
        @account = account
        #@url  = 'http://example.com/login'
        mail(to: @account.email, subject: 'Welcome to NUS')
    end
end
