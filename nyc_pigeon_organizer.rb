require "pry"

def nyc_pigeon_organizer(data)
	answer = Hash.new
	transfer_array = Array.new
    transfer_array<<data[:gender][:male]
    transfer_array<<data[:gender][:female]
    transfer_array.flatten!
    transfer_array.each do |name|
    	answer[name] = {:color => [], :gender => [], :lives => []}
    end
    data[:color].each do |color, names|
    	names.each do |name|
    		answer[name][:color]<<color.to_s
    	end
    end
    data[:gender].each do |gender, names|
    	names.each do |name|
    		answer[name][:gender]<<gender.to_s
    	end
    end
    data[:lives].each do |location, names|
    	names.each do |name|
    		answer[name][:lives]<<location
    	end
    end
    answer
end