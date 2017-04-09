class HomeController < ApplicationController
  def index
    @state = Money.state
    @banner = Banner.last
    @tasks =  Task.tasks_for Time.zone.now, 'day'
    @exclude_autogen = [ Money ]
    @objects = [Money.new, Activity.new, Weight.new, Task.new, Banner.new, Event.new, Tag.new]
    @graph_objects = [Money, Weight, Activity]
    @object_data = @graph_objects.map { |x| x.chart_digest({}, Time.zone.now, 'year') }
    gon.objects = @graph_objects.map { |x| x.name.downcase }
    gon.object_data = @object_data
    gon.tags = Tag.all.collect {|x| {name: x.name} }
  end

  def calendar
    @week = ["Monday", "Tuesday", "Wednesday",
             "Thursday", "Friday", "Saturday", "Sunday"]
    @events = current_user.events_for('week').group_by(&:week_day)
  end
end
