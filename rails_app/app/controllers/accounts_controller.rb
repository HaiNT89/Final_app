class AccountsController < ApplicationController
    def index
    
    end

    def new
        @account = Account.new
    end

    def create
        @account = Account.new account_params
        if @account.save
            SendEmailJob.set(wait: 5.minutes).perform_later @account
            flash[:success] = "Register success, please check mail!"
            # UserMailer.welcome_email(@account).deliver_later
            redirect_to accounts_path
        else
            flash[:success] = "Register failed"
            render :new
        end
    end
    private
    def account_params
        params.require(:account).permit :first_name, :last_name, :email
    end
end
