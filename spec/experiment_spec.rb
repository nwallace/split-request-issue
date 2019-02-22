require "spec_helper"
require "split"
require_relative "../experiment"

RSpec.describe "Experiments now require request" do

  it "fails because the split context doesn't have a request" do
    subject = User.new
    expect(subject.experimental_group).to eq("a").or(eq("b"))
  end
end
