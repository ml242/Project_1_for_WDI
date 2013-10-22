class ClimbsController < ApplicationController
  def new
    @ascend = Ascend.new
  end
end