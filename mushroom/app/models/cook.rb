class Cook < ActiveRecord::Base

	def self.search_for(query)
		where('date LIKE :query OR date.strftime LIKE :query or notes LIKE :query', query: "%#{query}%")
	end

	validates :date, :bagid, :soaktime, :cooktime, :substrate, :spawn, :presence => true
	
end
