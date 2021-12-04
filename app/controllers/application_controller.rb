class ApplicationController < ActionController::Base

  def current_cart
    current_user.cart.current
  end
end


