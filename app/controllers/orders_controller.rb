class OrdersController < ApplicationController
    def destroy
        order[:user_id] = nil
        redirect_to root_path
    end
end
