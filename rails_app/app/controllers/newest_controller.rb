class NewestController < ApplicationController
    def index
        @albums = Album.where("mode_album = ?",'public').order(:created_at).last(6)
        #@album_model = Album.all
        # @albums.each do |a|
        #     b = a.account_id
        #     @account = Account.where(id: b)
        # end
        @account = Account.joins(:albums)
        # @account_album = @account.where(id: album.account_id).take

    end

    
end
