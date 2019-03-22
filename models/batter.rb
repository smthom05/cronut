class Batter
  attr_reader :id,
              :type

  def initialize(batter_data)
    @id = batter_data["id"]
    @type = batter_data["type"]
  end

end
