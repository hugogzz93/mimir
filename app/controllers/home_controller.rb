class HomeController < ApplicationController
  def index
  	@state = Money.state
    @banner = Banner.last
    @tasks =  Task.tasks_for Time.zone.now, "day"
    @objects = [Money.new, Activity.new, Weight.new, Task.new, Banner.new]
    @object_data = @objects.map { |x| x.class.chart_digest({},Time.zone.now, "year") }
    gon.objects = @objects.map { |x| x.class.name.downcase }
    gon.object_data = @object_data
  end

  def calendar
    @events = current_user.events_for('week').group_by(&:week_day)
  end
end
