class CartItemsController < ApplicationController
  def create
    cart_item = current_cart.cart_items.find_or_initialize_by(cart_item_params)

    if cart_item.save
      respond_to do |format|
        format.html { redirect_to cart_path(current_cart) }
        format.json { render json: { message: 'Item added to cart', cart_item: cart_item } }
      end
    else
      respond_to do |format|
        format.html { redirect_to cart_path(current_cart) }
        format.json { render json: { message: "Item could not be added to cart. #{cart_items.errors.full_messages.join}" } }
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
