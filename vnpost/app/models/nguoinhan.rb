class Nguoinhan < ApplicationRecord
	belongs_to :vandon
	belongs_to :tinh
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	reverse_geocoded_by :latitude, :longitude do |obj,results|
    if geo = results.first
		obj.city    = geo.city
	    obj.province    = geo.province
	    obj.sub_state = geo.sub_state
	end
	end
	after_validation :reverse_geocode 
end
