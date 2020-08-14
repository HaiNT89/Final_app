class NewestController < ApplicationController
    def index
        @albums = Album.order(:created_at).last(6)  
        @albums.each do |a|
            b = a.account_id
            @account = Account.where(id: b)
        end
    end

    
end
