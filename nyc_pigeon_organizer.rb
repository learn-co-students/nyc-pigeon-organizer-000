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
