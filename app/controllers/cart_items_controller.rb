class CartItemsController < ApplicationController
  before_action :set_cart, only: [:create, :destroy]

  def create
    current_user.cart.cart_items.new(cart_item_params)

    if current_user.cart.save
      respond_to do |format|
        format.html { redirect_to cart_path }
        format.json { render json: { message: 'Item added to cart' } }
      end
    end
  end

  def destroy
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:purchasable_id, :purchasable_type)
  end
end
