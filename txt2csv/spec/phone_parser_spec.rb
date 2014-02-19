require "spec_helper"
require "parse.rb"

#country_code area_code prefix line extension

describe Parse do
  it "should parse ddd-ddd-dddd xddd phone numbers" do   
    return_array = Parse.parse_phone("123-456-7890 x213")
    expect(return_array).to eq(["", "123","456","7890","213"])
  end

  it "should parse (ddd)ddd-dddd xddd phone numbers" do   
    return_array = Parse.parse_phone("(123)456-7890 x213")
    expect(return_array).to eq(["", "123","456","7890","213"])
  end

  it "should parse d-ddd-ddd-dddd xddd phone numbers" do   
    return_array = Parse.parse_phone("3-123-456-7890 x213")
    expect(return_array).to eq(["3", "123","456","7890","213"])
  end

  it "should parse ddd.ddd.dddd xddd phone numbers" do   
    return_array = Parse.parse_phone("123.456.7890 x213")
    expect(return_array).to eq(["", "123","456","7890","213"])
  end

  it "should parse ddd-ddd-dddd phone numbers" do   
    return_array = Parse.parse_phone("123-456-7890")
    expect(return_array).to eq(["", "123","456","7890",""])
  end

  it "should parse (ddd)ddd-dddd phone numbers" do   
    return_array = Parse.parse_phone("(123)456-7890")
    expect(return_array).to eq(["", "123","456","7890",""])
  end

  it "should parse d-ddd-ddd-dddd phone numbers" do   
    return_array = Parse.parse_phone("3-123-456-7890")
    expect(return_array).to eq(["3", "123","456","7890",""])
  end

  it "should parse ddd.ddd.dddd phone numbers" do   
    return_array = Parse.parse_phone("123.456.7890")
    expect(return_array).to eq(["", "123","456","7890",""])
  end
end