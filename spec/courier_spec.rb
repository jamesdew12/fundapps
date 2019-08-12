require 'courier'

describe Courier do
  it "adds to total cost correctly" do
    subject.delivery_cost_size(71, 0.4)
    subject.delivery_cost_size(7, 0.4)
    subject.delivery_cost_size(7, 33.45)
    expect(subject.total_cost).to eq 85.9
  end
  it "adds to total cost correctly" do
    subject.delivery_cost_size(71, 0.4)
    subject.delivery_cost_size(7, 0.4)
    subject.delivery_cost_size(7, 33.45)
    subject.speedy_shipping()
    expect(subject.total_cost).to eq 171.8
  end


end
