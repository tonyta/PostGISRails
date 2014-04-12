require 'spec_helper'

describe Point do
  describe '#close_to' do

    it "finds only the points that are close to it" do
      # my_point = Point.create!(name: "my point",
      #                          latitude: 39.000000,
      #                          longitude: -76.000000)
      far_point = Point.create!(name: "far",
                                latitude: 40.000000,
                                longitude: -77.000000)
      close_point = Point.create!(name: "close",
                                  latitude: 39.010000,
                                  longitude: -75.990000)
      expect(Point.close_to(39.000000, -76.000000)).to eq [close_point]
    end

    it 'works with an instance method too' do
      my_point = Point.create!(name: "my point",
                               latitude: 39.000000,
                               longitude: -76.000000)
      far_point = Point.create!(name: "far",
                                latitude: 40.000000,
                                longitude: -77.000000)
      close_point = Point.create!(name: "close",
                                  latitude: 39.010000,
                                  longitude: -75.990000)
      expect(my_point.close_points).to eq [close_point]
    end
  end
end
