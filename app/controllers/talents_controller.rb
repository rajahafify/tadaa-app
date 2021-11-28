class TalentsController < ApplicationController
  def index
    @talents = Talent.all.order("RANDOM()")
  end

  def show
    @talent = Talent.find(params[:id])
  end
end
