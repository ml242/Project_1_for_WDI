class AscendsController < ApplicationController
  def new
    @ascends = Ascends.new
  end
end