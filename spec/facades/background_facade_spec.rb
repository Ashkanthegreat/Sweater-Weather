require 'rails_helper'

RSpec.describe BackgroundFacade do
  it 'can get a image of a location' do
    location = 'denver, co'

    image = BackgroundFacade.image(location)
    expect(image).to be_an_instance_of(Background)
  end
end
