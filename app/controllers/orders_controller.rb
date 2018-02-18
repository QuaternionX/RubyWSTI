class OrdersController < ApplicationController
    def index
        @orders = Order.all #dzięki dziedziczeniu z ActiveRecord
    end
end