class OrdersController < ApplicationController
    def index
        @orders = Order.all #dzięki dziedziczeniu z ActiveRecord
    end
    def show
        #raise params.to_yaml #wyświetla maparametry wywolania
        @order = Order.find(params[:id]) # @ - zmienna instancji - przekazywana do widoku
    end
end