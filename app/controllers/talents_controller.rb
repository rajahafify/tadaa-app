class TalentsController < ApplicationController
  def index
    @talents = Talent.all.order("RANDOM()").where.not(id: current_cart.cart_items.where(purchasable_type: 'Talent').pluck(:purchasable_id))
  end

  def show
    @talent = Talent.find(params[:id])
  end

  def new
    @talent = User.first.talents.new
  end

  def create
    @talent = User.first.talents.new(talent_params)
    if @talent.save
      redirect_to @talent
    else
      render 'new'
    end
  end

  def edit
    @talent = Talent.find(params[:id])
  end

  def update
    @talent = Talent.find(params[:id])
    if @talent.update(talent_params)
      redirect_to @talent
    else
      render 'edit'
    end
  end

  def destroy
    @talent = Talent.find(params[:id])
    @talent.destroy
    redirect_to talents_path
  end

  private

  def talent_params
    params.require(:talent).permit(
      :name, :description, :subtitle,
      :instagram_url, :instagram_handle,
      :twitter_url, :twitter_handle,
      images: []
    )
  end
end
