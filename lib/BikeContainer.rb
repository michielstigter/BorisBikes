module BikeContainer

	DEFAULT_CAPACITY = 10


	def bikes
		@bikes ||=[]
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def dock(bike)
		raise "bike does not exist" if !bike.instance_of?(Bike)
		raise "Station is full" if is_full?
		bikes << bike
	end

	def release(bike)
		# begin
		raise "bike does not exist" if (!bikes.include?(bike))
		bikes.reject! {|bikes| bikes == bike}
		
	end

	def is_full?
		bikes.count == @capacity
	end

	def available_bikes
		bikes.reject {|bike| bike.broken?}
	end

	

end