class Tour < ActiveRecord::Base
    mount_uploader :picture, PictureUploader

  belongs_to :user
  has_many :tour_sights
has_many :sights, :through => :tour_sights

end
