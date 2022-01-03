require 'faker'

#Creat Coaches
50.times do
  coach = Coach.find_or_create_by(name: Faker::Sports::Football.coach)
  course = Course.find_or_create_by(name: Faker::Educator.course_name, self_assignable: [true, false].sample, coach_id: coach.id)
  rand(1..10).times.each do
    Activity.create(name: Faker::Sports::Football.competition, course_id: course.id)
  end
end

