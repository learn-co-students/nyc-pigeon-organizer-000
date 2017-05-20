require 'pry'
pigeon_data = {
	:color => {
  		:purple => ["Theo", "Peter Jr.", "Lucky"],
  		:grey => ["Theo", "Peter Jr.", "Ms. K"],
  		:white => ["Queenie", "Andrew", "Ms. K", "Alex"],
  		:brown => ["Queenie", "Alex"]
},
	:gender => {
 		:male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
 		:female => ["Queenie", "Ms. K"]
},
	:lives => {
  		"Subway" => ["Theo", "Queenie"],
  		"Central Park" => ["Alex", "Ms. K", "Lucky"],
  		"Library" => ["Peter Jr."],
  		"City Hall" => ["Andrew"]
	}
}

def nyc_pigeon_organizer(data)
  	hash = {}
  	data.each do |set, step| # set is color gender lives, step is the hashes and keys contained
  		step.each do |subset, list| # subset is the hash, list is the key each of which is an array
  			list.each do |name|	# each name in the array
  				hash[name] ||= {} 
  				hash[name][set] ||= [] 
  				hash[name][set] << subset.to_s
  			end
		end
  	end
  	return hash
end

#nyc_pigeon_organizer(pigeon_data)