require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array


  def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash.map do |key, value|
      if key == :winter
        value.map do |key, value|
          value.push(supply)
          end
        end
      end
    holiday_hash
  end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.map do |seasons, holiday|
    if seasons == season
      holiday.merge! ({ holiday_name => supply_array })
    end
  end
  holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  a = []
  holiday_hash.each do |key, value|
    if key == :winter
      value.each do |key, value|
        value.each do |item|
          a << item
        end
      end
    end
  end
  a
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, value|
    puts "#{key.capitalize}:"
      value.each do |k, v|
        new_key = k.to_s.gsub("_", " ").split.map(&:capitalize).join(" ")
        puts "  #{new_key} : #{v.join(", ")}"
      end
    end   
end



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
