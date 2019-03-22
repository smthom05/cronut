require './models/batter'
require './models/toppings'

class Item
  attr_reader :id,
              :type,
              :name,
              :ppu,
              :batters,
              :toppings

  def initialize(data)
    @id = data["id"]
    @type = data["type"]
    @name = data["name"]
    @ppu = data["ppu"]
    @batters = []
    @toppings = []
  end

  def get_toppings(item)
    item["topping"].each do |topping|
      t = Toppings.new(topping)
      @toppings << t
    end
  end

  def get_batter(item)
    item["batters"]["batter"].each do |batter|
      b = Batter.new(batter)
      @batters << b
    end
  end
end
