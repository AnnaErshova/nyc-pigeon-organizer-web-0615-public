

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


def nyc_pigeon_organizer(pigeon_data)
name_array = []
unique_array = []
new_hash = {}

pigeon_data.each do |key, value|
    value.each do |key, name|
        name_array << name
    end
end

unique_array = name_array.flatten.uniq # now we have unique names
# ['Theo', 'Peter Jr.']
unique_array.each do |pigeon_name|
    new_hash[pigeon_name] = {color: [], gender: [], lives: []} # creates hash with appropriate keys, but not values
end

#new_hash = {'Theo' => {}, 'Peter Jr.' => {}}

pigeon_data[:color].each do |color, names|
  names.each do |name|
    empty_hash = new_hash[name]
    # empty_hash[:color] ||= []  #=>  {} # => {color: 'color_name'}
    empty_hash[:color] << color.to_s
  end
end
  
pigeon_data[:gender].each do |gender, names|
  names.each do |name|
    empty_hash = new_hash[name]
    # empty_hash[:color] ||= []  #=>  {} # => {color: 'color_name'}
    empty_hash[:gender] << gender.to_s
  end  
end

pigeon_data[:lives].each do |dwelling, names|
  names.each do |name|
    empty_hash = new_hash[name]
    # empty_hash[:color] ||= []  #=>  {} # => {color: 'color_name'}
    empty_hash[:lives] << dwelling.to_s
  end  
end


new_hash
end # ends method

# nyc_pigeon_organizer(pigeon_data)






=begin
Iterate over the hash above, collecting each pigeon by name and insert it
as the key of a new hash where each name holds the attributes for that bird. 
Your output should look something like the hash below:

```ruby
pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway]"
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library]"
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}
=end
