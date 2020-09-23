require 'rails_helper'

describe 'Hiking Facade' do
  it 'can get lat lng' do
    trail_info = HikingFacade.get_trail_info('denver,co')

    expect(trail_info).to be_an(Array)
    expect(trail_info.first.time).to be_an(Integer)
    expect(trail_info.first.time).to_not be(nil)
    expect(trail_info.first.temperature).to be_a(Float)
    expect(trail_info.first.temperature).to_not be(nil)
    expect(trail_info.first.forecast_summary).to be_a(String)
    expect(trail_info.first.forecast_summary).to_not be(nil)
    expect(trail_info.first.name).to be_a(String)
    expect(trail_info.first.name).to_not be(nil)
    expect(trail_info.first.summary).to be_a(String)
    expect(trail_info.first.summary).to_not be(nil)
    expect(trail_info.first.difficulty).to be_a(String)
    expect(trail_info.first.difficulty).to_not be(nil)
    expect(trail_info.first.location).to be_a(String)
    expect(trail_info.first.location).to_not be(nil)
  end
end
