class UsersController < ApplicationController
    def index
        @users = User.all #dzięki dziedziczeniu z ActiveRecord
    end
end