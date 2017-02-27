class HomeController < ApplicationController
  def index
    @banner = Banner.last
    @tasks =  Task.tasks_for Time.zone.now, "day"
    @objects = [Money.new, Activity.new, Weight.new, Task.new, Banner.new]
    @object_data = @objects.map { |x| x.class.chart_digest({},Time.zone.now, "month") }
    gon.objects = @objects.map { |x| x.class.name.downcase }
    gon.object_data = @object_data
  end
end
