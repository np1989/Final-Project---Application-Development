class Sight < ActiveRecord::Base
      mount_uploader :picture, PictureUploader
      has_many :toursights
      has_many :tours, :through => :toursights
end
