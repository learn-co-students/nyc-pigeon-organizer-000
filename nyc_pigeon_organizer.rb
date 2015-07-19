#require 'pry'

def nyc_pigeon_organizer(data)
newHash = Hash.new
  data.each do |initialQuantifier, nextQuantifier|
    nextQuantifier.each do |thing, pigeonArray|
      pigeonArray.each do |pigeon|
        if newHash.has_key?(pigeon) == true
          if newHash[pigeon].has_key?(initialQuantifier) == true
            newHash[pigeon][initialQuantifier].push(thing.to_s)
          else
            newHash[pigeon][initialQuantifier] = [thing.to_s]
          end
        else
        newHash[pigeon] = {initialQuantifier => [thing.to_s]}
        end
      end
    end
  end
  #binding.pry
  return newHash
end


#HEY!