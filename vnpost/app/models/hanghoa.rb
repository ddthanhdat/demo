class Hanghoa < ApplicationRecord
	  # belongs_to :state
	belongs_to :vandon
	belongs_to :dichvu
	belongs_to :dichvucongthem
	has_many :comments, dependent: :destroy
	# belongs_to :nguoilap
	     
 	 
	


	 # def state_transition_for(comment)
		# if comment.previous_state != comment.state
		# 	content_tag(:p) do
		# 	value = "<strong><i class='fa fa-gear'></i> state changed</strong>"
		# if comment.previous_state.present?
		# 	value += " from #{render comment.previous_state}"
		# end
		# 	value += " to #{render comment.state}"
		# 	value.html_safe
		# end
		# end
		# end
end
