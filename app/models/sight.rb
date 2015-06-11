class Sight < ActiveRecord::Base
      mount_uploader :picture, PictureUploader
      has_many :tour_sights
      has_many :tours, :through => :tour_sights
end
