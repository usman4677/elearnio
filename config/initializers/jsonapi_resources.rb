JSONAPI.configure do |config|
  config.resource_cache = Rails.cache
  config.default_paginator = :paged
  config.default_page_size = 20
  config.maximum_page_size = 40
end