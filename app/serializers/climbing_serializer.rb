class ClimbingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :summary, :route_location
end
