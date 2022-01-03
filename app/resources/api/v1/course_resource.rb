class Api::V1::CourseResource < JSONAPI::Resource
  caching

  attributes :name, :self_assignable
  filter :self_assignable
end
