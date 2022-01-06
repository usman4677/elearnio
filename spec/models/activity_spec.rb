require 'rails_helper'

RSpec.describe Activity, type: :model do
  it "has none to begin with" do
    expect(Activity.count).to eq 0
  end

  it "has one after adding one" do
    coach = Coach.create(name: Faker::Sports::Football.coach)
    course = Course.create(name: Faker::Educator.course_name, self_assignable: [true, false].sample, coach_id: coach.id)
    Activity.create(name: Faker::Sports::Football.competition, course_id: course.id)
    expect(Activity.count).to eq 1
    expect(Coach.count).to eq 1
    expect(Course.count).to eq 1
  end

  it "has none after one was created in a previous example" do
    expect(Activity.count).to eq 0
  end
end
