class CartsController < ApplicationController
  def show
  end

  def destroy
    @cart = current_cart
    @cart.destroy
    redirect_to talents_path, notice: 'Your cart is currently empty'
  end
end
