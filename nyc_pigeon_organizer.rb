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
  pigeon_list = {}
  data.each do |category, traits|
    traits.each do |trait, bird_array|
      bird_array.each do |bird_name|
        # binding.pry
        if pigeon_list[bird_name] == nil
          pigeon_list[bird_name] ||= {category => [trait.to_s]}
        elsif pigeon_list[bird_name][category] == nil
          pigeon_list[bird_name][category] = [trait.to_s]
        else
          pigeon_list[bird_name][category] << trait.to_s
        end
      end
    end
    # print(pigeon_list["Theo"])
  end
  # binding.pry
  pigeon_list
end

nyc_pigeon_organizer(pigeon_data)