class HomeController < ApplicationController
  def index
    @objects = []
    @objects << Money.new
    @objects << Activity.new
    @objects << Weight.new
    @objects << Food.new
  end
end
