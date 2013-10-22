class CragsController < ApplicationController
  def new
    @crag = Crag.new
  end
end