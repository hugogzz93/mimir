class MoneyController < CrudController
	def create
		tags = params[:money][:tag_relations][:tag_id]
		params[:money].delete :tag_relations
		object = model.new object_params
		if object.save
			Tag.add_tags object, tags
		  respond_to do |format|
		    format.html { redirect_to collection_path }
		    format.js do
		      @message = 'Success!'
		      @submessage = "#{model.name.capitalize} Updated!"
		      @type = 'success'
		    end
		  end
		else
		  respond_to do |format|
		    format.html { render :new }
		    format.js do
		      @message = 'Error'
		      @submessage = @object.errors.full_messages.first.to_s
		      @type = 'error'
		    end
		  end
		end
	end
end
