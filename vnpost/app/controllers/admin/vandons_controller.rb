class Admin::VandonsController < Admin::ApplicationController
	 layout "admin"

	 before_action :set_vandon, only: [:show, :edit, :update, :destroy]

	def index
		# @vandons = policy_scope(vandon)

 	   @vandons = Vandon.all.paginate(page: params[:page], per_page: 5)

	end

	

	def show
	
	end

	def edit
		# authorize @vandon, :update?
	end

	def update
		 # authorize @vandon, :update?
		@vandon = Vandon.find(params[:id])
		if @vandon.update(vandon_params)
		flash[:notice] = "vandon has been updated."
		redirect_to @vandon
		else
			flash.now[:alert] = "vandon has not been updated."
			render "edit"
		end
	end

	def update
		authorize @vandon, :update?
		@vandon = Vandon.find(params[:id])
		if @vandon.update(vandon_params)
		flash[:notice] = "Cập nhật thành công"
		redirect_to @vandon
		else
			flash.now[:alert] = "Cập nhật không thành công."
			render "edit"
		end
	end

	def destroy
		@vandon = Vandon.find(params[:id])
		@vandon.destroy
		flash[:notice] = "Trạng thái đã được xóa."
		redirect_to vandons_path
	end


	

	private
		def vandon_params
			params.require(:vandon).permit( :mota, :term)
		end

		def set_vandon
			@vandon = Vandon.find(params[:id])
			rescue ActiveRecord::RecordNotFound
			flash[:alert] = "The vandon you were looking for could not be found."
			redirect_to vandons_path
		end
end
