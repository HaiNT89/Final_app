class UserMailer < ApplicationMailer
    default from: 'pokiwar32019@gmail.com'
    
    def welcome_email(account)
        @account = account
        #@url  = 'http://example.com/login'
        mail(to: @account.email, subject: 'Welcome to NUS')
    end
end
