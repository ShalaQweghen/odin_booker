Airport.create!(name: "San Francisco International Airport",
				code: "SFO")

Airport.create!(name: "San Fernando International Airport",
				code: "FDO")

Airport.create!(name: "Grand Canyon National Park Airport",
				code: "GCN")

Airport.create!(name: "Miami International Airport",
				code: "MIA")

Airport.create!(name: "Orlando International Airport",
				code: "MCO")

Airport.create!(name: "Chicago O'Hare International Airport",
				code: "ORD")

Airport.create!(name: "Dane County Regional Airport",
				code: "MSN")

Airport.create!(name: "Portland International Airport",
				code: "PDX")


list = (0..9).to_a
airports = (1..8).to_a
airports.each do |a|
	airports.each do |b|
		if a == b
			next
		else
			Flight.create!(departure_id: a,
					   	   arrival_id: b,
					   	   date: b.even? ? 2.days.from_now : 2.days.from_now + 50000,
					   	   name: "TK#{list.sample}#{list.sample}#{list.sample}#{list.sample}",
						   duration: (100..200).to_a.sample)
		end
	end
end

airports.reverse.each do |a|
	airports.reverse.each do |b|
		if a == b
			next
		else
			Flight.create!(departure_id: a,
					   	   arrival_id: b,
					   	   date: b.even? ? 3.days.from_now : 3.days.from_now + 50000,
					   	   name: "TK#{list.sample}#{list.sample}#{list.sample}#{list.sample}",
						   duration: (100..200).to_a.sample)
		end
	end
end

airports.each do |a|
	airports.each do |b|
		if a == b
			next
		else
			Flight.create!(departure_id: a,
					   	   arrival_id: b,
					   	   date: b.even? ? 3.days.from_now : 3.days.from_now + 50000,
					   	   name: "TK#{list.sample}#{list.sample}#{list.sample}#{list.sample}",
						   duration: (100..200).to_a.sample)
		end
	end
end

airports.reverse.each do |a|
	airports.reverse.each do |b|
		if a == b
			next
		else
			Flight.create!(departure_id: a,
					   	   arrival_id: b,
					   	   date: b.even? ? 2.days.from_now : 2.days.from_now + 50000,
					   	   name: "TK#{list.sample}#{list.sample}#{list.sample}#{list.sample}",
						   duration: (100..200).to_a.sample)
		end
	end
end

airports.each do |a|
	airports.each do |b|
		if a == b
			next
		else
			Flight.create!(departure_id: a,
					   	   arrival_id: b,
					   	   date: b.even? ? 4.days.from_now : 4.days.from_now + 50000,
					   	   name: "TK#{list.sample}#{list.sample}#{list.sample}#{list.sample}",
						   duration: (100..200).to_a.sample)
		end
	end
end

airports.reverse.each do |a|
	airports.reverse.each do |b|
		if a == b
			next
		else
			Flight.create!(departure_id: a,
					   	   arrival_id: b,
					   	   date: b.even? ? 5.days.from_now : 5.days.from_now + 50000,
					   	   name: "TK#{list.sample}#{list.sample}#{list.sample}#{list.sample}",
						   duration: (100..200).to_a.sample)
		end
	end
end

airports.each do |a|
	airports.each do |b|
		if a == b
			next
		else
			Flight.create!(departure_id: a,
					   	   arrival_id: b,
					   	   date: b.even? ? 5.days.from_now : 5.days.from_now + 50000,
					   	   name: "TK#{list.sample}#{list.sample}#{list.sample}#{list.sample}",
						   duration: (100..200).to_a.sample)
		end
	end
end

airports.reverse.each do |a|
	airports.reverse.each do |b|
		if a == b
			next
		else
			Flight.create!(departure_id: a,
					   	   arrival_id: b,
					   	   date: b.even? ? 4.days.from_now : 4.days.from_now + 50000,
					   	   name: "TK#{list.sample}#{list.sample}#{list.sample}#{list.sample}",
						   duration: (100..200).to_a.sample)
		end
	end
end