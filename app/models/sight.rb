class Sight < ActiveRecord::Base
      mount_uploader :picture, PictureUploader
      belongs_to :tour
end
