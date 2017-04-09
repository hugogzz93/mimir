class TasksController < CrudController
	def update
		params[:task][:status] = params[:task][:status].to_i
		super
	end
end
