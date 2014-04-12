require 'spec_helper'

describe Point do
  describe '#close_points' do
    let(:my_point) { Point.create!(name: "my point",
                                      latitude: 39.000000,
                                      longitude: -76.000000)}
    let(:far_point) { Point.create!(name: "far",
                                      latitude: 40.000000,
                                      longitude: -77.000000)}
    let(:close_point) { Point.create!(name: "close",
                                      latitude: 39.010000,
                                      longitude: -75.990000)}

    it "finds only the points that are close to it" do
      expect(my_point.close_points).to be close_point
    end
  end
end
