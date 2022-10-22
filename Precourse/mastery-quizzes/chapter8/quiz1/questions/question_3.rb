people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

puts "Please input a category, sport or fruit, followed by"
cat = gets.chomp 

while cat == "sport" do
  cat_value = gets.chomp 

  sort_by_sport = {}
  people.each do |ppl|
    sport = ppl["sport"]  
   
    if sort_by_sport[sport] == nil
      sort_by_sport[sport] = []
      sort_by_sport[sport].push(ppl["name"])
      puts sort_by_sport[cat_value]
      abort
    end
  end
end

while cat == "fruit" do
  cat_value = gets.chomp  
  
  sort_by_fruit = {}
  people.each do |ppll|
    fruit = ppll["fruit"]  
  
    if sort_by_fruit[fruit] == nil
      sort_by_fruit[fruit] = []
      sort_by_fruit[fruit].push(ppll["name"])
      puts sort_by_fruit[cat_value]
      abort
    end
  end
end