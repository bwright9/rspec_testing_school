class School < ActiveRecord::Base
	validates_presence_of :name, :size, :established 

	def name_established
		"#{name} was established in: #{established}"
	end 

	def school_size 
		if(size.to_i >= 10000)
			"5A"
		elsif(size.to_i > 5000)
			"4A"
		else
			"3A"
		end 
	end
end 



