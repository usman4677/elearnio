require 'rails_helper'
require 'faker'

RSpec.describe Coach, type: :model do
  it "has none to begin with" do
    expect(Coach.count).to eq 0
  end

  it "has name required" do
    course = Coach.new
    expect(course.save).to be false
  end

  it "has one after adding one" do
    Coach.create(name: Faker::Sports::Football.coach)
    expect(Coach.count).to eq 1
  end

  it "has none after one was created in a previous example" do
    expect(Coach.count).to eq 0
  end
end
