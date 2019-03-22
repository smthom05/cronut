class Toppings
  attr_reader :id,
              :type

  def initialize(topping_data)
    @id = topping_data["id"]
    @type = topping_data["type"]
  end

end
