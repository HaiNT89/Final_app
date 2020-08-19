class NewestController < ApplicationController
    def index
        # @albums = Album.order(:created_at).last(6).page params[:page]
        @albums = Album.all.page(params[:page]).per(4).order(created_at: :DESC)
        @account = Account.joins(:albums)
    end    
end
