def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
    data[:color].each do |x,y|
      y.each do |z| 
        if pigeon_list.has_key?(z) == false
          pigeon_list[z] = {:color => [x.to_s],:gender=>[],:lives=>[]}
        else
          pigeon_list[z][:color] << x.to_s
        end
      end
    end
    data[:gender].each do |x,y|
      y.each do |z| 
        pigeon_list[z][:gender] << x.to_s
      end

    end
    data[:lives].each do |x,y|
      y.each do |z| 
        pigeon_list[z][:lives] << x.to_s
      end
    end

    return pigeon_list
end


