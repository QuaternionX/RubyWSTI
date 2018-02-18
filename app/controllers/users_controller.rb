class UsersController < ApplicationController
    def index
        @users = User.all #dzięki dziedziczeniu z ActiveRecord
    end
    def show
        #raise params.to_yaml #wyświetla maparametry wywolania
        @user = User.find(params[:id]) # @ - zmienna instancji - przekazywana do widoku
        
    end
end