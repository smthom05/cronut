require 'json'
require 'pry'
require './models/item'

file = File.read("./data/cronut.json")
data = JSON.parse(file)

items = data["items"]["item"].map do |item_data|
  i = Item.new(item_data)
  i.get_toppings(item_data)
  i.get_batter(item_data)
end
