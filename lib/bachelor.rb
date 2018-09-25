def get_first_name_of_season_winner(data, season)
  data[season].each do |person|
    if person["status"].downcase == "winner"
      full_name = person["name"]
      return full_name.split(" ").first
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  total_players = 0
  data[season].each do |person|
    age += (person["age"]).to_i
    total_players += 1
  end
  (age / total_players.to_f).round(0)
end

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |season, person|
    person.each do |them|
      if them["hometown"] == hometown
        i += 1
      end
    end
  end
  i
end

def get_occupation(data, hometown)
  data.each do |season, people|
    people.each do |person|
      if person["hometown"] == hometown
        return person['occupation']
      end
    end
  end
end



def get_contestant_name(data, occupation)
  data.each do |season, person|
    person.each do |x|
      if x["occupation"] == occupation
        return x["name"]
      end
    end
  end
end