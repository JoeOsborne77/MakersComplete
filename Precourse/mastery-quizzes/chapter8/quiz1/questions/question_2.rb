puts "Please input a category, sport or fruit"
gets.chomp 
puts "Please enter category value"
cat_value = gets.chomp 

people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

sort_by_sport = {}

people.each do |ppl|
  sport = ppl["sport"]  
  if sort_by_sport[sport] == nil
    sort_by_sport[sport] = []
  end
  
  sort_by_sport[sport].push(ppl["name"])
end

puts sort_by_sport[cat_value]

sort_by_fruit = {}

people.each do |ppll|
  fruit = ppll["fruit"]  
  if sort_by_fruit[fruit] == nil
    sort_by_fruit[fruit] = []
  end
  
  sort_by_fruit[fruit].push(ppll["name"])
end

puts sort_by_fruit[cat_value]