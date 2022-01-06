class Api::V1::CourseResource < JSONAPI::Resource
  # caching

  attributes :name, :self_assignable, :coach
  belongs_to :coach
  filter :self_assignable
end
