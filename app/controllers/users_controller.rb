class UsersController < CrudController

	def expenses
		gon.chart_data = Money.get_total_per_tag_for_user current_user
	end
end
