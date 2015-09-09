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
  # write your code here!
  #new_hash[:name][:data][:array]

=begin
  1. create new hash with 'name' eq to hash
  2. create 'types' key eq to an array
  3. create the types array with detail_data
=end
new_hash = {}

  #get names    #:color   #purple
  data.each do |attributes, data_details|

                          #purple  #names/Array
    data_details.each do |data2, names|

      #go through each name
      names.each do |name|

        #creates name key
        if new_hash[name].nil?
          new_hash[name] = {}
        end

        #creates attribute key
        if new_hash[name][attributes].nil?
          new_hash[name][attributes] = []
        end
          
          #adds data to attribtues
          new_hash[name][attributes] << data2.to_s
      end
    end
  end
new_hash
end

#nyc_pigeon_organizer(pigeon_data)