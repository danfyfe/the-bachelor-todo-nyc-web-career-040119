require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |season_value, contestant_array|
    if season == season_value
      contestant_array.each do |contestant_data|
          contestant_data.each do |data_label,data|
            #binding.pry
            if data_label == "status" && data == "Winner"
              contestant_data.each do |data_label,data|
              if data_label == "name"
                return data.split[0]
              end
            end
          end
        end
      end
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season_value, contestant_array|
    contestant_array.each do |contestant_data|
      contestant_data.each do |data_label,data|
        if data_label == "occupation" && data == occupation
          contestant_data.each do |data_label,data|
            if data_label == "name"
              return data
            end
          end
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_value, contestant_array|
    contestant_array.each do |contestant_data|
      contestant_data.each do |data_label,data|
        if data_label == "hometown" && data == hometown
          counter += 1
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  hometown_array = []
  data.each do |season_value, contestant_array|
    contestant_array.each do |contestant_data|
      contestant_data.each do |data_label,data|
        if data_label == "hometown" && data == hometown
          contestant_data.each do |data_label,data|
            if data_label == "occupation"
              return data
            end
          end
        end
      end
    end
  end

end

def get_average_age_for_season(data, season)

  ages = []

  data.each do |season_value, contestant_array|
    if season == season_value
      contestant_array.each do |contestant_data|
          contestant_data.each do |data_label,data|
            if data_label == "age"
              ages << data.to_f
            end
          end
        end
      end
    end


  total_ages = 0
  ages.each do |ages|
    total_ages += ages
  end
#binding.pry
  average_age = total_ages/ages.length
  average_age.round

end
