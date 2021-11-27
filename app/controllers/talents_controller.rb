class TalentsController < ApplicationController
  def index
    @talents = Talent.all.order("RANDOM()")
  end
end
