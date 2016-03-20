def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |label, info|
    info.each do |details, names|
      names.each do |name|
        new_hash[name] ||= {}
        new_hash[name][label] ||= []
        new_hash[name][label] << details.to_s
      end
    end
  end
  new_hash
end

