class FoodieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :end_location, :travel_time, :forecast_summary, :temp, :restaurant, :restaurant_address
end
