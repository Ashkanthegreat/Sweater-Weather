class HikingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id,
             :start_location,
             :forecast_summary,
             :temperature,
             :name,
             :summary,
             :difficulty,
             :location,
             :time

end
