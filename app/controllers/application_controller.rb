class ApplicationController < ActionController::Base

  def current_cart
    current_or_guest_user.carts.current
  end

  helper_method :current_cart
end


