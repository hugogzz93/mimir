module Valued
  module ClassMethods
    def chart_digest(date, scope)
      objects = by_date(date, scope)
      {
        labels: objects.map { |x| x.created_at.strftime("%d/%m") },
        datasets:[{
          label: label,
          data: objects.map(&:value)
        }]
      }.to_json
    end

    def label
      "must define a label method"
    end
  end
  
  module InstanceMethods
  end
  
  def self.included(receiver)
    receiver.extend         ClassMethods
    receiver.send :include, InstanceMethods
  end
end