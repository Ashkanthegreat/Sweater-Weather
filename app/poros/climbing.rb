class Climbing
  attr_reader :id,
              :routes


  def initialize(data)
    @routes = data[:routes]
  end
end
