class Picture < ActiveRecord::Base
  validates :data_url, presence: true
end
