class Api::V1::CoachResource < JSONAPI::Resource
  # caching

  attributes :name
  has_one :course

  filter :course
end
