class Item

  def initialize(details)
    @name = details[:name]
    @price = details[:price].to_f
  end
end
