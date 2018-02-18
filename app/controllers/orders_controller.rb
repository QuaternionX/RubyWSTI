class OrdersController < ApplicationController
    def index
        #@orders = Order.all #dzięki dziedziczeniu z ActiveRecord
        @orders = current_user.orders #dzięki dziedziczeniu z ActiveRecord
    end
    def new
        @order = current_user.orders.new
    end
    def create
        current_user.orders.create(order_params)
        redirect_to user_orders_path(current_user)
    end
    def show
        #raise params.to_yaml #wyświetla maparametry wywolania
        #@order = Order.find(params[:id]) # @ - zmienna instancji - przekazywana do widoku
        @order = current_user.orders.find(params[:id]) # @ - zmienna instancji - przekazywana do widoku 
    end

    private
    def order_params
        params.require(:order).permit(:name) #zabezpieczenie wysyłania formularza wbudowane w railsy
    end

end
