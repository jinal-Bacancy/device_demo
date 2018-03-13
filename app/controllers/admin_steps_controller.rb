class AdminStepsController < ApplicationController
	include Wicked::Wizard
  steps :personal, :general

  def show
  	@admin = current_admin
  	render_wizard
	end

	def update1
	  @admin = current_admin
	  @admin.update_attributes(admin_params)
	  render_wizard @admin
	end

	private
	def admin_params
		params.require(:admin).permit(:name, :phoneno, :DOB, :address, :pname, :password, :email, :confirm_password)
	end

end
