data = {
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
  # write your code here!
  new_hash = {}
  data.each do |type, attributes|
    #puts "#{type} - #{attributes}"
    #puts "RESULT: #{result}"
    attributes.each do |value, names|
      #puts "#{value} - #{names}"
      names.each do |name|
        new_hash[name] ||= {}
        new_hash[name][type] ||= []
        new_hash[name][type] << value.to_s
        #puts "#{name}"
          #new_hash[name] << value.to_s
          #puts result

      end
      #puts "value: #{value}, name: #{names}"
    end

  end
new_hash
end


nyc_pigeon_organizer(data)
