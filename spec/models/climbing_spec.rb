require 'rails_helper'

RSpec.describe Climbing do
  it 'exists' do
    attrs = {
      "routes": [
        {
            "id": 106257778,
            "name": "Dihedral Problem",
            "type": "Boulder",
            "rating": "V2",
            "stars": 4.1,
            "starVotes": 138,
            "pitches": "",
            "location": [
                "Colorado",
                "Morrison/Evergreen/Littleton",
                "Alderfer/Three Sisters Park",
                "The Eggs",
                "Trailside Egg"
            ],
            "url": "https://www.mountainproject.com/route/106257778/dihedral-problem",
            "imgSqSmall": "https://cdn2.apstatic.com/photos/climb/111149033_sqsmall_1494341357.jpg",
            "imgSmall": "https://cdn2.apstatic.com/photos/climb/111149033_small_1494341357.jpg",
            "imgSmallMed": "https://cdn2.apstatic.com/photos/climb/111149033_smallMed_1494341357.jpg",
            "imgMedium": "https://cdn2.apstatic.com/photos/climb/111149033_medium_1494341357.jpg",
            "longitude": -105.3445,
            "latitude": 39.6296
        },
        {
            "id": 111454928,
            "name": "George Wahington HS - west face of the gym",
            "type": "Boulder",
            "rating": "V0",
            "stars": 2,
            "starVotes": 1,
            "pitches": "",
            "location": [
                "Colorado",
                "Downtown Denver"
            ],
            "url": "https://www.mountainproject.com/route/111454928/george-wahington-hs-west-face-of-the-gym",
            "imgSqSmall": "",
            "imgSmall": "",
            "imgSmallMed": "",
            "imgMedium": "",
            "longitude": -104.9991,
            "latitude": 39.7526
        },
    ],
    "success": 1
}

  climbing = Climbing.new(attrs)

  expect(climbing).to be_a Climbing
  end
end
