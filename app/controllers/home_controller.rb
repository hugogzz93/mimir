class HomeController < ApplicationController
  def index
    @objects = [Money.new, Activity.new, Weight.new]
    @object_data = @objects.map { |x| x.class.chart_digest(Time.zone.now, "month") }
    gon.objects = @objects.map { |x| x.class.name.downcase }
    gon.object_data = @object_data
  end
end
