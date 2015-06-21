def nyc_pigeon_organizer(data)
  # write your code here!
  data.each_with_object({}) do |(attr, val_hash), res|
    val_hash.each do |val, names|
	  names.each do |name| 
	    if res.has_key?(name) then
		  if res[name].has_key?(attr) then
		    res[name][attr] << val.to_s
          else
            res[name][attr] = [val.to_s]
          end			
		else  
		  res[name] = { attr => [val.to_s] } 
		end  
	  end
	end
  end
end
