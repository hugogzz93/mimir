module ApplicationHelper

  def render_alert(type, message, submessage)
    render partial: 'shared/alert', locals: {type:type,
                                             message:message,
                                             submessage:submessage}
  end
end


    
    
    
