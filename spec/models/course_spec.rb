require 'rails_helper'

RSpec.describe Course, type: :model do
    it "has none to begin with" do
      expect(Course.count).to eq 0
    end

    it "has name required" do
      course = Course.new
      expect(course.save).to be false
    end

    it "has one after adding one" do
      coach = Coach.create(name: Faker::Sports::Football.coach)
      Course.create(name: Faker::Educator.course_name, self_assignable: [true, false].sample, coach_id: coach.id)
      expect(Coach.count).to eq 1
      expect(Course.count).to eq 1
    end

    it "has none after one was created in a previous example" do
      expect(Course.count).to eq 0
    end
end
