require 'Pry'

def nyc_pigeon_organizer(data)
  bird_hash = {}
  data.each{|variant_cat, variant_type|
    variant_type.each{|variation, birds|
      birds.each{|bird|
        if !bird_hash.include?(bird)
          bird_hash[bird] = {variant_cat => [variation.to_s]}
        elsif !bird_hash[bird].include?(variant_cat)
          bird_hash[bird][variant_cat] = [variation.to_s]
        elsif !bird_hash[bird][variant_cat].include?(variation)
          bird_hash[bird][variant_cat] << variation.to_s
        end
      }
    }
  }
  bird_hash
end