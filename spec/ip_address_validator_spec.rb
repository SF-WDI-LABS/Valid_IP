require_relative '../ip_address_validator'

describe "validIP?" do
  it "returns true for 4 places" do
    expect(validIP?("0.0.0.0")).to eq(true)
  end
  it "returns false for less than 4 places" do
    expect(validIP?("0.0.0")).to eq(false)
    expect(validIP?("0.0")).to eq(false)
  end
  it "returns false for greater than 4 places" do
    expect(validIP?("0.0.0.0.0.0.0")).to eq(false)
    expect(validIP?("0.0.0.0.0.0")).to eq(false)
  end
  it "contains only numbers between 0 and 255" do
    expect(validIP?("#{rand(0..255)}.#{rand(0..255)}.#{rand(0..255)}.#{rand(0..255)}")).to eq(true)
    expect(validIP?("256.0.0.0")).to eq(false)
    expect(validIP?("1000.1000.1000.1000")).to eq(false)
  end
  it "contains no number less than 0" do
    expect(validIP?("-1.0.0.0")).to eq(false)
    expect(validIP?("-1000.-1000.-1000.-1000")).to eq(false)
  end
  it "contains no characters but digits and ." do
    expect(validIP?("1/2.0.28*4.0")).to eq(false)
  end
  it "requires at least one character between .s" do
    # expect(validIP?("...0")).to eq(false)
    expect(validIP?("...0")).to eq(false)
  end
end
