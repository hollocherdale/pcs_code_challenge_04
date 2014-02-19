require "spec_helper"
require "parse.rb"

describe Parse do
  it "should parse email addresses without a name" do   
    return_array = Parse.parse_email("@more.com")
    expect(return_array).to eq(["Not Found"])
  end

  it "should parse email addresses without @" do   
    return_array = Parse.parse_email("gooblygook")
    expect(return_array).to eq(["Not Found"])
  end

  it "should parse correct email addresses" do   
    return_array = Parse.parse_email("gooblygook@more.com")
    expect(return_array).to eq(["gooblygook@more.com"])
  end
end